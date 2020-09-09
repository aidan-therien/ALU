// Define 1 ns as the delay time unit and 100 ps of precision in the waveform
`timescale 1 ns / 100 ps
module eight_bit_CLA_tb;
	////// Module Instantiation //////
	// inputs to the module (reg)
	reg[7:0] data_operandA, data_operandB;
	reg C;
	// outputs of the module (reg)
    wire[7:0] result;
    wire Co;
	// Instantiate the module to test
    eight_bit_CLA or1(data_operandA, data_operandB,C, Co, result);

	////// Input Initialization //////
	// Initialize the inputs and specify the runtime
	initial begin
		// Initialize the inputs to 0
			assign data_operandA[0] = 0;
			assign data_operandA[1] = 0;
			assign data_operandA[2] = 1;
			assign data_operandA[3] = 0;
			assign data_operandA[4] = 1;
			assign data_operandA[5] = 1;
			assign data_operandA[6] = 1;
			assign data_operandA[7] = 0;
			assign data_operandB[0] = 0;
			assign data_operandB[1] = 1;
			assign data_operandB[2] = 1;
			assign data_operandB[3] = 1;
			assign data_operandB[4] = 1;
			assign data_operandB[5] = 1;
			assign data_operandB[6] = 1;
			assign data_operandB[7] = 0;

			assign C = 0;


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
		$display("data_operandA:%b, data_operandB:%b => result:%b, Co:%b", data_operandA, data_operandB, result, Co);
	end

	// Define output waveform properties
	initial begin
		// Module to capture and what level, 0 means all wires
		$dumpvars(0, eight_bit_CLA_tb);
	end
endmodule