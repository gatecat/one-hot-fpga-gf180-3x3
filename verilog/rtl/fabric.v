// SPDX-FileCopyrightText: 
// 2022 Nguyen Dao
// 2022 Myrtle Shah
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

	//External IO ports exported directly from the corresponding tiles
module eFPGA (Tile_X0Y1_A_I_top, Tile_X0Y1_A_T_top, Tile_X0Y1_A_O_top, UserCLK, Tile_X0Y1_B_I_top, Tile_X0Y1_B_T_top, Tile_X0Y1_B_O_top, Tile_X0Y1_A_config_C_bit0, Tile_X0Y1_A_config_C_bit1, Tile_X0Y1_A_config_C_bit2, Tile_X0Y1_A_config_C_bit3, Tile_X0Y1_B_config_C_bit0, Tile_X0Y1_B_config_C_bit1, Tile_X0Y1_B_config_C_bit2, Tile_X0Y1_B_config_C_bit3, Tile_X4Y1_A_I_top, Tile_X4Y1_A_T_top, Tile_X4Y1_A_O_top, Tile_X4Y1_B_I_top, Tile_X4Y1_B_T_top, Tile_X4Y1_B_O_top, Tile_X4Y1_A_config_C_bit0, Tile_X4Y1_A_config_C_bit1, Tile_X4Y1_A_config_C_bit2, Tile_X4Y1_A_config_C_bit3, Tile_X4Y1_B_config_C_bit0, Tile_X4Y1_B_config_C_bit1, Tile_X4Y1_B_config_C_bit2, Tile_X4Y1_B_config_C_bit3, Tile_X0Y2_A_I_top, Tile_X0Y2_A_T_top, Tile_X0Y2_A_O_top, Tile_X0Y2_B_I_top, Tile_X0Y2_B_T_top, Tile_X0Y2_B_O_top, Tile_X0Y2_A_config_C_bit0, Tile_X0Y2_A_config_C_bit1, Tile_X0Y2_A_config_C_bit2, Tile_X0Y2_A_config_C_bit3, Tile_X0Y2_B_config_C_bit0, Tile_X0Y2_B_config_C_bit1, Tile_X0Y2_B_config_C_bit2, Tile_X0Y2_B_config_C_bit3, Tile_X4Y2_A_I_top, Tile_X4Y2_A_T_top, Tile_X4Y2_A_O_top, Tile_X4Y2_B_I_top, Tile_X4Y2_B_T_top, Tile_X4Y2_B_O_top, Tile_X4Y2_A_config_C_bit0, Tile_X4Y2_A_config_C_bit1, Tile_X4Y2_A_config_C_bit2, Tile_X4Y2_A_config_C_bit3, Tile_X4Y2_B_config_C_bit0, Tile_X4Y2_B_config_C_bit1, Tile_X4Y2_B_config_C_bit2, Tile_X4Y2_B_config_C_bit3, Tile_X0Y3_A_I_top, Tile_X0Y3_A_T_top, Tile_X0Y3_A_O_top, Tile_X0Y3_B_I_top, Tile_X0Y3_B_T_top, Tile_X0Y3_B_O_top, Tile_X0Y3_A_config_C_bit0, Tile_X0Y3_A_config_C_bit1, Tile_X0Y3_A_config_C_bit2, Tile_X0Y3_A_config_C_bit3, Tile_X0Y3_B_config_C_bit0, Tile_X0Y3_B_config_C_bit1, Tile_X0Y3_B_config_C_bit2, Tile_X0Y3_B_config_C_bit3, Tile_X4Y3_A_I_top, Tile_X4Y3_A_T_top, Tile_X4Y3_A_O_top, Tile_X4Y3_B_I_top, Tile_X4Y3_B_T_top, Tile_X4Y3_B_O_top, Tile_X4Y3_A_config_C_bit0, Tile_X4Y3_A_config_C_bit1, Tile_X4Y3_A_config_C_bit2, Tile_X4Y3_A_config_C_bit3, Tile_X4Y3_B_config_C_bit0, Tile_X4Y3_B_config_C_bit1, Tile_X4Y3_B_config_C_bit2, Tile_X4Y3_B_config_C_bit3, OutputEnable, FrameData, FrameStrobe);
	parameter MaxFramesPerCol = 36;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 0;
	output Tile_X0Y1_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y1_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y1_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input UserCLK;  //EXTERNAL //SHARED_PORT //## the EXTERNAL keyword will send this signal all the way to top and the --SHARED Allows multiple BELs usg the same port (e.g. for exportg a clock to the top)
	output Tile_X0Y1_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y1_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y1_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y1_A_config_C_bit0;  //EXTERNAL
	output Tile_X0Y1_A_config_C_bit1;  //EXTERNAL
	output Tile_X0Y1_A_config_C_bit2;  //EXTERNAL
	output Tile_X0Y1_A_config_C_bit3;  //EXTERNAL
	output Tile_X0Y1_B_config_C_bit0;  //EXTERNAL
	output Tile_X0Y1_B_config_C_bit1;  //EXTERNAL
	output Tile_X0Y1_B_config_C_bit2;  //EXTERNAL
	output Tile_X0Y1_B_config_C_bit3;  //EXTERNAL
	output Tile_X4Y1_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y1_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X4Y1_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y1_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y1_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X4Y1_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y1_A_config_C_bit0;  //EXTERNAL
	output Tile_X4Y1_A_config_C_bit1;  //EXTERNAL
	output Tile_X4Y1_A_config_C_bit2;  //EXTERNAL
	output Tile_X4Y1_A_config_C_bit3;  //EXTERNAL
	output Tile_X4Y1_B_config_C_bit0;  //EXTERNAL
	output Tile_X4Y1_B_config_C_bit1;  //EXTERNAL
	output Tile_X4Y1_B_config_C_bit2;  //EXTERNAL
	output Tile_X4Y1_B_config_C_bit3;  //EXTERNAL
	output Tile_X0Y2_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y2_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y2_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y2_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y2_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y2_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y2_A_config_C_bit0;  //EXTERNAL
	output Tile_X0Y2_A_config_C_bit1;  //EXTERNAL
	output Tile_X0Y2_A_config_C_bit2;  //EXTERNAL
	output Tile_X0Y2_A_config_C_bit3;  //EXTERNAL
	output Tile_X0Y2_B_config_C_bit0;  //EXTERNAL
	output Tile_X0Y2_B_config_C_bit1;  //EXTERNAL
	output Tile_X0Y2_B_config_C_bit2;  //EXTERNAL
	output Tile_X0Y2_B_config_C_bit3;  //EXTERNAL
	output Tile_X4Y2_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y2_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X4Y2_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y2_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y2_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X4Y2_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y2_A_config_C_bit0;  //EXTERNAL
	output Tile_X4Y2_A_config_C_bit1;  //EXTERNAL
	output Tile_X4Y2_A_config_C_bit2;  //EXTERNAL
	output Tile_X4Y2_A_config_C_bit3;  //EXTERNAL
	output Tile_X4Y2_B_config_C_bit0;  //EXTERNAL
	output Tile_X4Y2_B_config_C_bit1;  //EXTERNAL
	output Tile_X4Y2_B_config_C_bit2;  //EXTERNAL
	output Tile_X4Y2_B_config_C_bit3;  //EXTERNAL
	output Tile_X0Y3_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y3_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y3_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y3_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y3_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y3_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y3_A_config_C_bit0;  //EXTERNAL
	output Tile_X0Y3_A_config_C_bit1;  //EXTERNAL
	output Tile_X0Y3_A_config_C_bit2;  //EXTERNAL
	output Tile_X0Y3_A_config_C_bit3;  //EXTERNAL
	output Tile_X0Y3_B_config_C_bit0;  //EXTERNAL
	output Tile_X0Y3_B_config_C_bit1;  //EXTERNAL
	output Tile_X0Y3_B_config_C_bit2;  //EXTERNAL
	output Tile_X0Y3_B_config_C_bit3;  //EXTERNAL
	output Tile_X4Y3_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y3_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X4Y3_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y3_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y3_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X4Y3_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X4Y3_A_config_C_bit0;  //EXTERNAL
	output Tile_X4Y3_A_config_C_bit1;  //EXTERNAL
	output Tile_X4Y3_A_config_C_bit2;  //EXTERNAL
	output Tile_X4Y3_A_config_C_bit3;  //EXTERNAL
	output Tile_X4Y3_B_config_C_bit0;  //EXTERNAL
	output Tile_X4Y3_B_config_C_bit1;  //EXTERNAL
	output Tile_X4Y3_B_config_C_bit2;  //EXTERNAL
	output Tile_X4Y3_B_config_C_bit3;  //EXTERNAL
	input [(FrameBitsPerRow*5)-1:0] FrameData;   // CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	input [(MaxFramesPerCol*5)-1:0] FrameStrobe;   // CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register 
	input OutputEnable;
	//global


