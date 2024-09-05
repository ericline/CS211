input [2:0]  read_address;

input        set_0_line_0_valid;
input        set_0_line_0_tag;
input [15:0] set_0_line_0_block;

input        set_0_line_1_valid;
input        set_0_line_1_tag;
input [15:0] set_0_line_1_block;

input        set_1_line_0_valid;
input        set_1_line_0_tag;
input [15:0] set_1_line_0_block;

input        set_1_line_1_valid;
input        set_1_line_1_tag;
input [15:0] set_1_line_1_block;

output       read_hit;
output [7:0] read_byte;

wire set_0_select;
wire set_1_select;

wire line_0_valid;
wire line_1_valid;

wire line_0_tag;
wire line_1_tag;

wire set_0_line_0_valid_select;
wire set_0_line_1_valid_select;
wire set_1_line_0_valid_select;
wire set_1_line_1_valid_select;

wire set_0_line_0_tag_select;
wire set_0_line_1_tag_select;
wire set_1_line_0_tag_select;
wire set_1_line_1_tag_select;

wire set_0_line_0_block_15_select;
wire set_0_line_0_block_14_select;
wire set_0_line_0_block_13_select;
wire set_0_line_0_block_12_select;
wire set_0_line_0_block_11_select;
wire set_0_line_0_block_10_select;
wire set_0_line_0_block_09_select;
wire set_0_line_0_block_08_select;
wire set_0_line_0_block_07_select;
wire set_0_line_0_block_06_select;
wire set_0_line_0_block_05_select;
wire set_0_line_0_block_04_select;
wire set_0_line_0_block_03_select;
wire set_0_line_0_block_02_select;
wire set_0_line_0_block_01_select;
wire set_0_line_0_block_00_select;

wire set_0_line_1_block_15_select;
wire set_0_line_1_block_14_select;
wire set_0_line_1_block_13_select;
wire set_0_line_1_block_12_select;
wire set_0_line_1_block_11_select;
wire set_0_line_1_block_10_select;
wire set_0_line_1_block_09_select;
wire set_0_line_1_block_08_select;
wire set_0_line_1_block_07_select;
wire set_0_line_1_block_06_select;
wire set_0_line_1_block_05_select;
wire set_0_line_1_block_04_select;
wire set_0_line_1_block_03_select;
wire set_0_line_1_block_02_select;
wire set_0_line_1_block_01_select;
wire set_0_line_1_block_00_select;

wire set_1_line_0_block_15_select;
wire set_1_line_0_block_14_select;
wire set_1_line_0_block_13_select;
wire set_1_line_0_block_12_select;
wire set_1_line_0_block_11_select;
wire set_1_line_0_block_10_select;
wire set_1_line_0_block_09_select;
wire set_1_line_0_block_08_select;
wire set_1_line_0_block_07_select;
wire set_1_line_0_block_06_select;
wire set_1_line_0_block_05_select;
wire set_1_line_0_block_04_select;
wire set_1_line_0_block_03_select;
wire set_1_line_0_block_02_select;
wire set_1_line_0_block_01_select;
wire set_1_line_0_block_00_select;

wire set_1_line_1_block_15_select;
wire set_1_line_1_block_14_select;
wire set_1_line_1_block_13_select;
wire set_1_line_1_block_12_select;
wire set_1_line_1_block_11_select;
wire set_1_line_1_block_10_select;
wire set_1_line_1_block_09_select;
wire set_1_line_1_block_08_select;
wire set_1_line_1_block_07_select;
wire set_1_line_1_block_06_select;
wire set_1_line_1_block_05_select;
wire set_1_line_1_block_04_select;
wire set_1_line_1_block_03_select;
wire set_1_line_1_block_02_select;
wire set_1_line_1_block_01_select;
wire set_1_line_1_block_00_select;

wire line_0_block_15;
wire line_0_block_14;
wire line_0_block_13;
wire line_0_block_12;
wire line_0_block_11;
wire line_0_block_10;
wire line_0_block_09;
wire line_0_block_08;
wire line_0_block_07;
wire line_0_block_06;
wire line_0_block_05;
wire line_0_block_04;
wire line_0_block_03;
wire line_0_block_02;
wire line_0_block_01;
wire line_0_block_00;

