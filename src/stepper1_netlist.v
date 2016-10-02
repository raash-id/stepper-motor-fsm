module stepper1_netlist ( clk, control, reset, warnbit, curr_state );
	input [1:0] control;
	output [3:0] curr_state;
	input clk, reset;
	output warnbit;
	wire   N31, N46, N47, N48, N49, n12, n36, n37, n38, n39, n40, n41, n42, n43,
		 n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
		 n58, n59, n60, n61, n62;

	EDFQD1 warnbit_reg ( .D(N31), .E(n12), .CP(clk), .Q(warnbit) );
	DFQD1 \curr_state_reg[0]  ( .D(N46), .CP(clk), .Q(curr_state[0]) );
	DFQD1 \curr_state_reg[1]  ( .D(N47), .CP(clk), .Q(curr_state[1]) );
	DFQD1 \curr_state_reg[2]  ( .D(N48), .CP(clk), .Q(curr_state[2]) );
	DFQD1 \curr_state_reg[3]  ( .D(N49), .CP(clk), .Q(curr_state[3]) );
	CKND0 U43 ( .I(reset), .ZN(n12) );
	AOI211D0 U44 ( .A1(n36), .A2(n37), .B(reset), .C(curr_state[2]), .ZN(N49) );
	IND3D0 U45 ( .A1(n38), .B1(curr_state[3]), .B2(n39), .ZN(n37) );
	CKND0 U46 ( .I(n40), .ZN(n39) );
	OA33D0 U47 ( .A1(n41), .A2(curr_state[1]), .A3(n42), .B1(n43), .B2(
		curr_state[0]), .B3(n44), .Z(n36) );
	OAI221D0 U48 ( .A1(n45), .A2(n38), .B1(n46), .B2(n44), .C(n47), .ZN(N48) );
	NR2D0 U49 ( .A1(reset), .A2(n48), .ZN(n47) );
	AOI21D0 U50 ( .A1(n49), .A2(n50), .B(n42), .ZN(n48) );
	CKND0 U51 ( .I(n41), .ZN(n50) );
	AOI211D0 U52 ( .A1(n43), .A2(n51), .B(curr_state[2]), .C(n40), .ZN(n45) );
	NR2D0 U53 ( .A1(reset), .A2(n52), .ZN(N47) );
	AOI32D0 U54 ( .A1(n53), .A2(n54), .A3(n41), .B1(n55), .B2(n51), .ZN(n52) );
	OAI33D0 U55 ( .A1(n38), .A2(n56), .A3(n57), .B1(n42), .B2(curr_state[2]), 
		.B3(n43), .ZN(n55) );
	NR2D0 U56 ( .A1(curr_state[0]), .A2(curr_state[3]), .ZN(n41) );
	OAI221D0 U57 ( .A1(n58), .A2(n38), .B1(n46), .B2(n42), .C(n59), .ZN(N46) );
	NR2D0 U58 ( .A1(reset), .A2(n60), .ZN(n59) );
	AOI21D0 U59 ( .A1(n49), .A2(n54), .B(n44), .ZN(n60) );
	CKND2D0 U60 ( .A1(n61), .A2(n57), .ZN(n54) );
	INR2D0 U61 ( .A1(n49), .B1(n43), .ZN(n46) );
	NR2D0 U62 ( .A1(n56), .A2(n40), .ZN(n49) );
	NR2D0 U63 ( .A1(n57), .A2(n51), .ZN(n40) );
	CKND0 U64 ( .I(curr_state[0]), .ZN(n51) );
	CKND0 U65 ( .I(curr_state[1]), .ZN(n57) );
	CKND2D0 U66 ( .A1(n42), .A2(n44), .ZN(n38) );
	CKND0 U67 ( .I(n53), .ZN(n44) );
	NR2D0 U68 ( .A1(n62), .A2(control[1]), .ZN(n53) );
	CKND2D0 U69 ( .A1(control[1]), .A2(n62), .ZN(n42) );
	CKND0 U70 ( .I(control[0]), .ZN(n62) );
	AOI211D0 U71 ( .A1(n43), .A2(n61), .B(curr_state[0]), .C(n56), .ZN(n58) );
	INR2D0 U72 ( .A1(curr_state[3]), .B1(n61), .ZN(n56) );
	CKND0 U73 ( .I(curr_state[2]), .ZN(n61) );
	NR2D0 U74 ( .A1(curr_state[1]), .A2(curr_state[3]), .ZN(n43) );
	AN2D0 U75 ( .A1(control[1]), .A2(control[0]), .Z(N31) );
endmodule
