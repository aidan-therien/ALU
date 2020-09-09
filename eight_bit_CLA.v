module eight_bit_CLA(A, B, C, Co, result);
	input [7:0] A, B;
	input C;
	output [7:0] result;
	output Co, P, G;
	wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59;

	or p0(w0, A[0], B[0]);
	and g0(w1, A[0], B[0]);
	and p0C(w2, w0, C);
	xor S0(result[0], A[0], B[0], C);
	or C1(w3, w1, w2);

	and g1(w4, A[1], B[1]);
	or p1(w6, A[1], B[1]);
	and p1g0(w7, w6, w1);
	and p1p0Cin(w8, w6, C, w0);
	or C2(w9, w8, w7, w4);
	xor S1(result[1], A[1], B[1], w3);

	and g2(w10, A[2], B[2]);
	or p2(w11, A[2], B[2]);
	and p2g1(w12, w11, w4);
	and p2p1g0(w13, w11, w6, w1);
	and p2p1p0Cin(w14, w11, w6, w0, C);
	or C3(w15, w10, w12, w13, w14);
	xor S2(result[2], A[2], B[2], w9);

	and g3(w16, A[3], B[3]);
	or p3(w17, A[3], B[3]);
	and p3g2(w18, w17, w10);
	and p3p2g1(w19, w17, w11, w4);
	and p3p2p1p0g0(w20, w17, w11, w6, w0, w1);
	and p3p2p1p0Cin(w21, w17, w11, w6, w0, C);
	or C4(w22, w16, w18, w19, w20, w21);
	xor S3(result[3], A[3], B[3], w15);

	and g4(w23, A[4], B[4]);
	or p4(w24, A[4], B[4]);
	and p4g3(w25, w24, w16);
	and p4p3g2(w26, w24, w17, w10);
	and p4p3p2g1(w27, w24, w17, w11, w4);
	and p4p3p2p1g0(w28, w24, w17, w11, w6, w1);
	and p4p3p2p1p0Cin(w29, w24, w17, w11, w6, w0, C);
	or C5(w30, w23, w25, w26, w27, w28, w29);
	xor S4(result[4], A[4], B[4], w22);

	and g5(w31, A[5], B[5]);
	or p5(w32, A[5], B[5]);
	and p5g4(w33, w32, w23);
	and p5p4g3(w34, w32, w24, w16);
	and p5p4p3g2(w35, w32, w24, w17, w10);
	and p5p4p3p2g1(w36, w32, w24, w17, w11, w4);
	and p5p4p3p2p1g0(w37, w32, w24, w17, w11, w6, w1);
	and p5p4p3p2p1p0Cin(w38, w32, w24, w17, w11, w6, w0, C);
	or C6(w39, w31, w33, w34, w35, w36, w37, w38);
	xor S5(result[5], A[5], B[5], w30);

	and g6(w40, A[6], B[6]);
	or p6(w41, A[6], B[6]);
	and p6g5(w42, w41, w31);
	and p6p5g4(w43, w41, w32, w23);
	and p6p5p4g3(w44, w41, w32, w24, w16);
	and p6p5p4p3g2(w45, w41, w32, w24, w17, w10);
	and p6p5p4p3p2g1(w46, w41, w32, w24, w17, w11, w4);
	and p6p5p4p3p2p1g0(w47, w41, w32, w24, w17, w11, w6, w1);
	and p6p5p4p3p2p1p0Cin(w48, w41, w32, w24, w17, w11, w6, w0, C);
	or C7(w49, w40, w42, w43, w44, w45, w46, w47, w48);
	xor S6(result[6], A[6], B[6], w39);

	and g7(w50, A[7], B[7]);
	or p7(w51, A[7], B[7]);
	and p7g6(w52, w51, w40);
	and p7p6g5(w53, w51, w41, w31);
	and p7p6p5g4(w54, w51, w41, w32, w23);
	and p7p6p5p4g3(w55, w51, w41, w32, w24, w16);
	and p7p6p5p4p3g2(w56, w51, w41, w32, w24, w17, w10);
	and p7p6p5p4p3p2g1(w57, w51, w41, w32, w24, w17, w11, w4);
	and p7p6p5p4p3p2p1g0(w58, w51, w41, w32, w24, w17, w11, w6, w1);
	and p7p6p5p4p3p2p1p0Cin(w59, w51, w41, w32, w24, w17, w11, w6, w0, C);
	or Co(Co, w50, w52, w53, w54, w55, w56, w57, w58, w59);
	xor S7(result[7], A[7], B[7], w49);


endmodule