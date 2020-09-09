module sixteen_bit_shifter(A, d, result);
	
	input [31:0] A;
	input d;
	output[31:0] result;
	wire [31:0] B, C;

	assign B[31] = A[31];
	assign B[30] = A[31];
	assign B[29] = A[31];
	assign B[28] = A[31]; 
	assign B[27] = A[31];
	assign B[26] = A[31]; 
	assign B[25] = A[31];
	assign B[24] = A[31]; 
	assign B[23] = A[31];
	assign B[22] = A[31]; 
	assign B[21] = A[31];
	assign B[20] = A[31]; 
	assign B[19] = A[31];
	assign B[18] = A[31]; 
	assign B[17] = A[31];
	assign B[16] = A[31]; 
	assign B[15] = A[31];
	assign B[14] = A[29]; 
	assign B[13] = A[28];
	assign B[12] = A[27]; 
	assign B[11] = A[26];
	assign B[10] = A[25]; 
	assign B[9] = A[24];
	assign B[8] = A[23]; 
	assign B[7] = A[22];
	assign B[6] = A[21]; 
	assign B[5] = A[20];
	assign B[4] = A[19];
	assign B[3] = A[18];
	assign B[2] = A[17]; 
	assign B[1] = A[16];
	assign B[0] = A[15]; 

	assign C[31] = A[15];
	assign C[30] = A[14];
	assign C[29] = A[13];
	assign C[28] = A[12]; 
	assign C[27] = A[11];
	assign C[26] = A[10]; 
	assign C[25] = A[9];
	assign C[24] = A[8]; 
	assign C[23] = A[7];
	assign C[22] = A[6]; 
	assign C[21] = A[5];
	assign C[20] = A[4]; 
	assign C[19] = A[3];
	assign C[18] = A[2]; 
	assign C[17] = A[1];
	assign C[16] = A[0]; 
	assign C[15] = 1'b0;
	assign C[14] = 1'b0; 
	assign C[13] = 1'b0;
	assign C[12] = 1'b0; 
	assign C[11] = 1'b0;
	assign C[10] = 1'b0; 
	assign C[9] = 1'b0;
	assign C[8] = 1'b0; 
	assign C[7] = 1'b0;
	assign C[6] = 1'b0; 
	assign C[5] = 1'b0;
	assign C[4] = 1'b0;
	assign C[3] = 1'b0;
	assign C[2] = 1'b0; 
	assign C[1] = 1'b0;
	assign C[0] = 1'b0; 

	mux_2_32 name(result, C, B, d);


endmodule