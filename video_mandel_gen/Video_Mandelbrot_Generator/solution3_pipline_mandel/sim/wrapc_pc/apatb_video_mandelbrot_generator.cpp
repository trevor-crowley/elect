// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    template< int D ,int U ,int TI ,int TD > struct ap_axiu;
    template<> struct ap_axiu<24, 1, 1, 1> {
        ap_uint<24> data;
        ap_uint<3> keep;
        ap_uint<3> strb;
        ap_uint<1> user;
        ap_uint<1> last;
        ap_uint<1> id;
        ap_uint<1> dest;
       } ;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "VIDEO_OUT_V_data_V"
#define AUTOTB_TVOUT_VIDEO_OUT_V_data_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_data_V.dat"
#define AUTOTB_TVIN_VIDEO_OUT_V_data_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_VIDEO_OUT_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V  "../tv/stream_size/stream_size_out_VIDEO_OUT_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_data_V  "../tv/stream_size/stream_egress_status_VIDEO_OUT_V_data_V.dat"
// wrapc file define: "VIDEO_OUT_V_keep_V"
#define AUTOTB_TVOUT_VIDEO_OUT_V_keep_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_keep_V.dat"
#define AUTOTB_TVIN_VIDEO_OUT_V_keep_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_VIDEO_OUT_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_keep_V  "../tv/stream_size/stream_size_out_VIDEO_OUT_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_keep_V  "../tv/stream_size/stream_egress_status_VIDEO_OUT_V_keep_V.dat"
// wrapc file define: "VIDEO_OUT_V_strb_V"
#define AUTOTB_TVOUT_VIDEO_OUT_V_strb_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_strb_V.dat"
#define AUTOTB_TVIN_VIDEO_OUT_V_strb_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_VIDEO_OUT_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_strb_V  "../tv/stream_size/stream_size_out_VIDEO_OUT_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_strb_V  "../tv/stream_size/stream_egress_status_VIDEO_OUT_V_strb_V.dat"
// wrapc file define: "VIDEO_OUT_V_user_V"
#define AUTOTB_TVOUT_VIDEO_OUT_V_user_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_user_V.dat"
#define AUTOTB_TVIN_VIDEO_OUT_V_user_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_VIDEO_OUT_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_user_V  "../tv/stream_size/stream_size_out_VIDEO_OUT_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_user_V  "../tv/stream_size/stream_egress_status_VIDEO_OUT_V_user_V.dat"
// wrapc file define: "VIDEO_OUT_V_last_V"
#define AUTOTB_TVOUT_VIDEO_OUT_V_last_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_last_V.dat"
#define AUTOTB_TVIN_VIDEO_OUT_V_last_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_VIDEO_OUT_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_last_V  "../tv/stream_size/stream_size_out_VIDEO_OUT_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_last_V  "../tv/stream_size/stream_egress_status_VIDEO_OUT_V_last_V.dat"
// wrapc file define: "VIDEO_OUT_V_id_V"
#define AUTOTB_TVOUT_VIDEO_OUT_V_id_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_id_V.dat"
#define AUTOTB_TVIN_VIDEO_OUT_V_id_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_VIDEO_OUT_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_id_V  "../tv/stream_size/stream_size_out_VIDEO_OUT_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_id_V  "../tv/stream_size/stream_egress_status_VIDEO_OUT_V_id_V.dat"
// wrapc file define: "VIDEO_OUT_V_dest_V"
#define AUTOTB_TVOUT_VIDEO_OUT_V_dest_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_dest_V.dat"
#define AUTOTB_TVIN_VIDEO_OUT_V_dest_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_VIDEO_OUT_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_dest_V  "../tv/stream_size/stream_size_out_VIDEO_OUT_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_dest_V  "../tv/stream_size/stream_egress_status_VIDEO_OUT_V_dest_V.dat"
// wrapc file define: "re_V"
#define AUTOTB_TVIN_re_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_re_V.dat"
// wrapc file define: "im_V"
#define AUTOTB_TVIN_im_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_im_V.dat"
// wrapc file define: "zoom_factor_V"
#define AUTOTB_TVIN_zoom_factor_V  "../tv/cdatafile/c.video_mandelbrot_generator.autotvin_zoom_factor_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "VIDEO_OUT_V_data_V"
#define AUTOTB_TVOUT_PC_VIDEO_OUT_V_data_V  "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_data_V.dat"
// tvout file define: "VIDEO_OUT_V_keep_V"
#define AUTOTB_TVOUT_PC_VIDEO_OUT_V_keep_V  "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_keep_V.dat"
// tvout file define: "VIDEO_OUT_V_strb_V"
#define AUTOTB_TVOUT_PC_VIDEO_OUT_V_strb_V  "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_strb_V.dat"
// tvout file define: "VIDEO_OUT_V_user_V"
#define AUTOTB_TVOUT_PC_VIDEO_OUT_V_user_V  "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_user_V.dat"
// tvout file define: "VIDEO_OUT_V_last_V"
#define AUTOTB_TVOUT_PC_VIDEO_OUT_V_last_V  "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_last_V.dat"
// tvout file define: "VIDEO_OUT_V_id_V"
#define AUTOTB_TVOUT_PC_VIDEO_OUT_V_id_V  "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_id_V.dat"
// tvout file define: "VIDEO_OUT_V_dest_V"
#define AUTOTB_TVOUT_PC_VIDEO_OUT_V_dest_V  "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_VIDEO_OUT_V_dest_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			VIDEO_OUT_V_data_V_depth = 0;
			VIDEO_OUT_V_keep_V_depth = 0;
			VIDEO_OUT_V_strb_V_depth = 0;
			VIDEO_OUT_V_user_V_depth = 0;
			VIDEO_OUT_V_last_V_depth = 0;
			VIDEO_OUT_V_id_V_depth = 0;
			VIDEO_OUT_V_dest_V_depth = 0;
			re_V_depth = 0;
			im_V_depth = 0;
			zoom_factor_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{VIDEO_OUT_V_data_V " << VIDEO_OUT_V_data_V_depth << "}\n";
			total_list << "{VIDEO_OUT_V_keep_V " << VIDEO_OUT_V_keep_V_depth << "}\n";
			total_list << "{VIDEO_OUT_V_strb_V " << VIDEO_OUT_V_strb_V_depth << "}\n";
			total_list << "{VIDEO_OUT_V_user_V " << VIDEO_OUT_V_user_V_depth << "}\n";
			total_list << "{VIDEO_OUT_V_last_V " << VIDEO_OUT_V_last_V_depth << "}\n";
			total_list << "{VIDEO_OUT_V_id_V " << VIDEO_OUT_V_id_V_depth << "}\n";
			total_list << "{VIDEO_OUT_V_dest_V " << VIDEO_OUT_V_dest_V_depth << "}\n";
			total_list << "{re_V " << re_V_depth << "}\n";
			total_list << "{im_V " << im_V_depth << "}\n";
			total_list << "{zoom_factor_V " << zoom_factor_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int VIDEO_OUT_V_data_V_depth;
		int VIDEO_OUT_V_keep_V_depth;
		int VIDEO_OUT_V_strb_V_depth;
		int VIDEO_OUT_V_user_V_depth;
		int VIDEO_OUT_V_last_V_depth;
		int VIDEO_OUT_V_id_V_depth;
		int VIDEO_OUT_V_dest_V_depth;
		int re_V_depth;
		int im_V_depth;
		int zoom_factor_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void video_mandelbrot_generator (
hls::stream<ap_axiu<24, 1, 1, 1 > > (&m_axis_video),
ap_fixed<18, 3, (ap_q_mode) 6, (ap_o_mode)0, 0> re,
ap_fixed<18, 3, (ap_q_mode) 6, (ap_o_mode)0, 0> im,
ap_fixed<18, 3, (ap_q_mode) 6, (ap_o_mode)0, 0> zoom_factor);

