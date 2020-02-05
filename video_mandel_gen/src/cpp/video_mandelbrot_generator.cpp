#include "video_mandelbrot_generator.h"


//Top Level Function
void video_mandelbrot_generator(AXI_STREAM& m_axis_video, fixed_point re, fixed_point im, fixed_point zoom_factor)
{
#pragma HLS INTERFACE s_axilite port=return bundle=cmd
#pragma HLS INTERFACE s_axilite port=re bundle=cmd
#pragma HLS INTERFACE s_axilite port=im bundle=cmd
#pragma HLS INTERFACE s_axilite port=zoom_factor bundle=cmd
#pragma HLS INTERFACE axis port=m_axis_video bundle=VIDEO_OUT


	ap_axiu<24, 1, 1, 1> video;
	hls::rgb_8 pixel;

	fixed_point real_top, imag_top;
	fixed_point real_btm, imag_btm;
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

			// work2
			real_top = col * (const fixed_point)(1.0 / WIDTH) - (fixed_point)0.5;
			real_btm = (fixed_point)3.0 * zoom_factor;
			x0 = (fixed_point)real_top * real_btm + re;

			imag_top = row * (const fixed_point)(1.0 / HEIGHT) - (fixed_point)0.5;
			imag_btm = (fixed_point)-2.0 * zoom_factor;
			y0 = (fixed_point)(imag_top * imag_btm) + im;


			//	org
			// x0 = +3.0 * (col - WIDTH/2.0) * (zoom_factor * 1/WIDTH)  + re;
			// y0 = -2.0 * (row - HEIGHT/2.0) * (zoom_factor * 1/HEIGHT) + im;

			//cartX = +3.0 * (screenX - WIDTH/1.28) .* (zoom_factor * 1/WIDTH)  + cartXoffset;


	        iter =0;
	        rsquare = isquare = zsquare = 0;

		    mandel_calc:while ((rsquare + isquare < (fixed_point)4) && (iter < MAXITER)) {
		        x = rsquare - isquare + x0;
		        y = zsquare - rsquare - isquare + y0;
		        rsquare = (fixed_point)(x * x);
		        isquare = (fixed_point)(y * y);
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
