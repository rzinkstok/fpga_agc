webtalk_init -webtalk_dir Z:/fpga_agc/agc.sim/sim_1/behav/xsim/xsim.dir/agc_tb_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Fri Sep  6 08:09:23 2019" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2019.1 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2552052" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "WIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "fc53f7c3-1261-4d2f-93a5-2c14ea609515" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "c4c7fba8afec4bc4a1685eea80776fd8" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "5" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Windows Server 2016 or Windows 10" -context "user_environment"
webtalk_add_data -client project -key os_release -value "major release  (build 9200)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-6567U CPU @ 3.30GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3312 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "2" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "8.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "487682 ns" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "10.95_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "12888_KB" -context "xsim\\usage"
webtalk_transmit -clientid 2601891215 -regid "" -xml Z:/fpga_agc/agc.sim/sim_1/behav/xsim/xsim.dir/agc_tb_behav/webtalk/usage_statistics_ext_xsim.xml -html Z:/fpga_agc/agc.sim/sim_1/behav/xsim/xsim.dir/agc_tb_behav/webtalk/usage_statistics_ext_xsim.html -wdm Z:/fpga_agc/agc.sim/sim_1/behav/xsim/xsim.dir/agc_tb_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
