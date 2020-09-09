module thirty_two_bit_not(A, result);
	input [31:0] A;
	output [31:0] result;

	not not1(result[0], A[0]);
	not not2(result[1], A[1]);
	not not3(result[2], A[2]);
	not not4(result[3], A[3]);
	not not5(result[4], A[4]);
	not not6(result[5], A[5]);
	not not7(result[6], A[6]);
	not not8(result[7], A[7]);
	not not9(result[8], A[8]);
	not not10(result[9], A[9]);
	not not11(result[10], A[10]);
	not not12(result[11], A[11]);
	not not13(result[12], A[12]);
	not not14(result[13], A[13]);
	not not15(result[14], A[14]);
	not not16(result[15], A[15]);
	not not17(result[16], A[16]);
	not not18(result[17], A[17]);
	not not19(result[18], A[18]);
	not not20(result[19], A[19]);
	not not21(result[20], A[20]);
	not not22(result[21], A[21]);
	not not23(result[22], A[22]);
	not not24(result[23], A[23]);
	not not25(result[24], A[24]);
	not not26(result[25], A[25]);
	not not27(result[26], A[26]);
	not not28(result[27], A[27]);
	not not29(result[28], A[28]);
	not not30(result[29], A[29]);
	not not31(result[30], A[30]);
	not not32(result[31], A[31]);

	endmodule