wire line_1_block_15;
wire line_1_block_14;
wire line_1_block_13;
wire line_1_block_12;
wire line_1_block_11;
wire line_1_block_10;
wire line_1_block_09;
wire line_1_block_08;
wire line_1_block_07;
wire line_1_block_06;
wire line_1_block_05;
wire line_1_block_04;
wire line_1_block_03;
wire line_1_block_02;
wire line_1_block_01;
wire line_1_block_00;

wire line_0_match;
wire line_1_match;

wire line_0_valid_match;
wire line_1_valid_match;

wire line_0_block_15_match;
wire line_0_block_14_match;
wire line_0_block_13_match;
wire line_0_block_12_match;
wire line_0_block_11_match;
wire line_0_block_10_match;
wire line_0_block_09_match;
wire line_0_block_08_match;
wire line_0_block_07_match;
wire line_0_block_06_match;
wire line_0_block_05_match;
wire line_0_block_04_match;
wire line_0_block_03_match;
wire line_0_block_02_match;
wire line_0_block_01_match;
wire line_0_block_00_match;

wire line_1_block_15_match;
wire line_1_block_14_match;
wire line_1_block_13_match;
wire line_1_block_12_match;
wire line_1_block_11_match;
wire line_1_block_10_match;
wire line_1_block_09_match;
wire line_1_block_08_match;
wire line_1_block_07_match;
wire line_1_block_06_match;
wire line_1_block_05_match;
wire line_1_block_04_match;
wire line_1_block_03_match;
wire line_1_block_02_match;
wire line_1_block_01_match;
wire line_1_block_00_match;

wire block_15;
wire block_14;
wire block_13;
wire block_12;
wire block_11;
wire block_10;
wire block_09;
wire block_08;
wire block_07;
wire block_06;
wire block_05;
wire block_04;
wire block_03;
wire block_02;
wire block_01;
wire block_00;

wire line_0_tag_select;
wire line_1_tag_select;
wire read_hit_01;
wire read_hit_02;
wire indice_0;
wire indice_1;

assign set_0_select = ~ read_address[0];
assign set_1_select =   read_address[0];

assign set_0_line_0_valid_select = set_0_select & set_0_line_0_valid;
assign set_0_line_1_valid_select = set_0_select & set_0_line_1_valid;
assign set_1_line_0_valid_select = set_1_select & set_1_line_0_valid;
assign set_1_line_1_valid_select = set_1_select & set_1_line_1_valid;
assign line_0_valid = set_0_line_0_valid_select | set_1_line_0_valid_select;
assign line_1_valid = set_0_line_1_valid_select | set_1_line_1_valid_select;

assign set_0_line_0_tag_select = set_0_select & set_0_line_0_tag;
assign set_0_line_1_tag_select = set_0_select & set_0_line_1_tag;
assign set_1_line_0_tag_select = set_1_select & set_1_line_0_tag;
assign set_1_line_1_tag_select = set_1_select & set_1_line_1_tag;
assign line_0_tag = set_0_line_0_tag_select | set_1_line_0_tag_select;
assign line_1_tag = set_0_line_1_tag_select | set_1_line_1_tag_select;

assign line_0_match = read_address[1] ~^ line_0_tag;
assign line_1_match = read_address[1] ~^ line_1_tag;

assign indice_0 = ~ read_address[1];
assign indice_1 = read_address[1];

assign line_0_valid_match = line_0_valid & line_0_match;
assign line_1_valid_match = line_1_valid & line_1_match;

assign line_0_valid_match = line_0_valid_match & indice_0;
assign line_1_valid_match = line_1_valid_match & indice_1;

assign read_hit = line_0_valid_match | line_1_valid_match;

