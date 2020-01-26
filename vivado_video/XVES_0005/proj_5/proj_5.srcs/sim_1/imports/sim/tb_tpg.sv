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
// Create Date: 02/19/2018
// Design Name: TPG_Sim_out
// Module Name: tb_tpg
// Project Name: Xilinx Video Beginner Series 5
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

import axi_vip_pkg::*;
import TPG_sim_out_bd_axi_vip_0_0_pkg::*;

module tb_tpg(

    );

//////////////////////////////////////////////////////////////////////////////////
// Test Bench Signals
//////////////////////////////////////////////////////////////////////////////////
// Clock and Reset
bit aclk = 0, aresetn = 0;
// AXI4-Lite signal
xil_axi_resp_t 	resp;
// Signals corresponding to the TPG AXI4-Stream interface
bit tpg_tready = 1, tpg_tuser, tpg_tvalid, tpg_tlast;
bit [23:0] tpg_tdata;
// Test Bench variables
integer counter_width = 0, counter_height = 0;
integer final_width = 0, final_height = 0;
// Output file
integer output_file;
// control for the image writing
integer img_writing = 1, img_start = 0;
//////////////////////////////////////////////////////////////////////////////////
// Register Space (check PG103 p15 for information)
//////////////////////////////////////////////////////////////////////////////////
//
// TPG register base address - Check the Address Editor Tab in the BD
parameter integer tpg_base_address = 12'h000;
//
// Address of some TPG registers - refer to PG103 for info
    //Control
    parameter integer TPG_CONTROL_REG       = tpg_base_address;
    // active_height
    parameter integer TPG_ACTIVE_H_REG      = tpg_base_address + 8'h10;
    // active_width
    parameter integer TPG_ACTIVE_W_REG      = tpg_base_address + 8'h18;
    // background_pattern_id
    parameter integer TPG_BG_PATTERN_ID_REG = tpg_base_address + 8'h20;
//////////////////////////////////////////////////////////////////////////////////
// VIP Configuration
integer height=400, width=640;
//////////////////////////////////////////////////////////////////////////////////
// TPG configuration
// Selected Background pattern
// This Value should be between 0x0 and 0x13
integer pattern_id = 8'h09;
//////////////////////////////////////////////////////////////////////////////////

// Generate the clock : 50 MHz    
always #10ns aclk = ~aclk;

// Instanciation of the Unit Under Test (UUT)
TPG_sim_out_bd_wrapper UUT
(
    .aclk_50MHz    (aclk),
    .aresetn_0      (aresetn),
    .tpg_tdata      (tpg_tdata),
    .tpg_tlast      (tpg_tlast),
    .tpg_tready     (tpg_tready),
    .tpg_tuser      (tpg_tuser),
    .tpg_tvalid     (tpg_tvalid)
);

//////////////////////////////////////////////////////////////////////////////////
// Main Process. Wait to the first frame to be written and stop the simulation
// The simulation succeed if the size of the output frame is the same as configured
// in the TPG
//////////////////////////////////////////////////////////////////////////////////
//
initial begin
    #50ns
    // Release the reset
    aresetn = 1;
    
    // Start of the first frame
    @(posedge tpg_tuser)
    
    // Start of the second frame, stop the simulation
    @(posedge tpg_tuser)
    wait (tpg_tuser == 1'b0);
    #20ns;
    if((final_height == height)&&(final_height == height))
        $display("Configured and output resolution match, test succeeded");
    else
        $display("Configured and output resolution do not match, test failed");
    
    $finish;
    
end
//
//////////////////////////////////////////////////////////////////////////////////
// The following part controls the AXI VIP. 
//It follows the "Usefull Coding Guidelines and Examples" section from PG267
//////////////////////////////////////////////////////////////////////////////////
//
// Declare agent
TPG_sim_out_bd_axi_vip_0_0_mst_t      master_agent;
//
initial begin    

    //Create an agent
    master_agent = new("master vip agent",UUT.TPG_sim_out_bd_i.axi_vip_0.inst.IF);
    
    //Start the agent
    master_agent.start_master();
    
    //Wait for the reset to be released
    wait (aresetn == 1'b1);
    
    #200ns
    //Set TPG output size
    master_agent.AXI4LITE_WRITE_BURST(TPG_ACTIVE_H_REG,0,height,resp);
    master_agent.AXI4LITE_WRITE_BURST(TPG_ACTIVE_W_REG,0,width,resp);
    //Set TPG output background ID
    master_agent.AXI4LITE_WRITE_BURST(TPG_BG_PATTERN_ID_REG,0,pattern_id,resp);
    
    #200ns
    // Start the TPG in free-running mode    
    master_agent.AXI4LITE_WRITE_BURST(TPG_CONTROL_REG,0,8'h81,resp); 
      
end
//
//////////////////////////////////////////////////////////////////////////////////
//This process count the number of pixel per line (width of the image)
//////////////////////////////////////////////////////////////////////////////////
//
always @(posedge aclk)
begin
    if((tpg_tvalid==1)&&(tpg_tready==1)) begin
        if(tpg_tlast==1) begin
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
    if((tpg_tvalid==1)&&(tpg_tready==1)) begin
        if(tpg_tuser==1) begin
            final_height =  counter_height;
            counter_height = 0;       
        end
        else if(tpg_tlast==1)
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
        if ((tpg_tvalid==1)&&(tpg_tready==1)) begin
            if((tpg_tuser == 1)&&(img_start==1))
                img_writing = 0;
            else begin
                if(tpg_tuser == 1)
                    img_start=1;
                
                $fwrite(output_file,"%0d\n%0d\n%0d\n",int'(tpg_tdata[23:16]),int'(tpg_tdata[7:0]),int'(tpg_tdata[15:8]));
            end
         end
    end
    $fclose(output_file);
    $display("Image written");
end
//
//////////////////////////////////////////////////////////////////////////////////

endmodule
