webtalk_init -webtalk_dir /home/rzinkstok/fpga_agc/fpga/agc.sim/sim_1/behav/xsim/xsim.dir/fpga_agc_tb_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Sat Apr 18 18:52:07 2020" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2019.1 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2552052" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "293e454c-9467-490e-b519-9934ad32dddc" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "c4c7fba8afec4bc4a1685eea80776fd8" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "333" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 18.04.4 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-6567U CPU @ 3.30GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3310.029 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "2" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "12.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key runall -value "true" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key runall -value "true" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "60 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "2" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "96.93_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "131664_KB" -context "xsim\\usage"
webtalk_transmit -clientid 1893446420 -regid "" -xml /home/rzinkstok/fpga_agc/fpga/agc.sim/sim_1/behav/xsim/xsim.dir/fpga_agc_tb_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/rzinkstok/fpga_agc/fpga/agc.sim/sim_1/behav/xsim/xsim.dir/fpga_agc_tb_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/rzinkstok/fpga_agc/fpga/agc.sim/sim_1/behav/xsim/xsim.dir/fpga_agc_tb_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
