# 
# Report generation script generated by Vivado
# 

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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part numato.com:styx:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/rzinkstok/fpga_agc/fpga/agc.cache/wt [current_project]
  set_property parent.project_path /home/rzinkstok/fpga_agc/fpga/agc.xpr [current_project]
  set_property ip_output_repo /home/rzinkstok/fpga_agc/fpga/agc.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/rzinkstok/fpga_agc/fpga/agc.runs/synth_1/toplevel.dcp
  set_msg_config -source 4 -id {BD 41-1661} -limit 0
  set_param project.isImplRun true
  read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_fifo/read_fifo.xci
  add_files /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/bd/styx_ps/styx_ps.bd
  read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/core_memory/core_memory.xci
  read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/prop_clock_divider/prop_clock_divider.xci
  read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/cmd_fifo/cmd_fifo.xci
  read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/read_byte_fifo/read_byte_fifo.xci
  read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/mon_adc/mon_adc.xci
  read_ip -quiet /home/rzinkstok/fpga_agc/fpga/agc.srcs/sources_1/ip/rope_memory/rope_memory.xci
  set_param project.isImplRun false
  read_xdc /home/rzinkstok/fpga_agc/fpga/agc.srcs/constrs_1/new/agc.xdc
  set_param project.isImplRun true
  link_design -top toplevel -part xc7z020clg484-1
  set_param project.isImplRun false
  write_hwdef -force -file toplevel.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force toplevel_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file toplevel_drc_opted.rpt -pb toplevel_drc_opted.pb -rpx toplevel_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design 
  write_checkpoint -force toplevel_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file toplevel_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file toplevel_utilization_placed.rpt -pb toplevel_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file toplevel_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force toplevel_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file toplevel_drc_routed.rpt -pb toplevel_drc_routed.pb -rpx toplevel_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file toplevel_methodology_drc_routed.rpt -pb toplevel_methodology_drc_routed.pb -rpx toplevel_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file toplevel_power_routed.rpt -pb toplevel_power_summary_routed.pb -rpx toplevel_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file toplevel_route_status.rpt -pb toplevel_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file toplevel_timing_summary_routed.rpt -pb toplevel_timing_summary_routed.pb -rpx toplevel_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file toplevel_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file toplevel_clock_utilization_routed.rpt"
  create_report "impl_1_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file toplevel_bus_skew_routed.rpt -pb toplevel_bus_skew_routed.pb -rpx toplevel_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force toplevel_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force toplevel.mmi }
  write_bitstream -force toplevel.bit 
  catch { write_sysdef -hwdef toplevel.hwdef -bitfile toplevel.bit -meminfo toplevel.mmi -file toplevel.sysdef }
  catch {write_debug_probes -quiet -force toplevel}
  catch {file copy -force toplevel.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

