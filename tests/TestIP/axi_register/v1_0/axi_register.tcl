create_design axis_register_prj
target_device GEMINI

configure_ip axi_ram_v1_0 -mod_name axis_register_wrapper -Pdata_width=64 -Paddr_width=8 -Pid_width=8 -Ppip_out=1 -out_file ./axis_register_wrapper.v
ipgenerate
add_design_file ./rapidsilicon/ip/axi_ram/v1_0/axis_register_wrapper/src/axis_register_wrapper.v
add_library_path rapidsilicon/ip/axi_ram/v1_0/axis_register_wrapper/src/
set_top_module axis_register_wrapper
synth delay
