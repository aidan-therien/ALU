module eight_bit_CLA_2(A, B, C, Co, result);
	input [7:0] A, B;
	input C;
	output [7:0] result;
	output Co;
	wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42;

	or p0(w1, A[0], B[0]);
	and g0(w2, A[0], B[0]);
	and p0C(w3, w1, C);
	xor t(w0, A[0], B[0], C);
	and extra(w39, A[0], B[0], C);
	or S0(result[0], w0, w39);
	or C1(w4, w3, w2);

	or p1(w5, A[1], B[1]);
	and g1(w6, A[1], B[1]);
	and p1p0g0(w7, w5, w1, C);
	and p1g0(w8, w5, w2);
	xor S1(result[1], A[1], B[1], w4);
	or C2(w9, w6, w8, w7);

	or p2(w10, A[2], B[2]);
	and g2(w11, A[2], B[2]);
	and p2g1(w12, w10, w6);
	and p2p1C1(w13, w9, w10, w5);
	xor S2(result[2], A[2], B[2], w9);
	or C3(w14, w13, w12, w11);

	or p3(w15, A[3], A[3]);
	and g3(w16, A[3], B[3]);
	and p3g2(w17, w11, w15);
	and p3p2C2(w18, w15, w10, w9);
	xor S3(result[3], A[3], B[3], w14);
	or C4(w19, w18, w17, w16);

	or p4(w20, A[4], B[4]);
	and g4(w21, A[4], B[4]);
	and p4g3(w22, w20, w16);
	and p4p3C3(w23, w20, w15, w14);
	xor S4(result[4], A[4], B[4], w19);
	or C5(w24, w23, w22, w21);

	or p5(w25, A[5], B[5]);
	and g5(w26, A[5], B[5]);
	and p5g4(w27, w25, w21);
	and p5p4C4(w28, w19, w25, w20);
	xor S5(result[5], A[5], B[5], w24);
	or C6(w29, w28, w27, w26);

	or p6(w30, A[6], B[6]);
	and g6(w31, A[6], B[6]);
	and p6g5(w32, w30, w26);
	and p6p5C5(w33, w24, w30, w25);
	xor S6(result[6], A[6], B[6], w29);
	or C7(w34, w33, w32, w31);

	or p7(w35, A[7], B[7]);
	and g7(w36, A[7], B[7]);
	and p7g6(w37, w35, w31);
	and p7p6C6(w38, w29, w35, w30);
	xor S7(result[7], A[7], B[7], w34);
	not n1(w40, A[7]);
	not n12(w41, B[7]);
	and mem(w42, w41, w40, w31);
	or Co(w43, w38, w37, w36, w42);
	xor Coo(Co, w43, w34);
endmodule