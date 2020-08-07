# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/rzinkstok/fpga_agc/fpga/agc.cache/wt [current_project]
set_property parent.project_path /home/rzinkstok/fpga_agc/fpga/agc.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part numato.com:styx:part0:1.0 [current_project]
set_property ip_output_repo /home/rzinkstok/fpga_agc/fpga/agc.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/rzinkstok/fpga_agc/roms/Aurora12.coe
read_verilog /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/monitor_defs.v
set_property file_type "Verilog Header" [get_files /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/monitor_defs.v]
read_verilog -library xil_defaultlib {
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/components/nor_3.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/fpga_agc.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/agc_clock_divider.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/toplevel.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_b.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a18_inout_iii.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a02_timer.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a01_scaler.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a31_power_supply.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a05_crosspoint_nqi.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a03_sq_register.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a09_four_bit_2.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a21_counter_cell_ii.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a11_four_bit_4.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a10_four_bit_3.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a16_inout_i.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a12_parity_s_register.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a77_restart_monitor.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a22_inout_v.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a06_crosspoint_ii.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a13_alarms.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a24_inout_vii.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a23_inout_vi.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a14_memory_timing_addressing.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a19_inout_iv.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a08_four_bit_1.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a04_stage_branch.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a30_power_supply.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a07_service_gates.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a15_rupt_service.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a17_inout_ii.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_a/a20_counter_cell_i.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_b/b12_erasable_memory.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_b/b08_alarm.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_b/b07_oscillator.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/tray_b/b01_fixed_memory.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/agc_monitor.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/usb_interface.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/control_regs.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/cmd_controller.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/cmd_receiver.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/msg_sender.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/register.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/clear_timer.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/monitor_regs.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/register2.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/edit.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/status_regs.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/bd/styx_ps/hdl/styx_ps_wrapper.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/styx_ps_bootloader.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/start_stop.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/debounce.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/io_circuits.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/channel.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/version.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/monitor_channels.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/monitor_dsky.v
  /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/new/monitor/peripheral_instructions.v
}
read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_fifo/read_fifo.xci
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_fifo/read_fifo.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_fifo/read_fifo_ooc.xdc]

add_files /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/bd/styx_ps/styx_ps.bd
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/bd/styx_ps/ip/styx_ps_processing_system7_0_0/styx_ps_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/bd/styx_ps/styx_ps_ooc.xdc]

read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/core_memory/core_memory.xci
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/core_memory/core_memory_ooc.xdc]

read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/prop_clock_divider/prop_clock_divider.xci
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/prop_clock_divider/prop_clock_divider_board.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/prop_clock_divider/prop_clock_divider.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/prop_clock_divider/prop_clock_divider_ooc.xdc]

read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/cmd_fifo/cmd_fifo.xci
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/cmd_fifo/cmd_fifo.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/cmd_fifo/cmd_fifo_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/cmd_fifo/cmd_fifo_ooc.xdc]

read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_byte_fifo/read_byte_fifo.xci
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_byte_fifo/read_byte_fifo.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_byte_fifo/read_byte_fifo_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_byte_fifo/read_byte_fifo_ooc.xdc]

read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/mon_adc/mon_adc.xci
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/mon_adc/mon_adc_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/mon_adc/mon_adc.xdc]

read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/rope_memory/rope_memory.xci
set_property used_in_implementation false [get_files -all /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/rope_memory/rope_memory_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/rzinkstok/fpga_agc/fpga/agc.srcs/constrs_1/new/agc.xdc
set_property used_in_implementation false [get_files /home/rzinkstok/fpga_agc/fpga/agc.srcs/constrs_1/new/agc.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top toplevel -part xc7z020clg484-1 -flatten_hierarchy none


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef toplevel.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file toplevel_utilization_synth.rpt -pb toplevel_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
