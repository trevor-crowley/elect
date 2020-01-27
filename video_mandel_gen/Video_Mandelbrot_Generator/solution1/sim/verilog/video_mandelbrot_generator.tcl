
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set m_axis_video_group [add_wave_group m_axis_video(axis) -into $coutputgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TDEST -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TID -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TLAST -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TUSER -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TSTRB -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TKEEP -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TREADY -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TVALID -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TDATA -into $m_axis_video_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_start -into $blocksiggroup
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_done -into $blocksiggroup
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_idle -into $blocksiggroup
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_clk -into $clockgroup
save_wave_config video_mandelbrot_generator.wcfg
run all
quit