void AESL_WRAP_video_mandelbrot_generator (
hls::stream<ap_axiu<24, 1, 1, 1 > > (&m_axis_video),
ap_fixed<18, 3, (ap_q_mode) 6, (ap_o_mode)0, 0> re,
ap_fixed<18, 3, (ap_q_mode) 6, (ap_o_mode)0, 0> im,
ap_fixed<18, 3, (ap_q_mode) 6, (ap_o_mode)0, 0> zoom_factor)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// define output stream variables: "m_axis_video"
		std::vector<ap_axiu<24, 1, 1, 1 > > aesl_tmp_0;
		int aesl_tmp_1;
		int aesl_tmp_2 = 0;

		// read output stream size: "m_axis_video"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V, AESL_token); // pop_size
			aesl_tmp_1 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "VIDEO_OUT_V_data_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_data_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_data_V, AESL_token); // data

			std::vector<sc_bv<24> > VIDEO_OUT_V_data_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					VIDEO_OUT_V_data_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_data_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_VIDEO_OUT_V_data_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_axiu<24, 1, 1, 1 > tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: VIDEO_OUT_V_data_V
				{
					// bitslice(23, 0)
					// {
						// celement: m_axis_video.V.data.V(23, 0)
						// {
							sc_lv<24>* m_axis_video_V_data_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<24>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(23, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.data.V(23, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
									{
										m_axis_video_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(23, 0) = sc_bv<24>(VIDEO_OUT_V_data_V_pc_buffer[hls_map_index].range(23, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(23, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.data.V(23, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_0[i_0].data
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_0[0].data
									// output_left_conversion : aesl_tmp_0[i_0].data
									// output_type_conversion : (m_axis_video_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_0[i_0].data = (m_axis_video_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "VIDEO_OUT_V_keep_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_keep_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_keep_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_keep_V, AESL_token); // data

			std::vector<sc_bv<3> > VIDEO_OUT_V_keep_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					VIDEO_OUT_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_keep_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_VIDEO_OUT_V_keep_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_axiu<24, 1, 1, 1 > tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: VIDEO_OUT_V_keep_V
				{
					// bitslice(2, 0)
					// {
						// celement: m_axis_video.V.keep.V(2, 0)
						// {
							sc_lv<3>* m_axis_video_V_keep_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<3>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(2, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.keep.V(2, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_0[0].keep) != NULL) // check the null address if the c port is array or others
									{
										m_axis_video_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(2, 0) = sc_bv<3>(VIDEO_OUT_V_keep_V_pc_buffer[hls_map_index].range(2, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(2, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.keep.V(2, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_0[i_0].keep
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_0[0].keep
									// output_left_conversion : aesl_tmp_0[i_0].keep
									// output_type_conversion : (m_axis_video_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_0[0].keep) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_0[i_0].keep = (m_axis_video_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "VIDEO_OUT_V_strb_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_strb_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_strb_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_strb_V, AESL_token); // data

			std::vector<sc_bv<3> > VIDEO_OUT_V_strb_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					VIDEO_OUT_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_strb_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_VIDEO_OUT_V_strb_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_axiu<24, 1, 1, 1 > tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: VIDEO_OUT_V_strb_V
				{
					// bitslice(2, 0)
					// {
						// celement: m_axis_video.V.strb.V(2, 0)
						// {
							sc_lv<3>* m_axis_video_V_strb_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<3>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(2, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.strb.V(2, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_0[0].strb) != NULL) // check the null address if the c port is array or others
									{
										m_axis_video_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(2, 0) = sc_bv<3>(VIDEO_OUT_V_strb_V_pc_buffer[hls_map_index].range(2, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(2, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.strb.V(2, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_0[i_0].strb
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_0[0].strb
									// output_left_conversion : aesl_tmp_0[i_0].strb
									// output_type_conversion : (m_axis_video_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_0[0].strb) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_0[i_0].strb = (m_axis_video_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "VIDEO_OUT_V_user_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_user_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_user_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_user_V, AESL_token); // data

			std::vector<sc_bv<1> > VIDEO_OUT_V_user_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					VIDEO_OUT_V_user_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_user_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_VIDEO_OUT_V_user_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_axiu<24, 1, 1, 1 > tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: VIDEO_OUT_V_user_V
				{
					// bitslice(0, 0)
					// {
						// celement: m_axis_video.V.user.V(0, 0)
						// {
							sc_lv<1>* m_axis_video_V_user_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.user.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_0[0].user) != NULL) // check the null address if the c port is array or others
									{
										m_axis_video_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(VIDEO_OUT_V_user_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.user.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_0[i_0].user
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_0[0].user
									// output_left_conversion : aesl_tmp_0[i_0].user
									// output_type_conversion : (m_axis_video_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_0[0].user) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_0[i_0].user = (m_axis_video_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "VIDEO_OUT_V_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_last_V, AESL_token); // data

			std::vector<sc_bv<1> > VIDEO_OUT_V_last_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					VIDEO_OUT_V_last_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_VIDEO_OUT_V_last_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_axiu<24, 1, 1, 1 > tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: VIDEO_OUT_V_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: m_axis_video.V.last.V(0, 0)
						// {
							sc_lv<1>* m_axis_video_V_last_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
									{
										m_axis_video_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(VIDEO_OUT_V_last_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_0[i_0].last
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_0[0].last
									// output_left_conversion : aesl_tmp_0[i_0].last
									// output_type_conversion : (m_axis_video_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_0[i_0].last = (m_axis_video_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "VIDEO_OUT_V_id_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_id_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_id_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_id_V, AESL_token); // data

			std::vector<sc_bv<1> > VIDEO_OUT_V_id_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					VIDEO_OUT_V_id_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_id_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_VIDEO_OUT_V_id_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_axiu<24, 1, 1, 1 > tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: VIDEO_OUT_V_id_V
				{
					// bitslice(0, 0)
					// {
						// celement: m_axis_video.V.id.V(0, 0)
						// {
							sc_lv<1>* m_axis_video_V_id_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.id.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_0[0].id) != NULL) // check the null address if the c port is array or others
									{
										m_axis_video_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(VIDEO_OUT_V_id_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.id.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_0[i_0].id
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_0[0].id
									// output_left_conversion : aesl_tmp_0[i_0].id
									// output_type_conversion : (m_axis_video_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_0[0].id) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_0[i_0].id = (m_axis_video_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "VIDEO_OUT_V_dest_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_dest_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_dest_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_dest_V, AESL_token); // data

			std::vector<sc_bv<1> > VIDEO_OUT_V_dest_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'VIDEO_OUT_V_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					VIDEO_OUT_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_VIDEO_OUT_V_dest_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_VIDEO_OUT_V_dest_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_axiu<24, 1, 1, 1 > tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: VIDEO_OUT_V_dest_V
				{
					// bitslice(0, 0)
					// {
						// celement: m_axis_video.V.dest.V(0, 0)
						// {
							sc_lv<1>* m_axis_video_V_dest_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.dest.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_0[0].dest) != NULL) // check the null address if the c port is array or others
									{
										m_axis_video_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(VIDEO_OUT_V_dest_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: m_axis_video.V.dest.V(0, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_0[i_0].dest
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_0[0].dest
									// output_left_conversion : aesl_tmp_0[i_0].dest
									// output_type_conversion : (m_axis_video_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_0[0].dest) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_0[i_0].dest = (m_axis_video_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "m_axis_video"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			m_axis_video.write(aesl_tmp_0[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "VIDEO_OUT_V_data_V"
		char* tvin_VIDEO_OUT_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_VIDEO_OUT_V_data_V);
		char* tvout_VIDEO_OUT_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_VIDEO_OUT_V_data_V);
		char* wrapc_stream_size_out_VIDEO_OUT_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V);
		char* wrapc_stream_egress_status_VIDEO_OUT_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_data_V);

		// "VIDEO_OUT_V_keep_V"
		char* tvin_VIDEO_OUT_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_VIDEO_OUT_V_keep_V);
		char* tvout_VIDEO_OUT_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_VIDEO_OUT_V_keep_V);
		char* wrapc_stream_size_out_VIDEO_OUT_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_keep_V);
		char* wrapc_stream_egress_status_VIDEO_OUT_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_keep_V);

		// "VIDEO_OUT_V_strb_V"
		char* tvin_VIDEO_OUT_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_VIDEO_OUT_V_strb_V);
		char* tvout_VIDEO_OUT_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_VIDEO_OUT_V_strb_V);
		char* wrapc_stream_size_out_VIDEO_OUT_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_strb_V);
		char* wrapc_stream_egress_status_VIDEO_OUT_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_strb_V);

		// "VIDEO_OUT_V_user_V"
		char* tvin_VIDEO_OUT_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_VIDEO_OUT_V_user_V);
		char* tvout_VIDEO_OUT_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_VIDEO_OUT_V_user_V);
		char* wrapc_stream_size_out_VIDEO_OUT_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_user_V);
		char* wrapc_stream_egress_status_VIDEO_OUT_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_user_V);

		// "VIDEO_OUT_V_last_V"
		char* tvin_VIDEO_OUT_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_VIDEO_OUT_V_last_V);
		char* tvout_VIDEO_OUT_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_VIDEO_OUT_V_last_V);
		char* wrapc_stream_size_out_VIDEO_OUT_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_last_V);
		char* wrapc_stream_egress_status_VIDEO_OUT_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_last_V);

		// "VIDEO_OUT_V_id_V"
		char* tvin_VIDEO_OUT_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_VIDEO_OUT_V_id_V);
		char* tvout_VIDEO_OUT_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_VIDEO_OUT_V_id_V);
		char* wrapc_stream_size_out_VIDEO_OUT_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_id_V);
		char* wrapc_stream_egress_status_VIDEO_OUT_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_id_V);

		// "VIDEO_OUT_V_dest_V"
		char* tvin_VIDEO_OUT_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_VIDEO_OUT_V_dest_V);
		char* tvout_VIDEO_OUT_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_VIDEO_OUT_V_dest_V);
		char* wrapc_stream_size_out_VIDEO_OUT_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_dest_V);
		char* wrapc_stream_egress_status_VIDEO_OUT_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_VIDEO_OUT_V_dest_V);

		// "re_V"
		char* tvin_re_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_re_V);

		// "im_V"
		char* tvin_im_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_im_V);

		// "zoom_factor_V"
		char* tvin_zoom_factor_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_zoom_factor_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "m_axis_video"
		std::vector<ap_axiu<24, 1, 1, 1 > > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!m_axis_video.empty())
		{
			aesl_tmp_0.push_back(m_axis_video.read());
			aesl_tmp_1++;
		}

		// [[transaction]]
		sprintf(tvin_re_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_re_V, tvin_re_V);

		sc_bv<18> re_V_tvin_wrapc_buffer;

		// RTL Name: re_V
		{
			// bitslice(17, 0)
			{
				// celement: re.V(17, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : re
						// sub_1st_elem          : 
						// ori_name_1st_elem     : re
						// regulate_c_name       : re_V
						// input_type_conversion : (re).range().to_string(SC_BIN).c_str()
						if (&(re) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<18> re_V_tmp_mem;
							re_V_tmp_mem = (re).range().to_string(SC_BIN).c_str();
							re_V_tvin_wrapc_buffer.range(17, 0) = re_V_tmp_mem.range(17, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_re_V, "%s\n", (re_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_re_V, tvin_re_V);
		}

		tcl_file.set_num(1, &tcl_file.re_V_depth);
		sprintf(tvin_re_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_re_V, tvin_re_V);

		// [[transaction]]
		sprintf(tvin_im_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_im_V, tvin_im_V);

		sc_bv<18> im_V_tvin_wrapc_buffer;

		// RTL Name: im_V
		{
			// bitslice(17, 0)
			{
				// celement: im.V(17, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : im
						// sub_1st_elem          : 
						// ori_name_1st_elem     : im
						// regulate_c_name       : im_V
						// input_type_conversion : (im).range().to_string(SC_BIN).c_str()
						if (&(im) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<18> im_V_tmp_mem;
							im_V_tmp_mem = (im).range().to_string(SC_BIN).c_str();
							im_V_tvin_wrapc_buffer.range(17, 0) = im_V_tmp_mem.range(17, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_im_V, "%s\n", (im_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_im_V, tvin_im_V);
		}

		tcl_file.set_num(1, &tcl_file.im_V_depth);
		sprintf(tvin_im_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_im_V, tvin_im_V);

		// [[transaction]]
		sprintf(tvin_zoom_factor_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_zoom_factor_V, tvin_zoom_factor_V);

		sc_bv<18> zoom_factor_V_tvin_wrapc_buffer;

		// RTL Name: zoom_factor_V
		{
			// bitslice(17, 0)
			{
				// celement: zoom_factor.V(17, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : zoom_factor
						// sub_1st_elem          : 
						// ori_name_1st_elem     : zoom_factor
						// regulate_c_name       : zoom_factor_V
						// input_type_conversion : (zoom_factor).range().to_string(SC_BIN).c_str()
						if (&(zoom_factor) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<18> zoom_factor_V_tmp_mem;
							zoom_factor_V_tmp_mem = (zoom_factor).range().to_string(SC_BIN).c_str();
							zoom_factor_V_tvin_wrapc_buffer.range(17, 0) = zoom_factor_V_tmp_mem.range(17, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_zoom_factor_V, "%s\n", (zoom_factor_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_zoom_factor_V, tvin_zoom_factor_V);
		}

		tcl_file.set_num(1, &tcl_file.zoom_factor_V_depth);
		sprintf(tvin_zoom_factor_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_zoom_factor_V, tvin_zoom_factor_V);

		// push back input stream: "m_axis_video"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			m_axis_video.write(aesl_tmp_0[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		video_mandelbrot_generator(m_axis_video, re, im, zoom_factor);

		CodeState = DUMP_OUTPUTS;
		// pop output stream: "m_axis_video"
		int aesl_tmp_2 = aesl_tmp_1;
		aesl_tmp_1 = 0;
     aesl_tmp_0.clear();
		while (!m_axis_video.empty())
		{
			aesl_tmp_0.push_back(m_axis_video.read());
			aesl_tmp_1++;
		}

		// [[transaction]]
		sprintf(tvout_VIDEO_OUT_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_data_V, tvout_VIDEO_OUT_V_data_V);

		sc_bv<24>* VIDEO_OUT_V_data_V_tvout_wrapc_buffer = new sc_bv<24>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: VIDEO_OUT_V_data_V
		{
			// bitslice(23, 0)
			{
				int hls_map_index = 0;
				// celement: m_axis_video.V.data.V(23, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : m_axis_video_V_data_V
							// input_type_conversion : (aesl_tmp_0[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<24> m_axis_video_V_data_V_tmp_mem;
								m_axis_video_V_data_V_tmp_mem = (aesl_tmp_0[i_0].data).to_string(2).c_str();
								VIDEO_OUT_V_data_V_tvout_wrapc_buffer[hls_map_index].range(23, 0) = m_axis_video_V_data_V_tmp_mem.range(23, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_VIDEO_OUT_V_data_V, "%s\n", (VIDEO_OUT_V_data_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_data_V, tvout_VIDEO_OUT_V_data_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.VIDEO_OUT_V_data_V_depth);
		sprintf(tvout_VIDEO_OUT_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_data_V, tvout_VIDEO_OUT_V_data_V);

		// release memory allocation
		delete [] VIDEO_OUT_V_data_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V, wrapc_stream_size_out_VIDEO_OUT_V_data_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_data_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V, wrapc_stream_size_out_VIDEO_OUT_V_data_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_data_V, wrapc_stream_size_out_VIDEO_OUT_V_data_V);

		// [[transaction]]
		sprintf(tvout_VIDEO_OUT_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_keep_V, tvout_VIDEO_OUT_V_keep_V);

		sc_bv<3>* VIDEO_OUT_V_keep_V_tvout_wrapc_buffer = new sc_bv<3>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: VIDEO_OUT_V_keep_V
		{
			// bitslice(2, 0)
			{
				int hls_map_index = 0;
				// celement: m_axis_video.V.keep.V(2, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].keep
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].keep
							// regulate_c_name       : m_axis_video_V_keep_V
							// input_type_conversion : (aesl_tmp_0[i_0].keep).to_string(2).c_str()
							if (&(aesl_tmp_0[0].keep) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<3> m_axis_video_V_keep_V_tmp_mem;
								m_axis_video_V_keep_V_tmp_mem = (aesl_tmp_0[i_0].keep).to_string(2).c_str();
								VIDEO_OUT_V_keep_V_tvout_wrapc_buffer[hls_map_index].range(2, 0) = m_axis_video_V_keep_V_tmp_mem.range(2, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_VIDEO_OUT_V_keep_V, "%s\n", (VIDEO_OUT_V_keep_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_keep_V, tvout_VIDEO_OUT_V_keep_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.VIDEO_OUT_V_keep_V_depth);
		sprintf(tvout_VIDEO_OUT_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_keep_V, tvout_VIDEO_OUT_V_keep_V);

		// release memory allocation
		delete [] VIDEO_OUT_V_keep_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_keep_V, wrapc_stream_size_out_VIDEO_OUT_V_keep_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_keep_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_keep_V, wrapc_stream_size_out_VIDEO_OUT_V_keep_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_keep_V, wrapc_stream_size_out_VIDEO_OUT_V_keep_V);

		// [[transaction]]
		sprintf(tvout_VIDEO_OUT_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_strb_V, tvout_VIDEO_OUT_V_strb_V);

		sc_bv<3>* VIDEO_OUT_V_strb_V_tvout_wrapc_buffer = new sc_bv<3>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: VIDEO_OUT_V_strb_V
		{
			// bitslice(2, 0)
			{
				int hls_map_index = 0;
				// celement: m_axis_video.V.strb.V(2, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].strb
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].strb
							// regulate_c_name       : m_axis_video_V_strb_V
							// input_type_conversion : (aesl_tmp_0[i_0].strb).to_string(2).c_str()
							if (&(aesl_tmp_0[0].strb) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<3> m_axis_video_V_strb_V_tmp_mem;
								m_axis_video_V_strb_V_tmp_mem = (aesl_tmp_0[i_0].strb).to_string(2).c_str();
								VIDEO_OUT_V_strb_V_tvout_wrapc_buffer[hls_map_index].range(2, 0) = m_axis_video_V_strb_V_tmp_mem.range(2, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_VIDEO_OUT_V_strb_V, "%s\n", (VIDEO_OUT_V_strb_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_strb_V, tvout_VIDEO_OUT_V_strb_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.VIDEO_OUT_V_strb_V_depth);
		sprintf(tvout_VIDEO_OUT_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_strb_V, tvout_VIDEO_OUT_V_strb_V);

		// release memory allocation
		delete [] VIDEO_OUT_V_strb_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_strb_V, wrapc_stream_size_out_VIDEO_OUT_V_strb_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_strb_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_strb_V, wrapc_stream_size_out_VIDEO_OUT_V_strb_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_strb_V, wrapc_stream_size_out_VIDEO_OUT_V_strb_V);

		// [[transaction]]
		sprintf(tvout_VIDEO_OUT_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_user_V, tvout_VIDEO_OUT_V_user_V);

		sc_bv<1>* VIDEO_OUT_V_user_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: VIDEO_OUT_V_user_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: m_axis_video.V.user.V(0, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].user
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].user
							// regulate_c_name       : m_axis_video_V_user_V
							// input_type_conversion : (aesl_tmp_0[i_0].user).to_string(2).c_str()
							if (&(aesl_tmp_0[0].user) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> m_axis_video_V_user_V_tmp_mem;
								m_axis_video_V_user_V_tmp_mem = (aesl_tmp_0[i_0].user).to_string(2).c_str();
								VIDEO_OUT_V_user_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = m_axis_video_V_user_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_VIDEO_OUT_V_user_V, "%s\n", (VIDEO_OUT_V_user_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_user_V, tvout_VIDEO_OUT_V_user_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.VIDEO_OUT_V_user_V_depth);
		sprintf(tvout_VIDEO_OUT_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_user_V, tvout_VIDEO_OUT_V_user_V);

		// release memory allocation
		delete [] VIDEO_OUT_V_user_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_user_V, wrapc_stream_size_out_VIDEO_OUT_V_user_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_user_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_user_V, wrapc_stream_size_out_VIDEO_OUT_V_user_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_user_V, wrapc_stream_size_out_VIDEO_OUT_V_user_V);

		// [[transaction]]
		sprintf(tvout_VIDEO_OUT_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_last_V, tvout_VIDEO_OUT_V_last_V);

		sc_bv<1>* VIDEO_OUT_V_last_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: VIDEO_OUT_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: m_axis_video.V.last.V(0, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].last
							// regulate_c_name       : m_axis_video_V_last_V
							// input_type_conversion : (aesl_tmp_0[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> m_axis_video_V_last_V_tmp_mem;
								m_axis_video_V_last_V_tmp_mem = (aesl_tmp_0[i_0].last).to_string(2).c_str();
								VIDEO_OUT_V_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = m_axis_video_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_VIDEO_OUT_V_last_V, "%s\n", (VIDEO_OUT_V_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_last_V, tvout_VIDEO_OUT_V_last_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.VIDEO_OUT_V_last_V_depth);
		sprintf(tvout_VIDEO_OUT_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_last_V, tvout_VIDEO_OUT_V_last_V);

		// release memory allocation
		delete [] VIDEO_OUT_V_last_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_last_V, wrapc_stream_size_out_VIDEO_OUT_V_last_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_last_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_last_V, wrapc_stream_size_out_VIDEO_OUT_V_last_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_last_V, wrapc_stream_size_out_VIDEO_OUT_V_last_V);

		// [[transaction]]
		sprintf(tvout_VIDEO_OUT_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_id_V, tvout_VIDEO_OUT_V_id_V);

		sc_bv<1>* VIDEO_OUT_V_id_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: VIDEO_OUT_V_id_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: m_axis_video.V.id.V(0, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].id
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].id
							// regulate_c_name       : m_axis_video_V_id_V
							// input_type_conversion : (aesl_tmp_0[i_0].id).to_string(2).c_str()
							if (&(aesl_tmp_0[0].id) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> m_axis_video_V_id_V_tmp_mem;
								m_axis_video_V_id_V_tmp_mem = (aesl_tmp_0[i_0].id).to_string(2).c_str();
								VIDEO_OUT_V_id_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = m_axis_video_V_id_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_VIDEO_OUT_V_id_V, "%s\n", (VIDEO_OUT_V_id_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_id_V, tvout_VIDEO_OUT_V_id_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.VIDEO_OUT_V_id_V_depth);
		sprintf(tvout_VIDEO_OUT_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_id_V, tvout_VIDEO_OUT_V_id_V);

		// release memory allocation
		delete [] VIDEO_OUT_V_id_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_id_V, wrapc_stream_size_out_VIDEO_OUT_V_id_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_id_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_id_V, wrapc_stream_size_out_VIDEO_OUT_V_id_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_id_V, wrapc_stream_size_out_VIDEO_OUT_V_id_V);

		// [[transaction]]
		sprintf(tvout_VIDEO_OUT_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_dest_V, tvout_VIDEO_OUT_V_dest_V);

		sc_bv<1>* VIDEO_OUT_V_dest_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: VIDEO_OUT_V_dest_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: m_axis_video.V.dest.V(0, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].dest
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].dest
							// regulate_c_name       : m_axis_video_V_dest_V
							// input_type_conversion : (aesl_tmp_0[i_0].dest).to_string(2).c_str()
							if (&(aesl_tmp_0[0].dest) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> m_axis_video_V_dest_V_tmp_mem;
								m_axis_video_V_dest_V_tmp_mem = (aesl_tmp_0[i_0].dest).to_string(2).c_str();
								VIDEO_OUT_V_dest_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = m_axis_video_V_dest_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_VIDEO_OUT_V_dest_V, "%s\n", (VIDEO_OUT_V_dest_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_dest_V, tvout_VIDEO_OUT_V_dest_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.VIDEO_OUT_V_dest_V_depth);
		sprintf(tvout_VIDEO_OUT_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_VIDEO_OUT_V_dest_V, tvout_VIDEO_OUT_V_dest_V);

		// release memory allocation
		delete [] VIDEO_OUT_V_dest_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_dest_V, wrapc_stream_size_out_VIDEO_OUT_V_dest_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_dest_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_dest_V, wrapc_stream_size_out_VIDEO_OUT_V_dest_V);
		sprintf(wrapc_stream_size_out_VIDEO_OUT_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_VIDEO_OUT_V_dest_V, wrapc_stream_size_out_VIDEO_OUT_V_dest_V);

		// push back output stream: "m_axis_video"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			m_axis_video.write(aesl_tmp_0[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "VIDEO_OUT_V_data_V"
		delete [] tvout_VIDEO_OUT_V_data_V;
		delete [] tvin_VIDEO_OUT_V_data_V;
		delete [] wrapc_stream_size_out_VIDEO_OUT_V_data_V;
		// release memory allocation: "VIDEO_OUT_V_keep_V"
		delete [] tvout_VIDEO_OUT_V_keep_V;
		delete [] tvin_VIDEO_OUT_V_keep_V;
		delete [] wrapc_stream_size_out_VIDEO_OUT_V_keep_V;
		// release memory allocation: "VIDEO_OUT_V_strb_V"
		delete [] tvout_VIDEO_OUT_V_strb_V;
		delete [] tvin_VIDEO_OUT_V_strb_V;
		delete [] wrapc_stream_size_out_VIDEO_OUT_V_strb_V;
		// release memory allocation: "VIDEO_OUT_V_user_V"
		delete [] tvout_VIDEO_OUT_V_user_V;
		delete [] tvin_VIDEO_OUT_V_user_V;
		delete [] wrapc_stream_size_out_VIDEO_OUT_V_user_V;
		// release memory allocation: "VIDEO_OUT_V_last_V"
		delete [] tvout_VIDEO_OUT_V_last_V;
		delete [] tvin_VIDEO_OUT_V_last_V;
		delete [] wrapc_stream_size_out_VIDEO_OUT_V_last_V;
		// release memory allocation: "VIDEO_OUT_V_id_V"
		delete [] tvout_VIDEO_OUT_V_id_V;
		delete [] tvin_VIDEO_OUT_V_id_V;
		delete [] wrapc_stream_size_out_VIDEO_OUT_V_id_V;
		// release memory allocation: "VIDEO_OUT_V_dest_V"
		delete [] tvout_VIDEO_OUT_V_dest_V;
		delete [] tvin_VIDEO_OUT_V_dest_V;
		delete [] wrapc_stream_size_out_VIDEO_OUT_V_dest_V;
		// release memory allocation: "re_V"
		delete [] tvin_re_V;
		// release memory allocation: "im_V"
		delete [] tvin_im_V;
		// release memory allocation: "zoom_factor_V"
		delete [] tvin_zoom_factor_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