assign set_0_line_0_block_15_select = set_0_select & set_0_line_0_block[15];
assign set_0_line_0_block_14_select = set_0_select & set_0_line_0_block[14];
assign set_0_line_0_block_13_select = set_0_select & set_0_line_0_block[13];
assign set_0_line_0_block_12_select = set_0_select & set_0_line_0_block[12];
assign set_0_line_0_block_11_select = set_0_select & set_0_line_0_block[11];
assign set_0_line_0_block_10_select = set_0_select & set_0_line_0_block[10];
assign set_0_line_0_block_09_select = set_0_select & set_0_line_0_block[9];
assign set_0_line_0_block_08_select = set_0_select & set_0_line_0_block[8];
assign set_0_line_0_block_07_select = set_0_select & set_0_line_0_block[7];
assign set_0_line_0_block_06_select = set_0_select & set_0_line_0_block[6];
assign set_0_line_0_block_05_select = set_0_select & set_0_line_0_block[5];
assign set_0_line_0_block_04_select = set_0_select & set_0_line_0_block[4];
assign set_0_line_0_block_03_select = set_0_select & set_0_line_0_block[3];
assign set_0_line_0_block_02_select = set_0_select & set_0_line_0_block[2];
assign set_0_line_0_block_01_select = set_0_select & set_0_line_0_block[1];
assign set_0_line_0_block_00_select = set_0_select & set_0_line_0_block[0];

assign set_0_line_1_block_15_select = set_0_select & set_0_line_1_block[15];
assign set_0_line_1_block_14_select = set_0_select & set_0_line_1_block[14];
assign set_0_line_1_block_13_select = set_0_select & set_0_line_1_block[13];
assign set_0_line_1_block_12_select = set_0_select & set_0_line_1_block[12];
assign set_0_line_1_block_11_select = set_0_select & set_0_line_1_block[11];
assign set_0_line_1_block_10_select = set_0_select & set_0_line_1_block[10];
assign set_0_line_1_block_09_select = set_0_select & set_0_line_1_block[9];
assign set_0_line_1_block_08_select = set_0_select & set_0_line_1_block[8];
assign set_0_line_1_block_07_select = set_0_select & set_0_line_1_block[7];
assign set_0_line_1_block_06_select = set_0_select & set_0_line_1_block[6];
assign set_0_line_1_block_05_select = set_0_select & set_0_line_1_block[5];
assign set_0_line_1_block_04_select = set_0_select & set_0_line_1_block[4];
assign set_0_line_1_block_03_select = set_0_select & set_0_line_1_block[3];
assign set_0_line_1_block_02_select = set_0_select & set_0_line_1_block[2];
assign set_0_line_1_block_01_select = set_0_select & set_0_line_1_block[1];
assign set_0_line_1_block_00_select = set_0_select & set_0_line_1_block[0];

assign set_1_line_0_block_15_select = set_1_select & set_1_line_0_block[15];
assign set_1_line_0_block_14_select = set_1_select & set_1_line_0_block[14];
assign set_1_line_0_block_13_select = set_1_select & set_1_line_0_block[13];
assign set_1_line_0_block_12_select = set_1_select & set_1_line_0_block[12];
assign set_1_line_0_block_11_select = set_1_select & set_1_line_0_block[11];
assign set_1_line_0_block_10_select = set_1_select & set_1_line_0_block[10];
assign set_1_line_0_block_09_select = set_1_select & set_1_line_0_block[9];
assign set_1_line_0_block_08_select = set_1_select & set_1_line_0_block[8];
assign set_1_line_0_block_07_select = set_1_select & set_1_line_0_block[7];
assign set_1_line_0_block_06_select = set_1_select & set_1_line_0_block[6];
assign set_1_line_0_block_05_select = set_1_select & set_1_line_0_block[5];
assign set_1_line_0_block_04_select = set_1_select & set_1_line_0_block[4];
assign set_1_line_0_block_03_select = set_1_select & set_1_line_0_block[3];
assign set_1_line_0_block_02_select = set_1_select & set_1_line_0_block[2];
assign set_1_line_0_block_01_select = set_1_select & set_1_line_0_block[1];
assign set_1_line_0_block_00_select = set_1_select & set_1_line_0_block[0];

