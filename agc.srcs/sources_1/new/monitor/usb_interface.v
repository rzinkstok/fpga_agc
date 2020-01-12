`timescale 1ns / 1ps

module usb_interface(
    input wire clk,
    input wire rst_n,
    
    input wire clkout,
    inout wire [7:0] data,
    input wire rxf_n,
    input wire txe_n,
    output wire rd_n,
    output wire wr_n,
    output wire oe_n,
    output wire siwu,
    
    output wire [39:0] cmd,
    output wire cmd_ready,
    input wire cmd_read_en
);


/*******************************************************************************.
* FSM States                                                                    *
'*******************************************************************************/
localparam IDLE  = 0,
           READ1 = 1,
           READ2 = 2,
           WRITE = 3;

reg [1:0] state;
reg [1:0] next_state;

/*******************************************************************************.
* FT2232H Control Signals                                                       *
'*******************************************************************************/
// SIWU is unused, so just hold it high
assign siwu = 1'b1;
assign wr_n = (state != WRITE);
assign oe_n = ~((state == READ1) | (state == READ2));
assign rd_n = (state != READ2);


/*******************************************************************************.
* Command Receiver                                                              *
'*******************************************************************************/
// As long as we are in READ2, new RX data is available from the chip
wire rx_data_ready;
assign rx_data_ready = (state == READ2);

// Upon completion of a valid command, the receiver will assert cmd_valid and
// output the command on cmd_in. This will place the command onto the incoming
// command FIFO.
wire cmd_valid;
wire [39:0] cmd_in;

// Command FIFO state flags 
wire cmd_fifo_full;
wire cmd_fifo_empty;

// Command readiness flag for the user of this interface. This is also
// predicated on the read message FIFO not being full, since accepting
// a command could potentially trigger generation of a new read response
// message before that queue can be emptied.
wire read_fifo_full = 1'b0;
assign cmd_ready = (~cmd_fifo_empty) & (~read_fifo_full);


// Command receiver
cmd_receiver cmd_rx(
    .clk(clkout),
    .rst_n(rst_n),
    .data(data),
    .data_ready(rx_data_ready),
    .cmd_valid(cmd_valid),
    .cmd_msg(cmd_in)
);

// Queue of completed incoming commands
cmd_fifo cmd_queue(
    .rst(~rst_n),
    .wr_clk(clkout),
    .rd_clk(clk),
    .din(cmd_in),
    .wr_en(cmd_valid),
    .rd_en(cmd_read_en),
    .dout(cmd),
    .full(cmd_fifo_full), 
    .empty(cmd_fifo_empty)
);


// Read byte FIFO status flags
wire read_byte_fifo_full;
wire read_byte_fifo_empty;
wire read_byte_fifo_almost_empty;

assign read_byte_fifo_full = 1'b0;
assign read_byte_fifo_empty = 1'b1;
assign read_byte_fifo_almost_empty = 1'b0;
assign read_fifo_full = 1'b0;

/*******************************************************************************.
* USB Interface State Machine                                                   *
'*******************************************************************************/
always @(posedge clkout or negedge rst_n) begin
    if (~rst_n) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

always @(*) begin
    next_state = state;

    case (state)
    IDLE: begin
        if ((~cmd_fifo_full) & (~rxf_n)) begin
            // If we have room for command bytes and there is some available,
            // kick off a read. READ1 will assert OE#, and READ2 will assert
            // RD# and actually clock out the data.
            next_state = READ1;
        end else if ((~read_byte_fifo_empty) & (~txe_n)) begin
            // If we have data to send and the chip has room to accept it,
            // kick off a write
            next_state = WRITE;
        end
    end

    READ1: begin
        if (rxf_n) begin
            // Somehow the data was lost before we had a chance to read it. Go
            // back to IDLE.
            next_state = IDLE;
        end else begin
            next_state = READ2;
        end
    end

    READ2: begin
        if (rxf_n | cmd_fifo_full) begin
            // Continue reading bytes until we've either got it all, or our
            // command FIFO is full
            next_state = IDLE;
        end
    end

    WRITE: begin
        if (txe_n | (~rxf_n) | (read_byte_fifo_almost_empty)) begin
            // Continue writing until 
            next_state = IDLE;
        end
    end
    endcase
end


endmodule
