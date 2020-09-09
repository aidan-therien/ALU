module full_shifter(A, d, amt, result);
	input [31:0] A;
	input d;
	input [4:0] amt;
	output [31:0] result;

	wire [31:0] w1, w2, w3, w4, w5, w6, w7, w8, w9;

	sixteen_bit_shifter first(A, d, w1);
	mux_2_32 ffirst(w2, A, w1, amt[4]);

	eight_bit_shifter second(w2, d, w3);
	mux_2_32 ssecond(w4, w2, w3, amt[3]);

	four_bit_shifter third(w4, d, w5);
	mux_2_32 tthird(w6, w4, w5, amt[2]);

	two_bit_shifter fourth(w6, d, w7);
	mux_2_32 ffourth(w8, w6, w7, amt[1]);

	one_bit_shifter fifth(w8, d, w9);
	mux_2_32 ffifth(result, w8, w9, amt[0]);
	
	
	

endmodule