assign set_1_line_1_block_15_select = set_1_select & set_1_line_1_block[15];
assign set_1_line_1_block_14_select = set_1_select & set_1_line_1_block[14];
assign set_1_line_1_block_13_select = set_1_select & set_1_line_1_block[13];
assign set_1_line_1_block_12_select = set_1_select & set_1_line_1_block[12];
assign set_1_line_1_block_11_select = set_1_select & set_1_line_1_block[11];
assign set_1_line_1_block_10_select = set_1_select & set_1_line_1_block[10];
assign set_1_line_1_block_09_select = set_1_select & set_1_line_1_block[9];
assign set_1_line_1_block_08_select = set_1_select & set_1_line_1_block[8];
assign set_1_line_1_block_07_select = set_1_select & set_1_line_1_block[7];
assign set_1_line_1_block_06_select = set_1_select & set_1_line_1_block[6];
assign set_1_line_1_block_05_select = set_1_select & set_1_line_1_block[5];
assign set_1_line_1_block_04_select = set_1_select & set_1_line_1_block[4];
assign set_1_line_1_block_03_select = set_1_select & set_1_line_1_block[3];
assign set_1_line_1_block_02_select = set_1_select & set_1_line_1_block[2];
assign set_1_line_1_block_01_select = set_1_select & set_1_line_1_block[1];
assign set_1_line_1_block_00_select = set_1_select & set_1_line_1_block[0];

assign line_0_block_15 = set_0_line_0_block_15_select | set_1_line_0_block_15_select;
assign line_0_block_14 = set_0_line_0_block_14_select | set_1_line_0_block_14_select;
assign line_0_block_13 = set_0_line_0_block_13_select | set_1_line_0_block_13_select;
assign line_0_block_12 = set_0_line_0_block_12_select | set_1_line_0_block_12_select;
assign line_0_block_11 = set_0_line_0_block_11_select | set_1_line_0_block_11_select;
assign line_0_block_10 = set_0_line_0_block_10_select | set_1_line_0_block_10_select;
assign line_0_block_09 = set_0_line_0_block_09_select | set_1_line_0_block_09_select;
assign line_0_block_08 = set_0_line_0_block_08_select | set_1_line_0_block_08_select;
assign line_0_block_07 = set_0_line_0_block_07_select | set_1_line_0_block_07_select;
assign line_0_block_06 = set_0_line_0_block_06_select | set_1_line_0_block_06_select;
assign line_0_block_05 = set_0_line_0_block_05_select | set_1_line_0_block_05_select;
assign line_0_block_04 = set_0_line_0_block_04_select | set_1_line_0_block_04_select;
assign line_0_block_03 = set_0_line_0_block_03_select | set_1_line_0_block_03_select;
assign line_0_block_02 = set_0_line_0_block_02_select | set_1_line_0_block_02_select;
assign line_0_block_01 = set_0_line_0_block_01_select | set_1_line_0_block_01_select;
assign line_0_block_00 = set_0_line_0_block_00_select | set_1_line_0_block_00_select;

assign line_1_block_15 = set_0_line_1_block_15_select | set_1_line_1_block_15_select;
assign line_1_block_14 = set_0_line_1_block_14_select | set_1_line_1_block_14_select;
assign line_1_block_13 = set_0_line_1_block_13_select | set_1_line_1_block_13_select;
assign line_1_block_12 = set_0_line_1_block_12_select | set_1_line_1_block_12_select;
assign line_1_block_11 = set_0_line_1_block_11_select | set_1_line_1_block_11_select;
assign line_1_block_10 = set_0_line_1_block_10_select | set_1_line_1_block_10_select;
assign line_1_block_09 = set_0_line_1_block_09_select | set_1_line_1_block_09_select;
assign line_1_block_08 = set_0_line_1_block_08_select | set_1_line_1_block_08_select;
assign line_1_block_07 = set_0_line_1_block_07_select | set_1_line_1_block_07_select;
assign line_1_block_06 = set_0_line_1_block_06_select | set_1_line_1_block_06_select;
assign line_1_block_05 = set_0_line_1_block_05_select | set_1_line_1_block_05_select;
assign line_1_block_04 = set_0_line_1_block_04_select | set_1_line_1_block_04_select;
assign line_1_block_03 = set_0_line_1_block_03_select | set_1_line_1_block_03_select;
assign line_1_block_02 = set_0_line_1_block_02_select | set_1_line_1_block_02_select;
assign line_1_block_01 = set_0_line_1_block_01_select | set_1_line_1_block_01_select;
assign line_1_block_00 = set_0_line_1_block_00_select | set_1_line_1_block_00_select;

