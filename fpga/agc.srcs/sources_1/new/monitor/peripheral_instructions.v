`timescale 1ns / 1ps
`default_nettype none
`include "monitor_defs.v"

module peripheral_instructions(
    input wire clk,
    input wire rst_n,

    input wire MONWT,
    input wire [12:1] mt,
    input wire [3:1] mst,
    input wire [16:1] mwl,
    input wire MSP,

    output wire inhibit_mstp,
    output reg inhibit_ws,
    output wire rbbk,

    input wire MREQIN,
    input wire MTCSA_,

    input wire load,
    input wire read,
    input wire loadch,
    input wire readch,
    input wire tcsaj,

    input wire [15:1] bb,
    input wire [12:1] s,
    input wire [15:0] data,

    output reg [16:1] read_data,
    output reg read_parity,
    output wire complete,

    output wire MTCSAI,
    output wire MREAD,
    output wire MLOAD,
    output wire MRDCH,
    output wire MLDCH,
    output wire MONWBK,

    output reg [16:1] mdt
);

    localparam IDLE = 0,
               WAIT_MREQ_DONE = 1,
               REQUEST = 2,
               ALLOW_MCT = 3,
               READ = 4,
               LOAD = 5,
               READCH = 6,
               LOADCH = 7,
               TCSAJ = 8,
               COMPLETE = 9;
    
    `define PERIPH_TIMEOUT_COUNT 9375 // Eight MCTs
    `define PERIPH_MAX_T12S 3
    
    reg [3:0] state;
    reg [3:0] next_state;
    
    reg [4:0] request;      // One-hot array indicating the peripheral command
    reg [4:0] request_q;
    
    reg [15:1] req_bb;      // BB loaded by monitor (provided by input wire bb)
    reg [15:1] req_bb_q;
    
    reg [12:1] req_s;       // S loaded by monitor (provided by input wire s)
    reg [12:1] req_s_q;
    
    reg [15:0] req_data;    // Data loaded by monitor (provided by input wire data)
    reg [15:0] req_data_q;
    
    reg [15:0] read_data_q; // Data read from AGC (passed on to output wire read_data)
    reg read_parity_q;      // Parity of data read from AGC (passed on to output wire read_parity)
    
    // Monitor commands to AGC
    assign MTCSAI = request[0];
    assign MRDCH = request[1];
    assign MLDCH = request[2];
    assign MREAD = request[3];
    assign MLOAD = request[4];
    
    // Lift the MSTOP when in a command state, the ALLOW_MCT state or the COMPLETE STATE. Perhaps COMPLETE is not needed? Then add it here
    assign inhibit_mstp = (state != IDLE) && (state != WAIT_MREQ_DONE) && (state != REQUEST);
    
    // Command to AGC
    assign MONWBK = (state == LOAD) & ((req_s == `EB) | (req_s == `FB) | (req_s == `BB));
    
    // Monitor copy of internal AGC signal RBBK 
    assign rbbk = ((state == LOAD) | (state == READ)) & (mst == 3'd1) & mt[10];
    
    // Signals to control_regs that the operation is complete
    assign complete = (state == COMPLETE);
    
    // Timer counting up to 8 MCTs while not in IDLE
    reg [13:0] timer;
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            timer <= 14'b0;
        end else begin
            if (state == IDLE) begin
                timer <= 14'b0;
            end else if (timer < `PERIPH_TIMEOUT_COUNT) begin
                timer <= timer + 1;
            end
        end
    end
    
    // Counter counting upt to 3 starts of T12 while in REQUEST
    reg mt12_q;
    reg [1:0] t12_starts;
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            mt12_q <= 1'b0;
            t12_starts <= 2'b0;
        end else begin
            mt12_q <= mt[12];
            if (state == REQUEST) begin
                if ((t12_starts < `PERIPH_MAX_T12S) & ~mt12_q & mt[12]) begin
                    t12_starts <= t12_starts + 1;
                end
            end else begin
                t12_starts <= 2'b0;
            end
        end
    end
    
    // Make sure ws is inhibited for the monitor copy of S
    always @(*) begin
        inhibit_ws = 1'b0;
        case (state)
            READ, LOAD: begin
                if (mst == 3'd1) begin
                    inhibit_ws = 1;
                end
            end
        
            READCH, LOADCH: begin
                if (mt[8]) begin
                    inhibit_ws = 1;
                end
            end
        endcase
    end
    
    // Control pulses
    always @(*) begin
        mdt = 16'b0;
        read_data_q = read_data;
        read_parity_q = read_parity;
        case (state)
            READ, LOAD: begin
                if (mst == 3'd0) begin
                    if (mt[4]) begin
                        mdt = {req_bb[15], req_bb};
                    end
                    if (mt[8]) begin
                        mdt = {4'b0, req_s};
                    end
                end else begin // So MST = 1
                    if ((state == READ) & mt[7]) begin
                        read_data_q = mwl;
                        read_parity_q = MSP;
                    end
                    if ((state == LOAD) & (mt[4] | mt[9])) begin // Why also MT4?
                        mdt = req_data;
                    end
                end
            end
        
            READCH, LOADCH: begin
                if (mt[1]) begin
                    mdt = {4'b0, req_s};
                end
                if ((state == READCH) & mt[5]) begin // Also for LOADCH?
                    read_data_q = mwl;
                end
                if ((state == LOADCH) & mt[7]) begin
                    mdt = req_data;
                end
            end
        
            TCSAJ: begin
                if (mt[8]) begin
                    mdt = {4'b0, req_s};
                end
            end
        endcase
    end
    
    // State machine part 1
    // Start in IDLE
    // If load, read, loadch, readch or tcsaj command is received:
    // - Save bb, s, and data (loaded by Monitor)
    // - Go to WAIT_MREQ_DONE
    // - Timer starts running (times out after 8 MCTs), to make sure everything completes in reasonable time
    // In WAIT_MREQ_DONE, if MREQIN is not set (why? should never be set so quick I would say):
    // - Set request_q (thus request) to the requested command(s), which asserts the MLOAD/MREAD/MLDCH/MRDCH/MTCSAJ command to the AGC 
    // - Go to REQUEST
    // In REQUEST:
    // - If MREQIN is asserted (so the instruction has started), go to the READ/LOAD/READCH/LOADCH state
    // - If MTCSA is asserted (which is TCSAJ3, so the TCSA instruction has started), go to TCSAJ
    // - Every 3 T12 starts (so after 2 or 3 consecutive peripheral instructions), a normal MCT is allowed by inhibiting MSTOP for one cycle
    // In READ/LOAD/READCH/LOADCH/TCSAJ:
    // - Wait for the moment the instruction is done, then go to COMPLETE
    // In COMPLETE:
    // - Go to IDLE
    
    always @(*) begin
        request_q = 5'b0;
        next_state = state;
        req_bb_q = req_bb;
        req_s_q = req_s;
        req_data_q = req_data;
    
        if (state == IDLE) begin
            if (load | read | loadch | readch | tcsaj) begin
                next_state = WAIT_MREQ_DONE;
                req_bb_q = bb;
                req_s_q = s;
                req_data_q = data;
            end
        end else if (state == COMPLETE) begin
            next_state = IDLE;
        end else if (timer < `PERIPH_TIMEOUT_COUNT) begin
            request_q = request;
            case (state)
                WAIT_MREQ_DONE: begin
                    if (~MREQIN) begin
                        request_q = {load, read, loadch, readch, tcsaj};
                        next_state = REQUEST;
                    end
                end
        
                REQUEST: begin
                    if (t12_starts >= `PERIPH_MAX_T12S) begin
                        next_state = ALLOW_MCT;
                    end else begin
                        if (MREQIN) begin
                            if (MREAD) begin
                                next_state = READ;
                            end else if (MLOAD) begin
                                next_state = LOAD;
                            end else if (MRDCH) begin
                                next_state = READCH;
                            end else begin
                                next_state = LOADCH;
                            end
                        end else if (~MTCSA_ & MONWT & mt[12]) begin
                            next_state = TCSAJ;
                        end
                    end
                end
        
                ALLOW_MCT: begin
                    if (mt[1]) begin
                        next_state = REQUEST;
                    end
                end
        
                READ,LOAD: begin
                    if ((mst == 3'b1) & mt[11]) begin
                        next_state = COMPLETE;
                    end
                end
        
                READCH,LOADCH,TCSAJ: begin
                    if (mt[9]) begin
                        next_state = COMPLETE;
                    end
                end
            endcase
        end else begin
            next_state = COMPLETE;
        end
    end
    
    // State machine part 2
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            state <= IDLE;
            request <= 5'b0;
            req_bb <= 15'b0;
            req_s <= 12'b0;
            read_data <= 16'b0;
            req_data <= 16'b0;
            read_parity <= 1'b0;
        end else begin
            state <= next_state;
            request <= request_q;
            req_bb <= req_bb_q;
            req_s <= req_s_q;
            read_data <= read_data_q;
            read_parity <= read_parity_q;
            req_data <= req_data_q;
        end
    end

endmodule
`default_nettype wire