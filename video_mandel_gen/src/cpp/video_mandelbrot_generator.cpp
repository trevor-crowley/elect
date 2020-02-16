#include "video_mandelbrot_generator.h"


//Top Level Function
void video_mandelbrot_generator(AXI_STREAM& m_axis_video, fixed_point re, fixed_point im, fixed_point zoom_factor)
{
#pragma HLS INTERFACE axis register both port=m_axis_video
#pragma HLS INTERFACE s_axilite port=return bundle=cmd
#pragma HLS INTERFACE s_axilite port=re bundle=cmd
#pragma HLS INTERFACE s_axilite port=im bundle=cmd
#pragma HLS INTERFACE s_axilite port=zoom_factor bundle=cmd

	RGB_IMAGE  img_0(HEIGHT, WIDTH);
	pix op_pix;

	fixed_point real_top, imag_top;
	fixed_point real_btm, imag_btm;
	fixed_point x0, y0, rsquare, isquare, zsquare;
	fixed_point x,y;
	uint16_t row, col, iter;

	//Add code for output video generation here
	out:for(row = 0; row < HEIGHT; row++)
	{
		inner:for(col= 0; col < WIDTH; col++)
		{
			real_top = (fixed_point)col * (const fixed_point)(1.0 / WIDTH) - (fixed_point)0.5;
			real_btm = (fixed_point)3.0 * zoom_factor;
			x0 = (fixed_point)real_top * real_btm + re;

			imag_top = (fixed_point)row * (const fixed_point)(1.0 / HEIGHT) - (fixed_point)0.5;
			imag_btm = (fixed_point)-2.0 * zoom_factor;
			y0 = (fixed_point)(imag_top * imag_btm) + im;

			//	org
			// x0 = +3.0 * (col - WIDTH/2.0) * (zoom_factor * 1/WIDTH)  + re;
			// y0 = -2.0 * (row - HEIGHT/2.0) * (zoom_factor * 1/HEIGHT) + im;

	        rsquare = isquare = zsquare = 0;
		    mandel_calc:for (iter=0; iter < MAXITER && ((rsquare + isquare) <= (fixed_point)4); iter++) {

		    	x = rsquare - isquare + x0;
		        y = zsquare - rsquare - isquare + y0;

		        rsquare = (fixed_point)(x * x);
		        isquare = (fixed_point)(y * y);

		    	zsquare = (fixed_point)((x + y) * (x + y));

		    }

		    // test
		    op_pix.val[0] = col;
		    op_pix.val[1] = 0;
		    op_pix.val[2] = 0;
/*
		    // prod
		    op_pix.val[0] = 255;
		    op_pix.val[1] = iter;
		    op_pix.val[2] = iter;
*/
		    img_0.write(op_pix);

		}

	}
	hls::Mat2AXIvideo(img_0, m_axis_video);

}