assign line_0_block_15_match = line_0_match & line_0_block_15;
assign line_0_block_14_match = line_0_match & line_0_block_14;
assign line_0_block_13_match = line_0_match & line_0_block_13;
assign line_0_block_12_match = line_0_match & line_0_block_12;
assign line_0_block_11_match = line_0_match & line_0_block_11;
assign line_0_block_10_match = line_0_match & line_0_block_10;
assign line_0_block_09_match = line_0_match & line_0_block_09;
assign line_0_block_08_match = line_0_match & line_0_block_08;
assign line_0_block_07_match = line_0_match & line_0_block_07;
assign line_0_block_06_match = line_0_match & line_0_block_06;
assign line_0_block_05_match = line_0_match & line_0_block_05;
assign line_0_block_04_match = line_0_match & line_0_block_04;
assign line_0_block_03_match = line_0_match & line_0_block_03;
assign line_0_block_02_match = line_0_match & line_0_block_02;
assign line_0_block_01_match = line_0_match & line_0_block_01;
assign line_0_block_00_match = line_0_match & line_0_block_00;

assign line_1_block_15_match = line_1_match & line_1_block_15;
assign line_1_block_14_match = line_1_match & line_1_block_14;
assign line_1_block_13_match = line_1_match & line_1_block_13;
assign line_1_block_12_match = line_1_match & line_1_block_12;
assign line_1_block_11_match = line_1_match & line_1_block_11;
assign line_1_block_10_match = line_1_match & line_1_block_10;
assign line_1_block_09_match = line_1_match & line_1_block_09;
assign line_1_block_08_match = line_1_match & line_1_block_08;
assign line_1_block_07_match = line_1_match & line_1_block_07;
assign line_1_block_06_match = line_1_match & line_1_block_06;
assign line_1_block_05_match = line_1_match & line_1_block_05;
assign line_1_block_04_match = line_1_match & line_1_block_04;
assign line_1_block_03_match = line_1_match & line_1_block_03;
assign line_1_block_02_match = line_1_match & line_1_block_02;
assign line_1_block_01_match = line_1_match & line_1_block_01;
assign line_1_block_00_match = line_1_match & line_1_block_00;

assign block_15 = line_0_block_15_match | line_1_block_15_match;
assign block_14 = line_0_block_14_match | line_1_block_14_match;
assign block_13 = line_0_block_13_match | line_1_block_13_match;
assign block_12 = line_0_block_12_match | line_1_block_12_match;
assign block_11 = line_0_block_11_match | line_1_block_11_match;
assign block_10 = line_0_block_10_match | line_1_block_10_match;
assign block_09 = line_0_block_09_match | line_1_block_09_match;
assign block_08 = line_0_block_08_match | line_1_block_08_match;
assign block_07 = line_0_block_07_match | line_1_block_07_match;
assign block_06 = line_0_block_06_match | line_1_block_06_match;
assign block_05 = line_0_block_05_match | line_1_block_05_match;
assign block_04 = line_0_block_04_match | line_1_block_04_match;
assign block_03 = line_0_block_03_match | line_1_block_03_match;
assign block_02 = line_0_block_02_match | line_1_block_02_match;
assign block_01 = line_0_block_01_match | line_1_block_01_match;
assign block_00 = line_0_block_00_match | line_1_block_00_match;

assign block_15 = block_15 & set_1_select;
assign block_14 = block_14 & set_1_select;
assign block_13 = block_13 & set_1_select;
assign block_12 = block_12 & set_1_select;
assign block_11 = block_11 & set_1_select;
assign block_10 = block_10 & set_1_select;
assign block_09 = block_09 & set_1_select;
assign block_08 = block_08 & set_1_select;
assign block_07 = block_07 & set_0_select;
assign block_06 = block_06 & set_0_select;
assign block_05 = block_05 & set_0_select;
assign block_04 = block_04 & set_0_select;
assign block_03 = block_03 & set_0_select;
assign block_02 = block_02 & set_0_select;
assign block_01 = block_01 & set_0_select;
assign block_00 = block_00 & set_0_select;

assign read_byte[7] = block_07 | block_15;
assign read_byte[6] = block_06 | block_14;
assign read_byte[5] = block_05 | block_13;
assign read_byte[4] = block_04 | block_12;
assign read_byte[3] = block_03 | block_11;
assign read_byte[2] = block_02 | block_10;
assign read_byte[1] = block_01 | block_09;
assign read_byte[0] = block_00 | block_08; 