//signal declarations
	wire Tile_X0Y0_UserCLKo;
	wire Tile_X0Y0_OutputEnable_O;
	wire Tile_X1Y0_UserCLKo;
	wire Tile_X1Y0_OutputEnable_O;
	wire Tile_X2Y0_UserCLKo;
	wire Tile_X2Y0_OutputEnable_O;
	wire Tile_X3Y0_UserCLKo;
	wire Tile_X3Y0_OutputEnable_O;
	wire Tile_X4Y0_UserCLKo;
	wire Tile_X4Y0_OutputEnable_O;
	wire Tile_X0Y1_UserCLKo;
	wire Tile_X0Y1_OutputEnable_O;
	wire Tile_X1Y1_UserCLKo;
	wire Tile_X1Y1_OutputEnable_O;
	wire Tile_X2Y1_UserCLKo;
	wire Tile_X2Y1_OutputEnable_O;
	wire Tile_X3Y1_UserCLKo;
	wire Tile_X3Y1_OutputEnable_O;
	wire Tile_X4Y1_UserCLKo;
	wire Tile_X4Y1_OutputEnable_O;
	wire Tile_X0Y2_UserCLKo;
	wire Tile_X0Y2_OutputEnable_O;
	wire Tile_X1Y2_UserCLKo;
	wire Tile_X1Y2_OutputEnable_O;
	wire Tile_X2Y2_UserCLKo;
	wire Tile_X2Y2_OutputEnable_O;
	wire Tile_X3Y2_UserCLKo;
	wire Tile_X3Y2_OutputEnable_O;
	wire Tile_X4Y2_UserCLKo;
	wire Tile_X4Y2_OutputEnable_O;
	wire Tile_X0Y3_UserCLKo;
	wire Tile_X0Y3_OutputEnable_O;
	wire Tile_X1Y3_UserCLKo;
	wire Tile_X1Y3_OutputEnable_O;
	wire Tile_X2Y3_UserCLKo;
	wire Tile_X2Y3_OutputEnable_O;
	wire Tile_X3Y3_UserCLKo;
	wire Tile_X3Y3_OutputEnable_O;
	wire Tile_X4Y3_UserCLKo;
	wire Tile_X4Y3_OutputEnable_O;
	wire Tile_X0Y4_UserCLKo;
	wire Tile_X0Y4_OutputEnable_O;
	wire Tile_X1Y4_UserCLKo;
	wire Tile_X1Y4_OutputEnable_O;
	wire Tile_X2Y4_UserCLKo;
	wire Tile_X2Y4_OutputEnable_O;
	wire Tile_X3Y4_UserCLKo;
	wire Tile_X3Y4_OutputEnable_O;
	wire Tile_X4Y4_UserCLKo;
	wire Tile_X4Y4_OutputEnable_O;
//configuration signal declarations

	wire [FrameBitsPerRow-1:0] Tile_Y1_FrameData;
	wire [FrameBitsPerRow-1:0] Tile_Y2_FrameData;
	wire [FrameBitsPerRow-1:0] Tile_Y3_FrameData;
	wire [MaxFramesPerCol-1:0] Tile_X0_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X1_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X2_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X3_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X4_FrameStrobe;
	wire [FrameBitsPerRow-1:0] Tile_X0Y1_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X1Y1_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X2Y1_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X3Y1_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X4Y1_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X0Y2_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X1Y2_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X2Y2_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X3Y2_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X4Y2_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X0Y3_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X1Y3_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X2Y3_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X3Y3_FrameData_O;
	wire [FrameBitsPerRow-1:0] Tile_X4Y3_FrameData_O;
	wire [MaxFramesPerCol-1:0] Tile_X0Y0_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X1Y0_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X2Y0_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X3Y0_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X4Y0_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X0Y1_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X1Y1_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X2Y1_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X3Y1_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X4Y1_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X0Y2_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X1Y2_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X2Y2_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X3Y2_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X4Y2_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X0Y3_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X1Y3_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X2Y3_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X3Y3_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X4Y3_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X0Y4_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X1Y4_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X2Y4_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X3Y4_FrameStrobe_O;
	wire [MaxFramesPerCol-1:0] Tile_X4Y4_FrameStrobe_O;

