#include "video_mandelbrot_generator.h"


//Top Level Function
void video_mandelbrot_generator(AXI_STREAM& m_axis_video, fixed_point moveX, fixed_point moveY, fixed_point zoom)
{
#pragma HLS INTERFACE s_axilite port=return bundle=cmd
#pragma HLS INTERFACE s_axilite port=moveX bundle=cmd
#pragma HLS INTERFACE s_axilite port=moveY bundle=cmd
#pragma HLS INTERFACE s_axilite port=zoom bundle=cmd
#pragma HLS INTERFACE axis port=m_axis_video bundle=VIDEO_OUT


	ap_axiu<24, 1, 1, 1> video;
	hls::rgb_8 pixel;

	fixed_point_scale real_top, imag_top;
	fixed_point_scale real_btm, imag_btm;  // can be fixed const
	fixed_point x0, y0, rsquare, isquare, zsquare;
	fixed_point x,y;
	unsigned int iter;

	
	//Add code for output video generation here
	outer:for(unsigned int row = 0; row < HEIGHT; row++)
	{
		inner:for(unsigned int col= 0; col < WIDTH; col++)
		{
			// Start of frame, assert tuser
			if((col==0)&&(row==0))
				video.user=1;
			else
				video.user=0;

			//End of line, assert tlast
			if(row==WIDTH-1)
				video.last = 1;
			else
				video.last = 0;

			// TB:  max zoom factor = 0.01
	        real_top = col - (const fixed_point_scale)(WIDTH * (1.0/1.3));
	        real_btm =  (const fixed_point_scale) (2.0/WIDTH);
	        x0 =  (fixed_point) 1.5 * (fixed_point)(real_top * real_btm * zoom) + moveX;

	        imag_top = row - (const fixed_point_scale)(HEIGHT * 0.5);
	        imag_btm = (fixed_point_scale)(2.0/HEIGHT);
	        y0 = (fixed_point)(imag_top * imag_btm * zoom) + moveY;

	        iter =0;
	        rsquare = isquare = zsquare = 0;

		    mandel_calc:while ((rsquare + isquare < (fixed_point)4) && (iter < MAXITER)) {
		        x = rsquare - isquare + x0;
		        y = zsquare - rsquare - isquare + y0;
		        rsquare = (fixed_point)x * x;
		        isquare = (fixed_point)y * y;
		        zsquare = (fixed_point)((x + y) * (x + y));
		        iter = iter + 1;
		    }

			pixel.R = iter;
			pixel.B = iter;
			pixel.G = 255;

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
