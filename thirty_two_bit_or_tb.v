// Define 1 ns as the delay time unit and 100 ps of precision in the waveform
`timescale 1 ns / 100 ps
module thirty_two_bit_or_tb;
	////// Module Instantiation //////
	// inputs to the module (reg)
	reg[31:0] data_operandA, data_operandB;
	// outputs of the module (reg)
    wire[31:0] result;
	// Instantiate the module to test
    thirty_two_bit_or or1(data_operandA, data_operandB, result);

	////// Input Initialization //////
	// Initialize the inputs and specify the runtime
	initial begin
		// Initialize the inputs to 0
			assign data_operandA[0] = 0;
			assign data_operandA[1] = 0;
			assign data_operandA[2] = 0;
			assign data_operandA[3] = 1;
			assign data_operandB[0] = 0;
			assign data_operandB[1] = 0;
			assign data_operandB[2] = 1;
			assign data_operandB[3] = 1;


		// Set a time delay, in nanoseconds
		#640;
		// Ends the testbench
		$finish;
	end
	// Print the inputs and outputs whenever inputs change

	////// Output Results //////
	always @(data_operandA, data_operandB, result) begin
		// Small Delay so outputs can stabilize
		#1;
		$display("data_operandA:%b, data_operandB:%b => result:%b", data_operandA, data_operandB, result);
	end

	// Define output waveform properties
	initial begin
		// Output file name
		$dumpfile("thirty_two_bit_or_wf.vcd");
		// Module to capture and what level, 0 means all wires
		$dumpvars(0, thirty_two_bit_or_tb);
	end
endmodule