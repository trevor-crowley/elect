#ifndef _VPG_H_
#define _VPG_H_
	
	#include <hls_video.h>
	#include <hls_math.h>



//	#define HEIGHT 	720
//	#define WIDTH  	1280

	#define HEIGHT 	6
	#define WIDTH  	8
//	#define MAXITER	10

//	#define HEIGHT 	600
//	#define WIDTH  	800
	#define MAXITER	255

	typedef hls::stream<ap_axiu<24,1,1,1> >		AXI_STREAM;

//	typedef float fixed_point;
	typedef ap_fixed<18,3,AP_TRN_ZERO,AP_SAT> fixed_point;

//	typedef float fixed_point_scale;
//	typedef ap_fixed<18,10,AP_TRN_ZERO,AP_SAT> fixed_point_scale;

	void video_mandelbrot_generator(AXI_STREAM&, fixed_point, fixed_point, fixed_point);
	ap_uint<24> set_rgb_8_pixel_value(hls::rgb_8 pixel);

#endif
