// Define 1 ns as the delay time unit and 100 ps of precision in the waveform
`timescale 1 ns / 100 ps
module full_shifter_tb;
	////// Module Instantiation //////
	// inputs to the module (reg)
	reg[31:0] A;
	reg d;
	reg [4:0] amt;
	// outputs of the module (reg)
    wire[31:0] result;
	// Instantiate the module to test
    full_shifter or1(A, d, amt, result);

	////// Input Initialization //////
	// Initialize the inputs and specify the runtime
	initial begin
		// Initialize the inputs to 0
			assign A[0] = 0;
			assign A[1] = 0;
			assign A[2] = 0;
			assign A[3] = 1;
			assign A[4] = 0;
			assign A[5] = 1;
			assign A[6] = 0;
			assign A[7] = 1;
			assign A[8] = 1;
			assign A[9] = 1;
			assign A[10] = 1;
			assign A[11] = 0;
			assign A[12] = 1;
			assign A[13] = 1;
			assign A[14] = 0;
			assign A[15] = 1;
			assign A[16] = 0;
			assign A[17] = 1;
			assign A[18] = 1;
			assign A[19] = 0;
			assign A[20] = 0;
			assign A[21] = 1;
			assign A[22] = 1;
			assign A[23] = 0;
			assign A[24] = 0;
			assign A[25] = 1;
			assign A[26] = 1;
			assign A[27] = 0;
			assign A[28] = 1;
			assign A[29] = 0;
			assign A[30] = 0;
			assign A[31] = 1;

			assign d = 1;

			assign amt[0] = 1;
			assign amt[1] = 1;
			assign amt[2] = 1;
			assign amt[3] = 0;
			assign amt[4] = 0;


		// Set a time delay, in nanoseconds
		#640;
		// Ends the testbench
		$finish;
	end
	// Print the inputs and outputs whenever inputs change

	////// Output Results //////
	always @(A, d, amt, result) begin
		// Small Delay so outputs can stabilize
		#1;
		$display("A:%b, amt:%b, d:%b => result:%b", A, amt, d, result);
	end

	// Define output waveform properties
	initial begin
		// Module to capture and what level, 0 means all wires
		$dumpvars(0, full_shifter_tb);
	end
endmodule