module thirty_two_bit_CLA(A, B, op, ovf, result);
	input [31:0] A, B;
	input op;
	output [31:0] result;
	output ovf;
	wire [31:0] w1, w2;

	wire w3, w4, w5, w6, w7, Co, w8, w9, w10, w11, w12, w13;

	thirty_two_bit_not gate(B, w1);

	mux_2_32 sub(w2, B, w1, op);
	mux_2 opp(w3, 1'b1, 1'b0, op);


	eight_bit_CLA first(A[7:0], w2[7:0], w3, w4, result[7:0]);
	eight_bit_CLA second(A[15:8], w2[15:8], w4, w5, result[15:8]);
	eight_bit_CLA third(A[23:16], w2[23:16], w5, w6, result[23:16]);
	eight_bit_CLA fourth(A[31:24], w2[31:24], w6, Co, result[31:24]);

	not notop(w12, op);
	not notR(w13, result[31]);
	not notA(w14, A[31]);
	not notB(w15, B[31]);

	and and1(w8, w14, w15, w12, result[31]);
	and and2(w9, result[31], w14, B[31], result[31]);
	and and3(w10, A[31], w15, op, w13);
	and and4(w11, A[31], B[31], w12, w13);

	or ovflow(ovf, w8, w9, w10, w11);




	endmodule