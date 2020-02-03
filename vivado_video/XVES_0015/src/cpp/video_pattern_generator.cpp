#include "video_pattern_generator.h"



//Top Level Function
void video_pattern_generator(AXI_STREAM& m_axis_video)
{
#pragma HLS INTERFACE axis register both port=m_axis_video
	ap_axiu<24, 1, 1, 1> video;
	hls::rgb_8 pixel;

	
	//Add code for output video generation here
	outer:for(int i = 0; i < HEIGHT; i++)
	{
		inner:for(int j= 0; j < WIDTH; j++)
		{
#pragma HLS PIPELINE

			// Start of frame, assert tuser
			if((i==0)&&(j==0))
				video.user=1;
			else
				video.user=0;

			//End of line, assert tlast
			if(j==WIDTH-1)
				video.last = 1;
			else
				video.last = 0;

			pixel.R = 255;
			pixel.B = 0;
			pixel.G = 0;

			// Assign the pixel value to the data output
			video.data = set_rgb_8_pixel_value(pixel);

			//Send video to stream
			m_axis_video << video;
		}
	}
}

ap_uint<24> set_rgb_8_pixel_value(hls::rgb_8 pixel)
{
	ap_uint<24> pixel_out;

	pixel_out = (pixel.R << 16) + (pixel.B << 8) + pixel.G;
	return pixel_out;
}
