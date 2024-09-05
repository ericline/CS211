input [3:0] numeral_bit;

output a;
output b;
output c;
output d;
output e;
output f;
output g;

wire not_numeral_bit_3;
wire not_numeral_bit_2;
wire not_numeral_bit_1;
wire not_numeral_bit_0;

wire not_0_but_1;
wire 1_and_2;
wire not_3_and_not_0;
wire not_2_but_3;
wire not_3_and_not_2;
wire not_1_and_not_0;
wire 0_and_not_1;
wire 2_and_not_3;
wire 1_and_0;

wire 00;
wire 01;
wire 02;
wire 03;
wire 04;
wire 05;
wire 06;
wire 07;
wire 08;
wire 09;

wire a_part1;
wire a_part2;
wire a_part3;
wire a_part4;
wire a_part5;
wire a_part6;

wire b_part1;
wire b_part2;
wire b_part3;
wire b_part4;
wire b_part5;
wire b_part6;

wire c_part1;
wire c_part2;
wire c_part3;
wire c_part4;
wire c_part5;
wire c_part6;
wire c_part7;

wire d_part1;
wire d_part2;
wire d_part3;
wire d_part4;
wire d_part5;

wire e_part1;
wire e_part2;
wire e_part3;
wire e_part4;

wire f_part1;
wire f_part2;
wire f_part3;
wire f_part4;

wire g_part1;
wire g_part2;
wire g_part3;
wire g_part4;
wire g_part5;
wire g_part6;

assign not_numeral_bit_3 = ~ numeral_bit[3];
assign not_numeral_bit_2 = ~ numeral_bit[2];
assign not_numeral_bit_1 = ~ numeral_bit[1];
assign not_numeral_bit_0 = ~ numeral_bit[0];

assign not_3_and_not_2 = not_numeral_bit_3 & not_numeral_bit_2;     // 00xx
assign not_1_and_not_0 = not_numeral_bit_1 & not_numeral_bit_0;     // xx00
assign not_0_but_1 = not_numeral_bit_0 & numeral_bit[1];            // xx10
assign 0_and_not_1 = numeral_bit[0] & not_numeral_bit_1;            // xx01
assign 1_and_2 = numeral_bit[1] & numeral_bit[2];                   // x11x
assign not_3_and_not_0 = not_numeral_bit_0 & not_numeral_bit_3;     // 0xx0
assign not_2_but_3 = not_numeral_bit_2 & numeral_bit[3];            // 10xx
assign 2_and_not_3 = numeral_bit[2] & not_numeral_bit_3;            // 01xx
assign 1_and_0 = numeral_bit[1] & numeral_bit[0];                   // xx11

assign 00 = not_1_and_not_0 & not_3_and_not_2;
assign 01 = 0_and_not_1 & not_3_and_not_2;
assign 02 = not_3_and_not_2 & not_0_but_1;
assign 03 = not_3_and_not_2 & 1_and_0;
assign 04 = 2_and_not_3 & not_1_and_not_0;
assign 05 = 2_and_not_3 & 0_and_not_1;
assign 06 = not_3_and_not_0 & 1_and_2;
assign 07 = 2_and_not_3 & 1_and_0;
assign 08 = not_2_but_3 & not_1_and_not_0;
assign 09 = not_2_but_3 & 0_and_not_1;

assign a_part1 = 00 | 03;
assign a_part2 = a_part1 | 05;
assign a_part3 = a_part2 | 07;
assign a_part4 = a_part3 | 06;
assign a_part5 = a_part4 | 08;
assign a_part6 = a_part5 | 02
assign a = a_part6 | 09;

assign b_part1 = 00 | 01;
assign b_part2 = b_part1 | 02;
assign b_part3 = b_part2 | 03;
assign b_part4 = b_part3 | 04;
assign b_part5 = b_part4 | 07;
assign b_part6 = b_part5 | 08;
assign b = b_part6 | 09;

assign c_part1 = 00 | 01;
assign c_part2 = c_part1 | 03;
assign c_part3 = c_part2 | 05;
assign c_part4 = c_part3 | 06;
assign c_part5 = c_part4 | 07;
assign c_part6 = c_part5 | 08;
assign c_part7 = c_part6 | 09
assign c = c_part7 | 04;

assign d_part1 = 00 | 02;
assign d_part2 = d_part1 | 03;
assign d_part3 = d_part2 | 06;
assign d_part4 = d_part3 | 05;
assign d_part5 = d_part4 | 08
assign d = d_part5 | 09;

assign e_part1 = 00 | 02;
assign e_part2 = e_part1 | 06;
assign e_part3 = e_part2 | 08;
assign e = e_part3;

assign f_part1 = 00 | 05;
assign f_part2 = f_part1 | 08;
assign f_part3 = f_part2 | 09;
assign f_part4 = f_part3 | 04;
assign f = f_part4 | 06;

assign g_part1 = 02 | 03;
assign g_part2 = g_part1 | 05;
assign g_part3 = g_part2 | 06;
assign g_part4 = g_part3 | 04;
assign g_part5 = g_part4 | 08;
assign g = g_part5 | 09;