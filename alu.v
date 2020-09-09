module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);
        
    input [31:0] data_operandA, data_operandB;
    input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

    output [31:0] data_result;
    output isNotEqual, isLessThan, overflow;

    wire [31:0] w1, w2, w3, w4, w5;

    wire w10, w11, w12;


    mux_8 out(data_result, ctrl_ALUopcode[2:0], w1, w1, w3, w4, w2, w2, w1, w1);

    thirty_two_bit_CLA adder(data_operandA, data_operandB, ctrl_ALUopcode[0], overflow, w1);

    full_shifter shift(data_operandA, ctrl_ALUopcode[0], ctrl_shiftamt, w2);

    thirty_two_bit_and and1(data_operandA, data_operandB, w3);

    thirty_two_bit_or or1(data_operandA, data_operandB, w4);

    thirty_two_bit_not not1(w1, w5);

    nand isEqual(isNotEqual, w5[0], w5[1], w5[2], w5[3], w5[4], w5[5], w5[6], w5[7], w5[8], w5[9], w5[10], w5[11], w5[12], w5[13], w5[14], w5[15], w5[16], w5[17], w5[18], w5[19], w5[20], w5[21], w5[22], w5[23], w5[24], w5[25], w5[26], w5[27], w5[28], w5[29], w5[30], w5[31]);

    not notB(w10, data_operandB[31]);
    and LTand1(w11, data_operandA[31], w10);

    not notA(w12, data_operandA[31]);
    and LTand2(w13, w12, w10, data_result[31]);

    and LTand3(w14, w11, data_operandB[31]);

    or minterms(isLessThan, w14, w13, w11);



endmodule