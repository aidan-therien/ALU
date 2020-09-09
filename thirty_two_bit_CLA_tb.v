// Define 1 ns as the delay time unit and 100 ps of precision in the waveform
`timescale 1 ns / 100 ps
module thirty_two_bit_CLA_tb;
	////// Module Instantiation //////
	// inputs to the module (reg)
	reg[31:0] A, B;
	reg op;
	// outputs of the module (reg)
	wire ovf;
    wire[31:0] result;
	// Instantiate the module to test
    thirty_two_bit_CLA or1(A, B, op, ovf, result);

	////// Input Initialization //////
	// Initialize the inputs and specify the runtime
	initial begin
		// Initialize the inputs to 0
			assign A[0] = 0;
			assign A[1] = 0;
			assign A[2] = 0;
			assign A[3] = 0;
			assign A[4] = 0;
			assign A[5] = 0;
			assign A[6] = 0;
			assign A[7] = 0;
			assign A[8] = 0;
			assign A[9] = 0;
			assign A[10] = 0;
			assign A[11] = 0;
			assign A[12] = 0;
			assign A[13] = 0;
			assign A[14] = 0;
			assign A[15] = 0;
			assign A[16] = 0;
			assign A[17] = 0;
			assign A[18] = 0;
			assign A[19] = 0;
			assign A[20] = 0;
			assign A[21] = 0;
			assign A[22] = 0;
			assign A[23] = 0;
			assign A[24] = 0;
			assign A[25] = 0;
			assign A[26] = 0;
			assign A[27] = 0;
			assign A[28] = 0;
			assign A[29] = 0;
			assign A[30] = 0;
			assign A[31] = 0;

			assign op = 1'b1;

			assign B[0] = 1;
			assign B[1] = 0;
			assign B[2] = 0;
			assign B[3] = 0;
			assign B[4] = 0;
			assign B[5] = 0;
			assign B[6] = 0;
			assign B[7] = 0;
			assign B[8] = 0;
			assign B[9] = 0;
			assign B[10] = 0;
			assign B[11] = 0;
			assign B[12] = 0;
			assign B[13] = 0;
			assign B[14] = 0;
			assign B[15] = 0;
			assign B[16] = 0;
			assign B[17] = 0;
			assign B[18] = 0;
			assign B[19] = 0;
			assign B[20] = 0;
			assign B[21] = 0;
			assign B[22] = 0;
			assign B[23] = 0;
			assign B[24] = 0;
			assign B[25] = 0;
			assign B[26] = 0;
			assign B[27] = 0;
			assign B[28] = 0;
			assign B[29] = 0;
			assign B[30] = 0;
			assign B[31] = 0;


		// Set a time delay, in nanoseconds
		#640;
		// Ends the testbench
		$finish;
	end
	// Print the inputs and outputs whenever inputs change

	////// Output Results //////
	always @(A, B, op, ovf, result) begin
		// Small Delay so outputs can stabilize
		#1;
		$display("A:%b, B:%b, op:%b => result:%b, ovf:%b", A, B, op, result, ovf);
	end

	// Define output waveform properties
	initial begin
		// Module to capture and what level, 0 means all wires
		$dumpvars(0, thirty_two_bit_CLA_tb);
	end
endmodule