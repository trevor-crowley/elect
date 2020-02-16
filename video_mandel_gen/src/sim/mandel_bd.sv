`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Florent W.
// 
// Create Date: 07/09/2018
// Design Name: test_VPG
// Module Name: tb_test_VPG
// Project Name: Xilinx Video Beginner Series 15
// Target Devices: N/A (Simulation only)
// Tool Versions: 2018.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_mandel(

    );

//////////////////////////////////////////////////////////////////////////////////
// Test Bench Signals
//////////////////////////////////////////////////////////////////////////////////
// Clock and Reset
bit aclk = 0, aresetn = 0;
// Signals corresponding to the video output
bit vid_out_tuser, vid_out_tlast, vid_out_tvalid, vid_out_tready = 0 ;
bit [23:0] vid_out_tdata;
// Test Bench variables
// Output file
integer output_file;
// control for the image writing
integer img_writing = 1, img_start = 0;
integer counter_width = 0, counter_height = 0;
integer final_width = 0, final_height = 0;
//////////////////////////////////////////////////////////////////////////////////
// Control Pattern Generator
//////////////////////////////////////////////////////////////////////////////////
bit ap_start = 0;
//////////////////////////////////////////////////////////////////////////////////
// Image Configuration
integer height=600, width=800;
//////////////////////////////////////////////////////////////////////////////////


// Generate the clock : 40 MHz    
always #12.5ns aclk = ~aclk;

// Instanciation of the Unit Under Test (UUT)
mandel_bd_wrapper UUT
(
    .aclk_40MHz         (aclk),
    .aresetn_0          (aresetn),
    .ap_start           (ap_start),
    .AXIS_out_tdata     (vid_out_tdata),
    .AXIS_out_tlast     (vid_out_tlast),
    .AXIS_out_tready    (vid_out_tready),
    .AXIS_out_tuser     (vid_out_tuser),
    .AXIS_out_tvalid    (vid_out_tvalid)
);

//////////////////////////////////////////////////////////////////////////////////
// Main Process.
//////////////////////////////////////////////////////////////////////////////////
//
initial begin
    #50ns
    // Release the reset
    aresetn = 1;
    
    #1us
    vid_out_tready = 1;
    
    #200us
    ap_start = 1;
    
end
//
//
//////////////////////////////////////////////////////////////////////////////////
//This process count the number of pixel per line (width of the image)
//////////////////////////////////////////////////////////////////////////////////
//
always @(posedge aclk)
begin
    if((vid_out_tvalid==1)&&(vid_out_tready==1)) begin
        if(vid_out_tlast==1) begin
            final_width = counter_width + 1;
            counter_width = 0;         
        end
        else
            counter_width = counter_width + 1;           
    end
end
//
//////////////////////////////////////////////////////////////////////////////////
// This process count the number of line per frame (height of the image)
//////////////////////////////////////////////////////////////////////////////////
//
always @(posedge aclk)
begin
    if((vid_out_tvalid==1)&&(vid_out_tready==1)) begin
        if(vid_out_tuser==1) begin
            final_height =  counter_height;
            counter_height = 0;       
        end
        else if(vid_out_tlast==1)
            counter_height = counter_height + 1;         
    end
end 
//
//////////////////////////////////////////////////////////////////////////////////
// The following process write the image in an image file
//////////////////////////////////////////////////////////////////////////////////
//
initial begin
    output_file = $fopen("image_out_1.ppm","w");
    $fwrite(output_file,"P3\n");
    $fwrite(output_file,"%0d %0d\n",width, height);
    $fwrite(output_file,"%0d\n",2**8-1);
    
    while(img_writing == 1) begin
        @(posedge aclk)
        #1ns;
        if ((vid_out_tvalid==1)&&(vid_out_tready==1)) begin
            if((vid_out_tuser == 1)&&(img_start==1))
                img_writing = 0;
            else begin
                if(vid_out_tuser == 1)
                    img_start=1;
                
                $fwrite(output_file,"%0d\n%0d\n%0d\n",int'(vid_out_tdata[23:16]),int'(vid_out_tdata[7:0]),int'(vid_out_tdata[15:8]));
            end
         end
    end
    $fclose(output_file);
    $display("Image written");
end
//
//////////////////////////////////////////////////////////////////////////////////
endmodule
