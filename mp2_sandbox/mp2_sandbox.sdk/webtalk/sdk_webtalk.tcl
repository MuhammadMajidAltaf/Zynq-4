webtalk_init -webtalk_dir C:\\Users\\Kyle\\Documents\\Zynq\\mp2_sandbox\\mp2_sandbox.sdk\\webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Thu Oct 1 20:04:52 2015" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2015.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2015.2" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "7h7q1fq2vutmhpv396jfqc8kcq" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2015.2_4" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "4" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "" -context "user_environment"
webtalk_add_data -client project -key os_release -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1443744168258" -context "sdk\\\\hardware/1443744168258"
webtalk_add_data -client sdk -key isZynq -value "true" -context "sdk\\\\hardware/1443744168258"
webtalk_add_data -client sdk -key Processors -value "2" -context "sdk\\\\hardware/1443744168258"
webtalk_add_data -client sdk -key VivadoVersion -value "2015.2.1" -context "sdk\\\\hardware/1443744168258"
webtalk_add_data -client sdk -key Arch -value "zynq" -context "sdk\\\\hardware/1443744168258"
webtalk_add_data -client sdk -key Device -value "7z010" -context "sdk\\\\hardware/1443744168258"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1443744168258"
webtalk_add_data -client sdk -key uid -value "1443744223919" -context "sdk\\\\bsp/1443744223919"
webtalk_add_data -client sdk -key hwid -value "1443744168258" -context "sdk\\\\bsp/1443744223919"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\bsp/1443744223919"
webtalk_add_data -client sdk -key apptemplate -value "empty_application" -context "sdk\\\\bsp/1443744223919"
webtalk_add_data -client sdk -key uid -value "1443744231351" -context "sdk\\\\application/1443744231351"
webtalk_add_data -client sdk -key hwid -value "1443744168258" -context "sdk\\\\application/1443744231351"
webtalk_add_data -client sdk -key bspid -value "1443744223919" -context "sdk\\\\application/1443744231351"
webtalk_add_data -client sdk -key newbsp -value "true" -context "sdk\\\\application/1443744231351"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\application/1443744231351"
webtalk_add_data -client sdk -key apptemplate -value "empty_application" -context "sdk\\\\application/1443744231351"
webtalk_transmit -clientid 3688278771 -regid "" -xml C:\\Users\\Kyle\\Documents\\Zynq\\mp2_sandbox\\mp2_sandbox.sdk\\webtalk\\usage_statistics_ext_sdk.xml -html C:\\Users\\Kyle\\Documents\\Zynq\\mp2_sandbox\\mp2_sandbox.sdk\\webtalk\\usage_statistics_ext_sdk.html -wdm C:\\Users\\Kyle\\Documents\\Zynq\\mp2_sandbox\\mp2_sandbox.sdk\\webtalk\\sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
