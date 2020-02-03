#include "video_pattern_generator.h"
#include <hls_opencv.h>

int main (int argc, char** argv) {


	CvSize pattern_size = {WIDTH,HEIGHT};
	IplImage* dst = cvCreateImage(pattern_size, IPL_DEPTH_8U, 3);
	AXI_STREAM dst_axi;

	// Call the function to be synthesized
	video_pattern_generator(dst_axi);

	// Convert the AXI4 Stream data to OpenCV format
	// This function is not following UG934 for AXI4S color mapping
	// Thus on the output image, the blue and green color will be switched
	AXIvideo2IplImage(dst_axi, dst);
	cvSaveImage("out.png", dst);
	cvReleaseImage(&dst);

	return 0;
}
