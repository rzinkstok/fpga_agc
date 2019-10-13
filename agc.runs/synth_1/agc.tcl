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
set_property webtalk.parent_dir C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.cache/wt [current_project]
set_property parent.project_path C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part numato.com:styx:part0:1.0 [current_project]
set_property ip_output_repo c:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/components/nor_1.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/components/nor_2.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/components/nor_3.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/components/nor_4.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/agc.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a10_four_bit_3.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a07_service_gates.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a08_four_bit_1.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a05_crosspoint_nqi.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a01_scaler.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a02_timer.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a04_stage_branch.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a06_crosspoint_ii.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a03_sq_register.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a09_four_bit_2.v
  C:/Users/rzine07792/source/rzinkstok/fpga_agc/agc.srcs/sources_1/new/modules/a11_four_bit_4.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top agc -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef agc.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file agc_utilization_synth.rpt -pb agc_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