//tile-to-tile signal declarations

	wire [3:0] Tile_X1Y0_S1BEG;
	wire [7:0] Tile_X1Y0_S2BEG;
	wire [7:0] Tile_X1Y0_S2BEGb;
	wire [15:0] Tile_X1Y0_S4BEG;
	wire [15:0] Tile_X1Y0_SS4BEG;
	wire [3:0] Tile_X2Y0_S1BEG;
	wire [7:0] Tile_X2Y0_S2BEG;
	wire [7:0] Tile_X2Y0_S2BEGb;
	wire [15:0] Tile_X2Y0_S4BEG;
	wire [15:0] Tile_X2Y0_SS4BEG;
	wire [3:0] Tile_X3Y0_S1BEG;
	wire [7:0] Tile_X3Y0_S2BEG;
	wire [7:0] Tile_X3Y0_S2BEGb;
	wire [15:0] Tile_X3Y0_S4BEG;
	wire [15:0] Tile_X3Y0_SS4BEG;
	wire [3:0] Tile_X0Y1_E1BEG;
	wire [7:0] Tile_X0Y1_E2BEG;
	wire [7:0] Tile_X0Y1_E2BEGb;
	wire [15:0] Tile_X0Y1_EE4BEG;
	wire [11:0] Tile_X0Y1_E6BEG;
	wire [3:0] Tile_X1Y1_N1BEG;
	wire [7:0] Tile_X1Y1_N2BEG;
	wire [7:0] Tile_X1Y1_N2BEGb;
	wire [15:0] Tile_X1Y1_N4BEG;
	wire [15:0] Tile_X1Y1_NN4BEG;
	wire [0:0] Tile_X1Y1_Co;
	wire [3:0] Tile_X1Y1_E1BEG;
	wire [7:0] Tile_X1Y1_E2BEG;
	wire [7:0] Tile_X1Y1_E2BEGb;
	wire [15:0] Tile_X1Y1_EE4BEG;
	wire [11:0] Tile_X1Y1_E6BEG;
	wire [3:0] Tile_X1Y1_S1BEG;
	wire [7:0] Tile_X1Y1_S2BEG;
	wire [7:0] Tile_X1Y1_S2BEGb;
	wire [15:0] Tile_X1Y1_S4BEG;
	wire [15:0] Tile_X1Y1_SS4BEG;
	wire [3:0] Tile_X1Y1_W1BEG;
	wire [7:0] Tile_X1Y1_W2BEG;
	wire [7:0] Tile_X1Y1_W2BEGb;
	wire [15:0] Tile_X1Y1_WW4BEG;
	wire [11:0] Tile_X1Y1_W6BEG;
	wire [3:0] Tile_X2Y1_N1BEG;
	wire [7:0] Tile_X2Y1_N2BEG;
	wire [7:0] Tile_X2Y1_N2BEGb;
	wire [15:0] Tile_X2Y1_N4BEG;
	wire [15:0] Tile_X2Y1_NN4BEG;
	wire [0:0] Tile_X2Y1_Co;
	wire [3:0] Tile_X2Y1_E1BEG;
	wire [7:0] Tile_X2Y1_E2BEG;
	wire [7:0] Tile_X2Y1_E2BEGb;
	wire [15:0] Tile_X2Y1_EE4BEG;
	wire [11:0] Tile_X2Y1_E6BEG;
	wire [3:0] Tile_X2Y1_S1BEG;
	wire [7:0] Tile_X2Y1_S2BEG;
	wire [7:0] Tile_X2Y1_S2BEGb;
	wire [15:0] Tile_X2Y1_S4BEG;
	wire [15:0] Tile_X2Y1_SS4BEG;
	wire [3:0] Tile_X2Y1_W1BEG;
	wire [7:0] Tile_X2Y1_W2BEG;
	wire [7:0] Tile_X2Y1_W2BEGb;
	wire [15:0] Tile_X2Y1_WW4BEG;
	wire [11:0] Tile_X2Y1_W6BEG;
	wire [3:0] Tile_X3Y1_N1BEG;
	wire [7:0] Tile_X3Y1_N2BEG;
	wire [7:0] Tile_X3Y1_N2BEGb;
	wire [15:0] Tile_X3Y1_N4BEG;
	wire [15:0] Tile_X3Y1_NN4BEG;
	wire [0:0] Tile_X3Y1_Co;
	wire [3:0] Tile_X3Y1_E1BEG;
	wire [7:0] Tile_X3Y1_E2BEG;
	wire [7:0] Tile_X3Y1_E2BEGb;
	wire [15:0] Tile_X3Y1_EE4BEG;
	wire [11:0] Tile_X3Y1_E6BEG;
	wire [3:0] Tile_X3Y1_S1BEG;
	wire [7:0] Tile_X3Y1_S2BEG;
	wire [7:0] Tile_X3Y1_S2BEGb;
	wire [15:0] Tile_X3Y1_S4BEG;
	wire [15:0] Tile_X3Y1_SS4BEG;
	wire [3:0] Tile_X3Y1_W1BEG;
	wire [7:0] Tile_X3Y1_W2BEG;
	wire [7:0] Tile_X3Y1_W2BEGb;
	wire [15:0] Tile_X3Y1_WW4BEG;
	wire [11:0] Tile_X3Y1_W6BEG;
	wire [3:0] Tile_X4Y1_W1BEG;
	wire [7:0] Tile_X4Y1_W2BEG;
	wire [7:0] Tile_X4Y1_W2BEGb;
	wire [15:0] Tile_X4Y1_WW4BEG;
	wire [11:0] Tile_X4Y1_W6BEG;
	wire [3:0] Tile_X0Y2_E1BEG;
	wire [7:0] Tile_X0Y2_E2BEG;
	wire [7:0] Tile_X0Y2_E2BEGb;
	wire [15:0] Tile_X0Y2_EE4BEG;
	wire [11:0] Tile_X0Y2_E6BEG;
	wire [3:0] Tile_X1Y2_N1BEG;
	wire [7:0] Tile_X1Y2_N2BEG;
	wire [7:0] Tile_X1Y2_N2BEGb;
	wire [15:0] Tile_X1Y2_N4BEG;
	wire [15:0] Tile_X1Y2_NN4BEG;
	wire [0:0] Tile_X1Y2_Co;
	wire [3:0] Tile_X1Y2_E1BEG;
	wire [7:0] Tile_X1Y2_E2BEG;
	wire [7:0] Tile_X1Y2_E2BEGb;
	wire [15:0] Tile_X1Y2_EE4BEG;
	wire [11:0] Tile_X1Y2_E6BEG;
	wire [3:0] Tile_X1Y2_S1BEG;
	wire [7:0] Tile_X1Y2_S2BEG;
	wire [7:0] Tile_X1Y2_S2BEGb;
	wire [15:0] Tile_X1Y2_S4BEG;
	wire [15:0] Tile_X1Y2_SS4BEG;
	wire [3:0] Tile_X1Y2_W1BEG;
	wire [7:0] Tile_X1Y2_W2BEG;
	wire [7:0] Tile_X1Y2_W2BEGb;
	wire [15:0] Tile_X1Y2_WW4BEG;
	wire [11:0] Tile_X1Y2_W6BEG;
	wire [3:0] Tile_X2Y2_N1BEG;
	wire [7:0] Tile_X2Y2_N2BEG;
	wire [7:0] Tile_X2Y2_N2BEGb;
	wire [15:0] Tile_X2Y2_N4BEG;
	wire [15:0] Tile_X2Y2_NN4BEG;
	wire [0:0] Tile_X2Y2_Co;
	wire [3:0] Tile_X2Y2_E1BEG;
	wire [7:0] Tile_X2Y2_E2BEG;
	wire [7:0] Tile_X2Y2_E2BEGb;
	wire [15:0] Tile_X2Y2_EE4BEG;
	wire [11:0] Tile_X2Y2_E6BEG;
	wire [3:0] Tile_X2Y2_S1BEG;
	wire [7:0] Tile_X2Y2_S2BEG;
	wire [7:0] Tile_X2Y2_S2BEGb;
	wire [15:0] Tile_X2Y2_S4BEG;
	wire [15:0] Tile_X2Y2_SS4BEG;
	wire [3:0] Tile_X2Y2_W1BEG;
	wire [7:0] Tile_X2Y2_W2BEG;
	wire [7:0] Tile_X2Y2_W2BEGb;
	wire [15:0] Tile_X2Y2_WW4BEG;
	wire [11:0] Tile_X2Y2_W6BEG;
	wire [3:0] Tile_X3Y2_N1BEG;
	wire [7:0] Tile_X3Y2_N2BEG;
	wire [7:0] Tile_X3Y2_N2BEGb;
	wire [15:0] Tile_X3Y2_N4BEG;
	wire [15:0] Tile_X3Y2_NN4BEG;
	wire [0:0] Tile_X3Y2_Co;
	wire [3:0] Tile_X3Y2_E1BEG;
	wire [7:0] Tile_X3Y2_E2BEG;
	wire [7:0] Tile_X3Y2_E2BEGb;
	wire [15:0] Tile_X3Y2_EE4BEG;
	wire [11:0] Tile_X3Y2_E6BEG;
	wire [3:0] Tile_X3Y2_S1BEG;
	wire [7:0] Tile_X3Y2_S2BEG;
	wire [7:0] Tile_X3Y2_S2BEGb;
	wire [15:0] Tile_X3Y2_S4BEG;
	wire [15:0] Tile_X3Y2_SS4BEG;
	wire [3:0] Tile_X3Y2_W1BEG;
	wire [7:0] Tile_X3Y2_W2BEG;
	wire [7:0] Tile_X3Y2_W2BEGb;
	wire [15:0] Tile_X3Y2_WW4BEG;
	wire [11:0] Tile_X3Y2_W6BEG;
	wire [3:0] Tile_X4Y2_W1BEG;
	wire [7:0] Tile_X4Y2_W2BEG;
	wire [7:0] Tile_X4Y2_W2BEGb;
	wire [15:0] Tile_X4Y2_WW4BEG;
	wire [11:0] Tile_X4Y2_W6BEG;
	wire [3:0] Tile_X0Y3_E1BEG;
	wire [7:0] Tile_X0Y3_E2BEG;
	wire [7:0] Tile_X0Y3_E2BEGb;
	wire [15:0] Tile_X0Y3_EE4BEG;
	wire [11:0] Tile_X0Y3_E6BEG;
	wire [3:0] Tile_X1Y3_N1BEG;
	wire [7:0] Tile_X1Y3_N2BEG;
	wire [7:0] Tile_X1Y3_N2BEGb;
	wire [15:0] Tile_X1Y3_N4BEG;
	wire [15:0] Tile_X1Y3_NN4BEG;
	wire [0:0] Tile_X1Y3_Co;
	wire [3:0] Tile_X1Y3_E1BEG;
	wire [7:0] Tile_X1Y3_E2BEG;
	wire [7:0] Tile_X1Y3_E2BEGb;
	wire [15:0] Tile_X1Y3_EE4BEG;
	wire [11:0] Tile_X1Y3_E6BEG;
	wire [3:0] Tile_X1Y3_S1BEG;
	wire [7:0] Tile_X1Y3_S2BEG;
	wire [7:0] Tile_X1Y3_S2BEGb;
	wire [15:0] Tile_X1Y3_S4BEG;
	wire [15:0] Tile_X1Y3_SS4BEG;
	wire [3:0] Tile_X1Y3_W1BEG;
	wire [7:0] Tile_X1Y3_W2BEG;
	wire [7:0] Tile_X1Y3_W2BEGb;
	wire [15:0] Tile_X1Y3_WW4BEG;
	wire [11:0] Tile_X1Y3_W6BEG;
	wire [3:0] Tile_X2Y3_N1BEG;
	wire [7:0] Tile_X2Y3_N2BEG;
	wire [7:0] Tile_X2Y3_N2BEGb;
	wire [15:0] Tile_X2Y3_N4BEG;
	wire [15:0] Tile_X2Y3_NN4BEG;
	wire [0:0] Tile_X2Y3_Co;
	wire [3:0] Tile_X2Y3_E1BEG;
	wire [7:0] Tile_X2Y3_E2BEG;
	wire [7:0] Tile_X2Y3_E2BEGb;
	wire [15:0] Tile_X2Y3_EE4BEG;
	wire [11:0] Tile_X2Y3_E6BEG;
	wire [3:0] Tile_X2Y3_S1BEG;
	wire [7:0] Tile_X2Y3_S2BEG;
	wire [7:0] Tile_X2Y3_S2BEGb;
	wire [15:0] Tile_X2Y3_S4BEG;
	wire [15:0] Tile_X2Y3_SS4BEG;
	wire [3:0] Tile_X2Y3_W1BEG;
	wire [7:0] Tile_X2Y3_W2BEG;
	wire [7:0] Tile_X2Y3_W2BEGb;
	wire [15:0] Tile_X2Y3_WW4BEG;
	wire [11:0] Tile_X2Y3_W6BEG;
	wire [3:0] Tile_X3Y3_N1BEG;
	wire [7:0] Tile_X3Y3_N2BEG;
	wire [7:0] Tile_X3Y3_N2BEGb;
	wire [15:0] Tile_X3Y3_N4BEG;
	wire [15:0] Tile_X3Y3_NN4BEG;
	wire [0:0] Tile_X3Y3_Co;
	wire [3:0] Tile_X3Y3_E1BEG;
	wire [7:0] Tile_X3Y3_E2BEG;
	wire [7:0] Tile_X3Y3_E2BEGb;
	wire [15:0] Tile_X3Y3_EE4BEG;
	wire [11:0] Tile_X3Y3_E6BEG;
	wire [3:0] Tile_X3Y3_S1BEG;
	wire [7:0] Tile_X3Y3_S2BEG;
	wire [7:0] Tile_X3Y3_S2BEGb;
	wire [15:0] Tile_X3Y3_S4BEG;
	wire [15:0] Tile_X3Y3_SS4BEG;
	wire [3:0] Tile_X3Y3_W1BEG;
	wire [7:0] Tile_X3Y3_W2BEG;
	wire [7:0] Tile_X3Y3_W2BEGb;
	wire [15:0] Tile_X3Y3_WW4BEG;
	wire [11:0] Tile_X3Y3_W6BEG;
	wire [3:0] Tile_X4Y3_W1BEG;
	wire [7:0] Tile_X4Y3_W2BEG;
	wire [7:0] Tile_X4Y3_W2BEGb;
	wire [15:0] Tile_X4Y3_WW4BEG;
	wire [11:0] Tile_X4Y3_W6BEG;
	wire [3:0] Tile_X1Y4_N1BEG;
	wire [7:0] Tile_X1Y4_N2BEG;
	wire [7:0] Tile_X1Y4_N2BEGb;
	wire [15:0] Tile_X1Y4_N4BEG;
	wire [15:0] Tile_X1Y4_NN4BEG;
	wire [0:0] Tile_X1Y4_Co;
	wire [3:0] Tile_X2Y4_N1BEG;
	wire [7:0] Tile_X2Y4_N2BEG;
	wire [7:0] Tile_X2Y4_N2BEGb;
	wire [15:0] Tile_X2Y4_N4BEG;
	wire [15:0] Tile_X2Y4_NN4BEG;
	wire [0:0] Tile_X2Y4_Co;
	wire [3:0] Tile_X3Y4_N1BEG;
	wire [7:0] Tile_X3Y4_N2BEG;
	wire [7:0] Tile_X3Y4_N2BEGb;
	wire [15:0] Tile_X3Y4_N4BEG;
	wire [15:0] Tile_X3Y4_NN4BEG;
	wire [0:0] Tile_X3Y4_Co;

	assign Tile_Y1_FrameData = FrameData[(FrameBitsPerRow*(1+1))-1:FrameBitsPerRow*1];
	assign Tile_Y2_FrameData = FrameData[(FrameBitsPerRow*(2+1))-1:FrameBitsPerRow*2];
	assign Tile_Y3_FrameData = FrameData[(FrameBitsPerRow*(3+1))-1:FrameBitsPerRow*3];
	assign Tile_X0_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(0+1))-1:MaxFramesPerCol*0];
	assign Tile_X1_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(1+1))-1:MaxFramesPerCol*1];
	assign Tile_X2_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(2+1))-1:MaxFramesPerCol*2];
	assign Tile_X3_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(3+1))-1:MaxFramesPerCol*3];
	assign Tile_X4_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(4+1))-1:MaxFramesPerCol*4];

//tile instantiations

	N_term_single Tile_X1Y0_N_term_single (
	.N1END(Tile_X1Y1_N1BEG[3:0]),
	.N2MID(Tile_X1Y1_N2BEG[7:0]),
	.N2END(Tile_X1Y1_N2BEGb[7:0]),
	.N4END(Tile_X1Y1_N4BEG[15:0]),
	.NN4END(Tile_X1Y1_NN4BEG[15:0]),
	.Ci(Tile_X1Y1_Co[0:0]),
	.S1BEG(Tile_X1Y0_S1BEG[3:0]),
	.S2BEG(Tile_X1Y0_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y0_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y0_S4BEG[15:0]),
	.SS4BEG(Tile_X1Y0_SS4BEG[15:0]),
	.UserCLK(Tile_X1Y1_UserCLKo),
	.UserCLKo(Tile_X1Y0_UserCLKo),
	.OutputEnable(Tile_X1Y1_OutputEnable_O),
	.OutputEnable_O(Tile_X1Y0_OutputEnable_O),
	.FrameStrobe(Tile_X1Y1_FrameStrobe_O),
	.FrameStrobe_O(Tile_X1Y0_FrameStrobe_O)
	);

	N_term_single Tile_X2Y0_N_term_single (
	.N1END(Tile_X2Y1_N1BEG[3:0]),
	.N2MID(Tile_X2Y1_N2BEG[7:0]),
	.N2END(Tile_X2Y1_N2BEGb[7:0]),
	.N4END(Tile_X2Y1_N4BEG[15:0]),
	.NN4END(Tile_X2Y1_NN4BEG[15:0]),
	.Ci(Tile_X2Y1_Co[0:0]),
	.S1BEG(Tile_X2Y0_S1BEG[3:0]),
	.S2BEG(Tile_X2Y0_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y0_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y0_S4BEG[15:0]),
	.SS4BEG(Tile_X2Y0_SS4BEG[15:0]),
	.UserCLK(Tile_X2Y1_UserCLKo),
	.UserCLKo(Tile_X2Y0_UserCLKo),
	.OutputEnable(Tile_X2Y1_OutputEnable_O),
	.OutputEnable_O(Tile_X2Y0_OutputEnable_O),
	.FrameStrobe(Tile_X2Y1_FrameStrobe_O),
	.FrameStrobe_O(Tile_X2Y0_FrameStrobe_O)
	);

	N_term_single Tile_X3Y0_N_term_single (
	.N1END(Tile_X3Y1_N1BEG[3:0]),
	.N2MID(Tile_X3Y1_N2BEG[7:0]),
	.N2END(Tile_X3Y1_N2BEGb[7:0]),
	.N4END(Tile_X3Y1_N4BEG[15:0]),
	.NN4END(Tile_X3Y1_NN4BEG[15:0]),
	.Ci(Tile_X3Y1_Co[0:0]),
	.S1BEG(Tile_X3Y0_S1BEG[3:0]),
	.S2BEG(Tile_X3Y0_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y0_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y0_S4BEG[15:0]),
	.SS4BEG(Tile_X3Y0_SS4BEG[15:0]),
	.UserCLK(Tile_X3Y1_UserCLKo),
	.UserCLKo(Tile_X3Y0_UserCLKo),
	.OutputEnable(Tile_X3Y1_OutputEnable_O),
	.OutputEnable_O(Tile_X3Y0_OutputEnable_O),
	.FrameStrobe(Tile_X3Y1_FrameStrobe_O),
	.FrameStrobe_O(Tile_X3Y0_FrameStrobe_O)
	);

	W_IO Tile_X0Y1_W_IO (
	.W1END(Tile_X1Y1_W1BEG[3:0]),
	.W2MID(Tile_X1Y1_W2BEG[7:0]),
	.W2END(Tile_X1Y1_W2BEGb[7:0]),
	.WW4END(Tile_X1Y1_WW4BEG[15:0]),
	.W6END(Tile_X1Y1_W6BEG[11:0]),
	.E1BEG(Tile_X0Y1_E1BEG[3:0]),
	.E2BEG(Tile_X0Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X0Y1_E2BEGb[7:0]),
	.EE4BEG(Tile_X0Y1_EE4BEG[15:0]),
	.E6BEG(Tile_X0Y1_E6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X0Y1_A_I_top),
	.A_T_top(Tile_X0Y1_A_T_top),
	.A_O_top(Tile_X0Y1_A_O_top),
	.UserCLK(Tile_X0Y2_UserCLKo),
	.UserCLK(Tile_X0Y2_OutputEnable_O),
	.B_I_top(Tile_X0Y1_B_I_top),
	.B_T_top(Tile_X0Y1_B_T_top),
	.B_O_top(Tile_X0Y1_B_O_top),
	.A_config_C_bit0(Tile_X0Y1_A_config_C_bit0),
	.A_config_C_bit1(Tile_X0Y1_A_config_C_bit1),
	.A_config_C_bit2(Tile_X0Y1_A_config_C_bit2),
	.A_config_C_bit3(Tile_X0Y1_A_config_C_bit3),
	.B_config_C_bit0(Tile_X0Y1_B_config_C_bit0),
	.B_config_C_bit1(Tile_X0Y1_B_config_C_bit1),
	.B_config_C_bit2(Tile_X0Y1_B_config_C_bit2),
	.B_config_C_bit3(Tile_X0Y1_B_config_C_bit3),
	.UserCLKo(Tile_X0Y1_UserCLKo),
	.OutputEnable_O(Tile_X0Y1_OutputEnable_O),
	.FrameData(Tile_Y1_FrameData), 
	.FrameData_O(Tile_X0Y1_FrameData_O), 
	.FrameStrobe(Tile_X0Y2_FrameStrobe_O),
	.FrameStrobe_O(Tile_X0Y1_FrameStrobe_O)
	);

	LUT4AB Tile_X1Y1_LUT4AB (
	.N1END(Tile_X1Y2_N1BEG[3:0]),
	.N2MID(Tile_X1Y2_N2BEG[7:0]),
	.N2END(Tile_X1Y2_N2BEGb[7:0]),
	.N4END(Tile_X1Y2_N4BEG[15:0]),
	.NN4END(Tile_X1Y2_NN4BEG[15:0]),
	.Ci(Tile_X1Y2_Co[0:0]),
	.E1END(Tile_X0Y1_E1BEG[3:0]),
	.E2MID(Tile_X0Y1_E2BEG[7:0]),
	.E2END(Tile_X0Y1_E2BEGb[7:0]),
	.EE4END(Tile_X0Y1_EE4BEG[15:0]),
	.E6END(Tile_X0Y1_E6BEG[11:0]),
	.S1END(Tile_X1Y0_S1BEG[3:0]),
	.S2MID(Tile_X1Y0_S2BEG[7:0]),
	.S2END(Tile_X1Y0_S2BEGb[7:0]),
	.S4END(Tile_X1Y0_S4BEG[15:0]),
	.SS4END(Tile_X1Y0_SS4BEG[15:0]),
	.W1END(Tile_X2Y1_W1BEG[3:0]),
	.W2MID(Tile_X2Y1_W2BEG[7:0]),
	.W2END(Tile_X2Y1_W2BEGb[7:0]),
	.WW4END(Tile_X2Y1_WW4BEG[15:0]),
	.W6END(Tile_X2Y1_W6BEG[11:0]),
	.N1BEG(Tile_X1Y1_N1BEG[3:0]),
	.N2BEG(Tile_X1Y1_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y1_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y1_N4BEG[15:0]),
	.NN4BEG(Tile_X1Y1_NN4BEG[15:0]),
	.Co(Tile_X1Y1_Co[0:0]),
	.E1BEG(Tile_X1Y1_E1BEG[3:0]),
	.E2BEG(Tile_X1Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X1Y1_E2BEGb[7:0]),
	.EE4BEG(Tile_X1Y1_EE4BEG[15:0]),
	.E6BEG(Tile_X1Y1_E6BEG[11:0]),
	.S1BEG(Tile_X1Y1_S1BEG[3:0]),
	.S2BEG(Tile_X1Y1_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y1_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y1_S4BEG[15:0]),
	.SS4BEG(Tile_X1Y1_SS4BEG[15:0]),
	.W1BEG(Tile_X1Y1_W1BEG[3:0]),
	.W2BEG(Tile_X1Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X1Y1_W2BEGb[7:0]),
	.WW4BEG(Tile_X1Y1_WW4BEG[15:0]),
	.W6BEG(Tile_X1Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X1Y2_UserCLKo),
	.UserCLK(Tile_X1Y2_OutputEnable_O),
	.UserCLKo(Tile_X1Y1_UserCLKo),
	.OutputEnable_O(Tile_X1Y1_OutputEnable_O),
	.FrameData(Tile_X0Y1_FrameData_O), 
	.FrameData_O(Tile_X1Y1_FrameData_O), 
	.FrameStrobe(Tile_X1Y2_FrameStrobe_O),
	.FrameStrobe_O(Tile_X1Y1_FrameStrobe_O)
	);

	LUT4AB Tile_X2Y1_LUT4AB (
	.N1END(Tile_X2Y2_N1BEG[3:0]),
	.N2MID(Tile_X2Y2_N2BEG[7:0]),
	.N2END(Tile_X2Y2_N2BEGb[7:0]),
	.N4END(Tile_X2Y2_N4BEG[15:0]),
	.NN4END(Tile_X2Y2_NN4BEG[15:0]),
	.Ci(Tile_X2Y2_Co[0:0]),
	.E1END(Tile_X1Y1_E1BEG[3:0]),
	.E2MID(Tile_X1Y1_E2BEG[7:0]),
	.E2END(Tile_X1Y1_E2BEGb[7:0]),
	.EE4END(Tile_X1Y1_EE4BEG[15:0]),
	.E6END(Tile_X1Y1_E6BEG[11:0]),
	.S1END(Tile_X2Y0_S1BEG[3:0]),
	.S2MID(Tile_X2Y0_S2BEG[7:0]),
	.S2END(Tile_X2Y0_S2BEGb[7:0]),
	.S4END(Tile_X2Y0_S4BEG[15:0]),
	.SS4END(Tile_X2Y0_SS4BEG[15:0]),
	.W1END(Tile_X3Y1_W1BEG[3:0]),
	.W2MID(Tile_X3Y1_W2BEG[7:0]),
	.W2END(Tile_X3Y1_W2BEGb[7:0]),
	.WW4END(Tile_X3Y1_WW4BEG[15:0]),
	.W6END(Tile_X3Y1_W6BEG[11:0]),
	.N1BEG(Tile_X2Y1_N1BEG[3:0]),
	.N2BEG(Tile_X2Y1_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y1_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y1_N4BEG[15:0]),
	.NN4BEG(Tile_X2Y1_NN4BEG[15:0]),
	.Co(Tile_X2Y1_Co[0:0]),
	.E1BEG(Tile_X2Y1_E1BEG[3:0]),
	.E2BEG(Tile_X2Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X2Y1_E2BEGb[7:0]),
	.EE4BEG(Tile_X2Y1_EE4BEG[15:0]),
	.E6BEG(Tile_X2Y1_E6BEG[11:0]),
	.S1BEG(Tile_X2Y1_S1BEG[3:0]),
	.S2BEG(Tile_X2Y1_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y1_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y1_S4BEG[15:0]),
	.SS4BEG(Tile_X2Y1_SS4BEG[15:0]),
	.W1BEG(Tile_X2Y1_W1BEG[3:0]),
	.W2BEG(Tile_X2Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X2Y1_W2BEGb[7:0]),
	.WW4BEG(Tile_X2Y1_WW4BEG[15:0]),
	.W6BEG(Tile_X2Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X2Y2_UserCLKo),
	.UserCLK(Tile_X2Y2_OutputEnable_O),
	.UserCLKo(Tile_X2Y1_UserCLKo),
	.OutputEnable_O(Tile_X2Y1_OutputEnable_O),
	.FrameData(Tile_X1Y1_FrameData_O), 
	.FrameData_O(Tile_X2Y1_FrameData_O), 
	.FrameStrobe(Tile_X2Y2_FrameStrobe_O),
	.FrameStrobe_O(Tile_X2Y1_FrameStrobe_O)
	);

	LUT4AB Tile_X3Y1_LUT4AB (
	.N1END(Tile_X3Y2_N1BEG[3:0]),
	.N2MID(Tile_X3Y2_N2BEG[7:0]),
	.N2END(Tile_X3Y2_N2BEGb[7:0]),
	.N4END(Tile_X3Y2_N4BEG[15:0]),
	.NN4END(Tile_X3Y2_NN4BEG[15:0]),
	.Ci(Tile_X3Y2_Co[0:0]),
	.E1END(Tile_X2Y1_E1BEG[3:0]),
	.E2MID(Tile_X2Y1_E2BEG[7:0]),
	.E2END(Tile_X2Y1_E2BEGb[7:0]),
	.EE4END(Tile_X2Y1_EE4BEG[15:0]),
	.E6END(Tile_X2Y1_E6BEG[11:0]),
	.S1END(Tile_X3Y0_S1BEG[3:0]),
	.S2MID(Tile_X3Y0_S2BEG[7:0]),
	.S2END(Tile_X3Y0_S2BEGb[7:0]),
	.S4END(Tile_X3Y0_S4BEG[15:0]),
	.SS4END(Tile_X3Y0_SS4BEG[15:0]),
	.W1END(Tile_X4Y1_W1BEG[3:0]),
	.W2MID(Tile_X4Y1_W2BEG[7:0]),
	.W2END(Tile_X4Y1_W2BEGb[7:0]),
	.WW4END(Tile_X4Y1_WW4BEG[15:0]),
	.W6END(Tile_X4Y1_W6BEG[11:0]),
	.N1BEG(Tile_X3Y1_N1BEG[3:0]),
	.N2BEG(Tile_X3Y1_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y1_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y1_N4BEG[15:0]),
	.NN4BEG(Tile_X3Y1_NN4BEG[15:0]),
	.Co(Tile_X3Y1_Co[0:0]),
	.E1BEG(Tile_X3Y1_E1BEG[3:0]),
	.E2BEG(Tile_X3Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X3Y1_E2BEGb[7:0]),
	.EE4BEG(Tile_X3Y1_EE4BEG[15:0]),
	.E6BEG(Tile_X3Y1_E6BEG[11:0]),
	.S1BEG(Tile_X3Y1_S1BEG[3:0]),
	.S2BEG(Tile_X3Y1_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y1_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y1_S4BEG[15:0]),
	.SS4BEG(Tile_X3Y1_SS4BEG[15:0]),
	.W1BEG(Tile_X3Y1_W1BEG[3:0]),
	.W2BEG(Tile_X3Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X3Y1_W2BEGb[7:0]),
	.WW4BEG(Tile_X3Y1_WW4BEG[15:0]),
	.W6BEG(Tile_X3Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X3Y2_UserCLKo),
	.UserCLK(Tile_X3Y2_OutputEnable_O),
	.UserCLKo(Tile_X3Y1_UserCLKo),
	.OutputEnable_O(Tile_X3Y1_OutputEnable_O),
	.FrameData(Tile_X2Y1_FrameData_O), 
	.FrameData_O(Tile_X3Y1_FrameData_O), 
	.FrameStrobe(Tile_X3Y2_FrameStrobe_O),
	.FrameStrobe_O(Tile_X3Y1_FrameStrobe_O)
	);

	E_IO Tile_X4Y1_E_IO (
	.E1END(Tile_X3Y1_E1BEG[3:0]),
	.E2MID(Tile_X3Y1_E2BEG[7:0]),
	.E2END(Tile_X3Y1_E2BEGb[7:0]),
	.EE4END(Tile_X3Y1_EE4BEG[15:0]),
	.E6END(Tile_X3Y1_E6BEG[11:0]),
	.W1BEG(Tile_X4Y1_W1BEG[3:0]),
	.W2BEG(Tile_X4Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X4Y1_W2BEGb[7:0]),
	.WW4BEG(Tile_X4Y1_WW4BEG[15:0]),
	.W6BEG(Tile_X4Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X4Y1_A_I_top),
	.A_T_top(Tile_X4Y1_A_T_top),
	.A_O_top(Tile_X4Y1_A_O_top),
	.UserCLK(Tile_X4Y2_UserCLKo),
	.UserCLK(Tile_X4Y2_OutputEnable_O),
	.B_I_top(Tile_X4Y1_B_I_top),
	.B_T_top(Tile_X4Y1_B_T_top),
	.B_O_top(Tile_X4Y1_B_O_top),
	.A_config_C_bit0(Tile_X4Y1_A_config_C_bit0),
	.A_config_C_bit1(Tile_X4Y1_A_config_C_bit1),
	.A_config_C_bit2(Tile_X4Y1_A_config_C_bit2),
	.A_config_C_bit3(Tile_X4Y1_A_config_C_bit3),
	.B_config_C_bit0(Tile_X4Y1_B_config_C_bit0),
	.B_config_C_bit1(Tile_X4Y1_B_config_C_bit1),
	.B_config_C_bit2(Tile_X4Y1_B_config_C_bit2),
	.B_config_C_bit3(Tile_X4Y1_B_config_C_bit3),
	.UserCLKo(Tile_X4Y1_UserCLKo),
	.OutputEnable_O(Tile_X4Y1_OutputEnable_O),
	.FrameData(Tile_X3Y1_FrameData_O), 
	.FrameData_O(Tile_X4Y1_FrameData_O), 
	.FrameStrobe(Tile_X4Y2_FrameStrobe_O),
	.FrameStrobe_O(Tile_X4Y1_FrameStrobe_O)
	);

	W_IO Tile_X0Y2_W_IO (
	.W1END(Tile_X1Y2_W1BEG[3:0]),
	.W2MID(Tile_X1Y2_W2BEG[7:0]),
	.W2END(Tile_X1Y2_W2BEGb[7:0]),
	.WW4END(Tile_X1Y2_WW4BEG[15:0]),
	.W6END(Tile_X1Y2_W6BEG[11:0]),
	.E1BEG(Tile_X0Y2_E1BEG[3:0]),
	.E2BEG(Tile_X0Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X0Y2_E2BEGb[7:0]),
	.EE4BEG(Tile_X0Y2_EE4BEG[15:0]),
	.E6BEG(Tile_X0Y2_E6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X0Y2_A_I_top),
	.A_T_top(Tile_X0Y2_A_T_top),
	.A_O_top(Tile_X0Y2_A_O_top),
	.UserCLK(Tile_X0Y3_UserCLKo),
	.UserCLK(Tile_X0Y3_OutputEnable_O),
	.B_I_top(Tile_X0Y2_B_I_top),
	.B_T_top(Tile_X0Y2_B_T_top),
	.B_O_top(Tile_X0Y2_B_O_top),
	.A_config_C_bit0(Tile_X0Y2_A_config_C_bit0),
	.A_config_C_bit1(Tile_X0Y2_A_config_C_bit1),
	.A_config_C_bit2(Tile_X0Y2_A_config_C_bit2),
	.A_config_C_bit3(Tile_X0Y2_A_config_C_bit3),
	.B_config_C_bit0(Tile_X0Y2_B_config_C_bit0),
	.B_config_C_bit1(Tile_X0Y2_B_config_C_bit1),
	.B_config_C_bit2(Tile_X0Y2_B_config_C_bit2),
	.B_config_C_bit3(Tile_X0Y2_B_config_C_bit3),
	.UserCLKo(Tile_X0Y2_UserCLKo),
	.OutputEnable_O(Tile_X0Y2_OutputEnable_O),
	.FrameData(Tile_Y2_FrameData), 
	.FrameData_O(Tile_X0Y2_FrameData_O), 
	.FrameStrobe(Tile_X0Y3_FrameStrobe_O),
	.FrameStrobe_O(Tile_X0Y2_FrameStrobe_O)
	);

	LUT4AB Tile_X1Y2_LUT4AB (
	.N1END(Tile_X1Y3_N1BEG[3:0]),
	.N2MID(Tile_X1Y3_N2BEG[7:0]),
	.N2END(Tile_X1Y3_N2BEGb[7:0]),
	.N4END(Tile_X1Y3_N4BEG[15:0]),
	.NN4END(Tile_X1Y3_NN4BEG[15:0]),
	.Ci(Tile_X1Y3_Co[0:0]),
	.E1END(Tile_X0Y2_E1BEG[3:0]),
	.E2MID(Tile_X0Y2_E2BEG[7:0]),
	.E2END(Tile_X0Y2_E2BEGb[7:0]),
	.EE4END(Tile_X0Y2_EE4BEG[15:0]),
	.E6END(Tile_X0Y2_E6BEG[11:0]),
	.S1END(Tile_X1Y1_S1BEG[3:0]),
	.S2MID(Tile_X1Y1_S2BEG[7:0]),
	.S2END(Tile_X1Y1_S2BEGb[7:0]),
	.S4END(Tile_X1Y1_S4BEG[15:0]),
	.SS4END(Tile_X1Y1_SS4BEG[15:0]),
	.W1END(Tile_X2Y2_W1BEG[3:0]),
	.W2MID(Tile_X2Y2_W2BEG[7:0]),
	.W2END(Tile_X2Y2_W2BEGb[7:0]),
	.WW4END(Tile_X2Y2_WW4BEG[15:0]),
	.W6END(Tile_X2Y2_W6BEG[11:0]),
	.N1BEG(Tile_X1Y2_N1BEG[3:0]),
	.N2BEG(Tile_X1Y2_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y2_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y2_N4BEG[15:0]),
	.NN4BEG(Tile_X1Y2_NN4BEG[15:0]),
	.Co(Tile_X1Y2_Co[0:0]),
	.E1BEG(Tile_X1Y2_E1BEG[3:0]),
	.E2BEG(Tile_X1Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X1Y2_E2BEGb[7:0]),
	.EE4BEG(Tile_X1Y2_EE4BEG[15:0]),
	.E6BEG(Tile_X1Y2_E6BEG[11:0]),
	.S1BEG(Tile_X1Y2_S1BEG[3:0]),
	.S2BEG(Tile_X1Y2_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y2_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y2_S4BEG[15:0]),
	.SS4BEG(Tile_X1Y2_SS4BEG[15:0]),
	.W1BEG(Tile_X1Y2_W1BEG[3:0]),
	.W2BEG(Tile_X1Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X1Y2_W2BEGb[7:0]),
	.WW4BEG(Tile_X1Y2_WW4BEG[15:0]),
	.W6BEG(Tile_X1Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X1Y3_UserCLKo),
	.UserCLK(Tile_X1Y3_OutputEnable_O),
	.UserCLKo(Tile_X1Y2_UserCLKo),
	.OutputEnable_O(Tile_X1Y2_OutputEnable_O),
	.FrameData(Tile_X0Y2_FrameData_O), 
	.FrameData_O(Tile_X1Y2_FrameData_O), 
	.FrameStrobe(Tile_X1Y3_FrameStrobe_O),
	.FrameStrobe_O(Tile_X1Y2_FrameStrobe_O)
	);

	LUT4AB Tile_X2Y2_LUT4AB (
	.N1END(Tile_X2Y3_N1BEG[3:0]),
	.N2MID(Tile_X2Y3_N2BEG[7:0]),
	.N2END(Tile_X2Y3_N2BEGb[7:0]),
	.N4END(Tile_X2Y3_N4BEG[15:0]),
	.NN4END(Tile_X2Y3_NN4BEG[15:0]),
	.Ci(Tile_X2Y3_Co[0:0]),
	.E1END(Tile_X1Y2_E1BEG[3:0]),
	.E2MID(Tile_X1Y2_E2BEG[7:0]),
	.E2END(Tile_X1Y2_E2BEGb[7:0]),
	.EE4END(Tile_X1Y2_EE4BEG[15:0]),
	.E6END(Tile_X1Y2_E6BEG[11:0]),
	.S1END(Tile_X2Y1_S1BEG[3:0]),
	.S2MID(Tile_X2Y1_S2BEG[7:0]),
	.S2END(Tile_X2Y1_S2BEGb[7:0]),
	.S4END(Tile_X2Y1_S4BEG[15:0]),
	.SS4END(Tile_X2Y1_SS4BEG[15:0]),
	.W1END(Tile_X3Y2_W1BEG[3:0]),
	.W2MID(Tile_X3Y2_W2BEG[7:0]),
	.W2END(Tile_X3Y2_W2BEGb[7:0]),
	.WW4END(Tile_X3Y2_WW4BEG[15:0]),
	.W6END(Tile_X3Y2_W6BEG[11:0]),
	.N1BEG(Tile_X2Y2_N1BEG[3:0]),
	.N2BEG(Tile_X2Y2_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y2_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y2_N4BEG[15:0]),
	.NN4BEG(Tile_X2Y2_NN4BEG[15:0]),
	.Co(Tile_X2Y2_Co[0:0]),
	.E1BEG(Tile_X2Y2_E1BEG[3:0]),
	.E2BEG(Tile_X2Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X2Y2_E2BEGb[7:0]),
	.EE4BEG(Tile_X2Y2_EE4BEG[15:0]),
	.E6BEG(Tile_X2Y2_E6BEG[11:0]),
	.S1BEG(Tile_X2Y2_S1BEG[3:0]),
	.S2BEG(Tile_X2Y2_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y2_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y2_S4BEG[15:0]),
	.SS4BEG(Tile_X2Y2_SS4BEG[15:0]),
	.W1BEG(Tile_X2Y2_W1BEG[3:0]),
	.W2BEG(Tile_X2Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X2Y2_W2BEGb[7:0]),
	.WW4BEG(Tile_X2Y2_WW4BEG[15:0]),
	.W6BEG(Tile_X2Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X2Y3_UserCLKo),
	.UserCLK(Tile_X2Y3_OutputEnable_O),
	.UserCLKo(Tile_X2Y2_UserCLKo),
	.OutputEnable_O(Tile_X2Y2_OutputEnable_O),
	.FrameData(Tile_X1Y2_FrameData_O), 
	.FrameData_O(Tile_X2Y2_FrameData_O), 
	.FrameStrobe(Tile_X2Y3_FrameStrobe_O),
	.FrameStrobe_O(Tile_X2Y2_FrameStrobe_O)
	);

	LUT4AB Tile_X3Y2_LUT4AB (
	.N1END(Tile_X3Y3_N1BEG[3:0]),
	.N2MID(Tile_X3Y3_N2BEG[7:0]),
	.N2END(Tile_X3Y3_N2BEGb[7:0]),
	.N4END(Tile_X3Y3_N4BEG[15:0]),
	.NN4END(Tile_X3Y3_NN4BEG[15:0]),
	.Ci(Tile_X3Y3_Co[0:0]),
	.E1END(Tile_X2Y2_E1BEG[3:0]),
	.E2MID(Tile_X2Y2_E2BEG[7:0]),
	.E2END(Tile_X2Y2_E2BEGb[7:0]),
	.EE4END(Tile_X2Y2_EE4BEG[15:0]),
	.E6END(Tile_X2Y2_E6BEG[11:0]),
	.S1END(Tile_X3Y1_S1BEG[3:0]),
	.S2MID(Tile_X3Y1_S2BEG[7:0]),
	.S2END(Tile_X3Y1_S2BEGb[7:0]),
	.S4END(Tile_X3Y1_S4BEG[15:0]),
	.SS4END(Tile_X3Y1_SS4BEG[15:0]),
	.W1END(Tile_X4Y2_W1BEG[3:0]),
	.W2MID(Tile_X4Y2_W2BEG[7:0]),
	.W2END(Tile_X4Y2_W2BEGb[7:0]),
	.WW4END(Tile_X4Y2_WW4BEG[15:0]),
	.W6END(Tile_X4Y2_W6BEG[11:0]),
	.N1BEG(Tile_X3Y2_N1BEG[3:0]),
	.N2BEG(Tile_X3Y2_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y2_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y2_N4BEG[15:0]),
	.NN4BEG(Tile_X3Y2_NN4BEG[15:0]),
	.Co(Tile_X3Y2_Co[0:0]),
	.E1BEG(Tile_X3Y2_E1BEG[3:0]),
	.E2BEG(Tile_X3Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X3Y2_E2BEGb[7:0]),
	.EE4BEG(Tile_X3Y2_EE4BEG[15:0]),
	.E6BEG(Tile_X3Y2_E6BEG[11:0]),
	.S1BEG(Tile_X3Y2_S1BEG[3:0]),
	.S2BEG(Tile_X3Y2_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y2_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y2_S4BEG[15:0]),
	.SS4BEG(Tile_X3Y2_SS4BEG[15:0]),
	.W1BEG(Tile_X3Y2_W1BEG[3:0]),
	.W2BEG(Tile_X3Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X3Y2_W2BEGb[7:0]),
	.WW4BEG(Tile_X3Y2_WW4BEG[15:0]),
	.W6BEG(Tile_X3Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X3Y3_UserCLKo),
	.UserCLK(Tile_X3Y3_OutputEnable_O),
	.UserCLKo(Tile_X3Y2_UserCLKo),
	.OutputEnable_O(Tile_X3Y2_OutputEnable_O),
	.FrameData(Tile_X2Y2_FrameData_O), 
	.FrameData_O(Tile_X3Y2_FrameData_O), 
	.FrameStrobe(Tile_X3Y3_FrameStrobe_O),
	.FrameStrobe_O(Tile_X3Y2_FrameStrobe_O)
	);

	E_IO Tile_X4Y2_E_IO (
	.E1END(Tile_X3Y2_E1BEG[3:0]),
	.E2MID(Tile_X3Y2_E2BEG[7:0]),
	.E2END(Tile_X3Y2_E2BEGb[7:0]),
	.EE4END(Tile_X3Y2_EE4BEG[15:0]),
	.E6END(Tile_X3Y2_E6BEG[11:0]),
	.W1BEG(Tile_X4Y2_W1BEG[3:0]),
	.W2BEG(Tile_X4Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X4Y2_W2BEGb[7:0]),
	.WW4BEG(Tile_X4Y2_WW4BEG[15:0]),
	.W6BEG(Tile_X4Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X4Y2_A_I_top),
	.A_T_top(Tile_X4Y2_A_T_top),
	.A_O_top(Tile_X4Y2_A_O_top),
	.UserCLK(Tile_X4Y3_UserCLKo),
	.UserCLK(Tile_X4Y3_OutputEnable_O),
	.B_I_top(Tile_X4Y2_B_I_top),
	.B_T_top(Tile_X4Y2_B_T_top),
	.B_O_top(Tile_X4Y2_B_O_top),
	.A_config_C_bit0(Tile_X4Y2_A_config_C_bit0),
	.A_config_C_bit1(Tile_X4Y2_A_config_C_bit1),
	.A_config_C_bit2(Tile_X4Y2_A_config_C_bit2),
	.A_config_C_bit3(Tile_X4Y2_A_config_C_bit3),
	.B_config_C_bit0(Tile_X4Y2_B_config_C_bit0),
	.B_config_C_bit1(Tile_X4Y2_B_config_C_bit1),
	.B_config_C_bit2(Tile_X4Y2_B_config_C_bit2),
	.B_config_C_bit3(Tile_X4Y2_B_config_C_bit3),
	.UserCLKo(Tile_X4Y2_UserCLKo),
	.OutputEnable_O(Tile_X4Y2_OutputEnable_O),
	.FrameData(Tile_X3Y2_FrameData_O), 
	.FrameData_O(Tile_X4Y2_FrameData_O), 
	.FrameStrobe(Tile_X4Y3_FrameStrobe_O),
	.FrameStrobe_O(Tile_X4Y2_FrameStrobe_O)
	);

	W_IO Tile_X0Y3_W_IO (
	.W1END(Tile_X1Y3_W1BEG[3:0]),
	.W2MID(Tile_X1Y3_W2BEG[7:0]),
	.W2END(Tile_X1Y3_W2BEGb[7:0]),
	.WW4END(Tile_X1Y3_WW4BEG[15:0]),
	.W6END(Tile_X1Y3_W6BEG[11:0]),
	.E1BEG(Tile_X0Y3_E1BEG[3:0]),
	.E2BEG(Tile_X0Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X0Y3_E2BEGb[7:0]),
	.EE4BEG(Tile_X0Y3_EE4BEG[15:0]),
	.E6BEG(Tile_X0Y3_E6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X0Y3_A_I_top),
	.A_T_top(Tile_X0Y3_A_T_top),
	.A_O_top(Tile_X0Y3_A_O_top),
	.UserCLK(UserCLK),
	.UserCLK(OutputEnable),
	.B_I_top(Tile_X0Y3_B_I_top),
	.B_T_top(Tile_X0Y3_B_T_top),
	.B_O_top(Tile_X0Y3_B_O_top),
	.A_config_C_bit0(Tile_X0Y3_A_config_C_bit0),
	.A_config_C_bit1(Tile_X0Y3_A_config_C_bit1),
	.A_config_C_bit2(Tile_X0Y3_A_config_C_bit2),
	.A_config_C_bit3(Tile_X0Y3_A_config_C_bit3),
	.B_config_C_bit0(Tile_X0Y3_B_config_C_bit0),
	.B_config_C_bit1(Tile_X0Y3_B_config_C_bit1),
	.B_config_C_bit2(Tile_X0Y3_B_config_C_bit2),
	.B_config_C_bit3(Tile_X0Y3_B_config_C_bit3),
	.UserCLKo(Tile_X0Y3_UserCLKo),
	.OutputEnable_O(Tile_X0Y3_OutputEnable_O),
	.FrameData(Tile_Y3_FrameData), 
	.FrameData_O(Tile_X0Y3_FrameData_O), 
	.FrameStrobe(Tile_X0_FrameStrobe),
	.FrameStrobe_O(Tile_X0Y3_FrameStrobe_O)
	);

	LUT4AB Tile_X1Y3_LUT4AB (
	.N1END(Tile_X1Y4_N1BEG[3:0]),
	.N2MID(Tile_X1Y4_N2BEG[7:0]),
	.N2END(Tile_X1Y4_N2BEGb[7:0]),
	.N4END(Tile_X1Y4_N4BEG[15:0]),
	.NN4END(Tile_X1Y4_NN4BEG[15:0]),
	.Ci(Tile_X1Y4_Co[0:0]),
	.E1END(Tile_X0Y3_E1BEG[3:0]),
	.E2MID(Tile_X0Y3_E2BEG[7:0]),
	.E2END(Tile_X0Y3_E2BEGb[7:0]),
	.EE4END(Tile_X0Y3_EE4BEG[15:0]),
	.E6END(Tile_X0Y3_E6BEG[11:0]),
	.S1END(Tile_X1Y2_S1BEG[3:0]),
	.S2MID(Tile_X1Y2_S2BEG[7:0]),
	.S2END(Tile_X1Y2_S2BEGb[7:0]),
	.S4END(Tile_X1Y2_S4BEG[15:0]),
	.SS4END(Tile_X1Y2_SS4BEG[15:0]),
	.W1END(Tile_X2Y3_W1BEG[3:0]),
	.W2MID(Tile_X2Y3_W2BEG[7:0]),
	.W2END(Tile_X2Y3_W2BEGb[7:0]),
	.WW4END(Tile_X2Y3_WW4BEG[15:0]),
	.W6END(Tile_X2Y3_W6BEG[11:0]),
	.N1BEG(Tile_X1Y3_N1BEG[3:0]),
	.N2BEG(Tile_X1Y3_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y3_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y3_N4BEG[15:0]),
	.NN4BEG(Tile_X1Y3_NN4BEG[15:0]),
	.Co(Tile_X1Y3_Co[0:0]),
	.E1BEG(Tile_X1Y3_E1BEG[3:0]),
	.E2BEG(Tile_X1Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X1Y3_E2BEGb[7:0]),
	.EE4BEG(Tile_X1Y3_EE4BEG[15:0]),
	.E6BEG(Tile_X1Y3_E6BEG[11:0]),
	.S1BEG(Tile_X1Y3_S1BEG[3:0]),
	.S2BEG(Tile_X1Y3_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y3_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y3_S4BEG[15:0]),
	.SS4BEG(Tile_X1Y3_SS4BEG[15:0]),
	.W1BEG(Tile_X1Y3_W1BEG[3:0]),
	.W2BEG(Tile_X1Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X1Y3_W2BEGb[7:0]),
	.WW4BEG(Tile_X1Y3_WW4BEG[15:0]),
	.W6BEG(Tile_X1Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X1Y4_UserCLKo),
	.UserCLK(Tile_X1Y4_OutputEnable_O),
	.UserCLKo(Tile_X1Y3_UserCLKo),
	.OutputEnable_O(Tile_X1Y3_OutputEnable_O),
	.FrameData(Tile_X0Y3_FrameData_O), 
	.FrameData_O(Tile_X1Y3_FrameData_O), 
	.FrameStrobe(Tile_X1Y4_FrameStrobe_O),
	.FrameStrobe_O(Tile_X1Y3_FrameStrobe_O)
	);

	LUT4AB Tile_X2Y3_LUT4AB (
	.N1END(Tile_X2Y4_N1BEG[3:0]),
	.N2MID(Tile_X2Y4_N2BEG[7:0]),
	.N2END(Tile_X2Y4_N2BEGb[7:0]),
	.N4END(Tile_X2Y4_N4BEG[15:0]),
	.NN4END(Tile_X2Y4_NN4BEG[15:0]),
	.Ci(Tile_X2Y4_Co[0:0]),
	.E1END(Tile_X1Y3_E1BEG[3:0]),
	.E2MID(Tile_X1Y3_E2BEG[7:0]),
	.E2END(Tile_X1Y3_E2BEGb[7:0]),
	.EE4END(Tile_X1Y3_EE4BEG[15:0]),
	.E6END(Tile_X1Y3_E6BEG[11:0]),
	.S1END(Tile_X2Y2_S1BEG[3:0]),
	.S2MID(Tile_X2Y2_S2BEG[7:0]),
	.S2END(Tile_X2Y2_S2BEGb[7:0]),
	.S4END(Tile_X2Y2_S4BEG[15:0]),
	.SS4END(Tile_X2Y2_SS4BEG[15:0]),
	.W1END(Tile_X3Y3_W1BEG[3:0]),
	.W2MID(Tile_X3Y3_W2BEG[7:0]),
	.W2END(Tile_X3Y3_W2BEGb[7:0]),
	.WW4END(Tile_X3Y3_WW4BEG[15:0]),
	.W6END(Tile_X3Y3_W6BEG[11:0]),
	.N1BEG(Tile_X2Y3_N1BEG[3:0]),
	.N2BEG(Tile_X2Y3_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y3_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y3_N4BEG[15:0]),
	.NN4BEG(Tile_X2Y3_NN4BEG[15:0]),
	.Co(Tile_X2Y3_Co[0:0]),
	.E1BEG(Tile_X2Y3_E1BEG[3:0]),
	.E2BEG(Tile_X2Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X2Y3_E2BEGb[7:0]),
	.EE4BEG(Tile_X2Y3_EE4BEG[15:0]),
	.E6BEG(Tile_X2Y3_E6BEG[11:0]),
	.S1BEG(Tile_X2Y3_S1BEG[3:0]),
	.S2BEG(Tile_X2Y3_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y3_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y3_S4BEG[15:0]),
	.SS4BEG(Tile_X2Y3_SS4BEG[15:0]),
	.W1BEG(Tile_X2Y3_W1BEG[3:0]),
	.W2BEG(Tile_X2Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X2Y3_W2BEGb[7:0]),
	.WW4BEG(Tile_X2Y3_WW4BEG[15:0]),
	.W6BEG(Tile_X2Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X2Y4_UserCLKo),
	.UserCLK(Tile_X2Y4_OutputEnable_O),
	.UserCLKo(Tile_X2Y3_UserCLKo),
	.OutputEnable_O(Tile_X2Y3_OutputEnable_O),
	.FrameData(Tile_X1Y3_FrameData_O), 
	.FrameData_O(Tile_X2Y3_FrameData_O), 
	.FrameStrobe(Tile_X2Y4_FrameStrobe_O),
	.FrameStrobe_O(Tile_X2Y3_FrameStrobe_O)
	);

	LUT4AB Tile_X3Y3_LUT4AB (
	.N1END(Tile_X3Y4_N1BEG[3:0]),
	.N2MID(Tile_X3Y4_N2BEG[7:0]),
	.N2END(Tile_X3Y4_N2BEGb[7:0]),
	.N4END(Tile_X3Y4_N4BEG[15:0]),
	.NN4END(Tile_X3Y4_NN4BEG[15:0]),
	.Ci(Tile_X3Y4_Co[0:0]),
	.E1END(Tile_X2Y3_E1BEG[3:0]),
	.E2MID(Tile_X2Y3_E2BEG[7:0]),
	.E2END(Tile_X2Y3_E2BEGb[7:0]),
	.EE4END(Tile_X2Y3_EE4BEG[15:0]),
	.E6END(Tile_X2Y3_E6BEG[11:0]),
	.S1END(Tile_X3Y2_S1BEG[3:0]),
	.S2MID(Tile_X3Y2_S2BEG[7:0]),
	.S2END(Tile_X3Y2_S2BEGb[7:0]),
	.S4END(Tile_X3Y2_S4BEG[15:0]),
	.SS4END(Tile_X3Y2_SS4BEG[15:0]),
	.W1END(Tile_X4Y3_W1BEG[3:0]),
	.W2MID(Tile_X4Y3_W2BEG[7:0]),
	.W2END(Tile_X4Y3_W2BEGb[7:0]),
	.WW4END(Tile_X4Y3_WW4BEG[15:0]),
	.W6END(Tile_X4Y3_W6BEG[11:0]),
	.N1BEG(Tile_X3Y3_N1BEG[3:0]),
	.N2BEG(Tile_X3Y3_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y3_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y3_N4BEG[15:0]),
	.NN4BEG(Tile_X3Y3_NN4BEG[15:0]),
	.Co(Tile_X3Y3_Co[0:0]),
	.E1BEG(Tile_X3Y3_E1BEG[3:0]),
	.E2BEG(Tile_X3Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X3Y3_E2BEGb[7:0]),
	.EE4BEG(Tile_X3Y3_EE4BEG[15:0]),
	.E6BEG(Tile_X3Y3_E6BEG[11:0]),
	.S1BEG(Tile_X3Y3_S1BEG[3:0]),
	.S2BEG(Tile_X3Y3_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y3_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y3_S4BEG[15:0]),
	.SS4BEG(Tile_X3Y3_SS4BEG[15:0]),
	.W1BEG(Tile_X3Y3_W1BEG[3:0]),
	.W2BEG(Tile_X3Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X3Y3_W2BEGb[7:0]),
	.WW4BEG(Tile_X3Y3_WW4BEG[15:0]),
	.W6BEG(Tile_X3Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(Tile_X3Y4_UserCLKo),
	.UserCLK(Tile_X3Y4_OutputEnable_O),
	.UserCLKo(Tile_X3Y3_UserCLKo),
	.OutputEnable_O(Tile_X3Y3_OutputEnable_O),
	.FrameData(Tile_X2Y3_FrameData_O), 
	.FrameData_O(Tile_X3Y3_FrameData_O), 
	.FrameStrobe(Tile_X3Y4_FrameStrobe_O),
	.FrameStrobe_O(Tile_X3Y3_FrameStrobe_O)
	);

	E_IO Tile_X4Y3_E_IO (
	.E1END(Tile_X3Y3_E1BEG[3:0]),
	.E2MID(Tile_X3Y3_E2BEG[7:0]),
	.E2END(Tile_X3Y3_E2BEGb[7:0]),
	.EE4END(Tile_X3Y3_EE4BEG[15:0]),
	.E6END(Tile_X3Y3_E6BEG[11:0]),
	.W1BEG(Tile_X4Y3_W1BEG[3:0]),
	.W2BEG(Tile_X4Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X4Y3_W2BEGb[7:0]),
	.WW4BEG(Tile_X4Y3_WW4BEG[15:0]),
	.W6BEG(Tile_X4Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X4Y3_A_I_top),
	.A_T_top(Tile_X4Y3_A_T_top),
	.A_O_top(Tile_X4Y3_A_O_top),
	.UserCLK(UserCLK),
	.UserCLK(OutputEnable),
	.B_I_top(Tile_X4Y3_B_I_top),
	.B_T_top(Tile_X4Y3_B_T_top),
	.B_O_top(Tile_X4Y3_B_O_top),
	.A_config_C_bit0(Tile_X4Y3_A_config_C_bit0),
	.A_config_C_bit1(Tile_X4Y3_A_config_C_bit1),
	.A_config_C_bit2(Tile_X4Y3_A_config_C_bit2),
	.A_config_C_bit3(Tile_X4Y3_A_config_C_bit3),
	.B_config_C_bit0(Tile_X4Y3_B_config_C_bit0),
	.B_config_C_bit1(Tile_X4Y3_B_config_C_bit1),
	.B_config_C_bit2(Tile_X4Y3_B_config_C_bit2),
	.B_config_C_bit3(Tile_X4Y3_B_config_C_bit3),
	.UserCLKo(Tile_X4Y3_UserCLKo),
	.OutputEnable_O(Tile_X4Y3_OutputEnable_O),
	.FrameData(Tile_X3Y3_FrameData_O), 
	.FrameData_O(Tile_X4Y3_FrameData_O), 
	.FrameStrobe(Tile_X4_FrameStrobe),
	.FrameStrobe_O(Tile_X4Y3_FrameStrobe_O)
	);

	S_term_single Tile_X1Y4_S_term_single (
	.S1END(Tile_X1Y3_S1BEG[3:0]),
	.S2MID(Tile_X1Y3_S2BEG[7:0]),
	.S2END(Tile_X1Y3_S2BEGb[7:0]),
	.S4END(Tile_X1Y3_S4BEG[15:0]),
	.SS4END(Tile_X1Y3_SS4BEG[15:0]),
	.N1BEG(Tile_X1Y4_N1BEG[3:0]),
	.N2BEG(Tile_X1Y4_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y4_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y4_N4BEG[15:0]),
	.NN4BEG(Tile_X1Y4_NN4BEG[15:0]),
	.Co(Tile_X1Y4_Co[0:0]),
	.UserCLK(UserCLK),
	.UserCLKo(Tile_X1Y4_UserCLKo),
	.OutputEnable(OutputEnable),
	.OutputEnable_O(Tile_X1Y4_OutputEnable_O),
	.FrameStrobe(Tile_X1_FrameStrobe),
	.FrameStrobe_O(Tile_X1Y4_FrameStrobe_O)
	);

	S_term_single Tile_X2Y4_S_term_single (
	.S1END(Tile_X2Y3_S1BEG[3:0]),
	.S2MID(Tile_X2Y3_S2BEG[7:0]),
	.S2END(Tile_X2Y3_S2BEGb[7:0]),
	.S4END(Tile_X2Y3_S4BEG[15:0]),
	.SS4END(Tile_X2Y3_SS4BEG[15:0]),
	.N1BEG(Tile_X2Y4_N1BEG[3:0]),
	.N2BEG(Tile_X2Y4_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y4_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y4_N4BEG[15:0]),
	.NN4BEG(Tile_X2Y4_NN4BEG[15:0]),
	.Co(Tile_X2Y4_Co[0:0]),
	.UserCLK(UserCLK),
	.UserCLKo(Tile_X2Y4_UserCLKo),
	.OutputEnable(OutputEnable),
	.OutputEnable_O(Tile_X2Y4_OutputEnable_O),
	.FrameStrobe(Tile_X2_FrameStrobe),
	.FrameStrobe_O(Tile_X2Y4_FrameStrobe_O)
	);

	S_term_single Tile_X3Y4_S_term_single (
	.S1END(Tile_X3Y3_S1BEG[3:0]),
	.S2MID(Tile_X3Y3_S2BEG[7:0]),
	.S2END(Tile_X3Y3_S2BEGb[7:0]),
	.S4END(Tile_X3Y3_S4BEG[15:0]),
	.SS4END(Tile_X3Y3_SS4BEG[15:0]),
	.N1BEG(Tile_X3Y4_N1BEG[3:0]),
	.N2BEG(Tile_X3Y4_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y4_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y4_N4BEG[15:0]),
	.NN4BEG(Tile_X3Y4_NN4BEG[15:0]),
	.Co(Tile_X3Y4_Co[0:0]),
	.UserCLK(UserCLK),
	.UserCLKo(Tile_X3Y4_UserCLKo),
	.OutputEnable(OutputEnable),
	.OutputEnable_O(Tile_X3Y4_OutputEnable_O),
	.FrameStrobe(Tile_X3_FrameStrobe),
	.FrameStrobe_O(Tile_X3Y4_FrameStrobe_O)
	);


endmodule
