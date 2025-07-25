`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2025 03:32:18 PM
// Design Name: 
// Module Name: tb_ffs
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_ffs;

// Simulation parameters
localparam WIDTH = 16;
localparam PERIOD = 10;
localparam WIDTH_LOG = $clog2(WIDTH);

//`ifndef TEST_CASE
//    $error("FAIL: No test case specified");
//`endif

/**
 * List of tests:
 * ---------------------
 * TEST_ZERO
 * TEST_LSB_SET
 * TEST_MSB_SET
 * TEST_ALL_SET
 * TEST_RANDOM_BITMAP
 */

// Global state
logic clk;
logic rst;
logic zero;
logic [WIDTH-1:0] x;
logic [WIDTH_LOG-1:0] msb;
logic [WIDTH_LOG-1:0] lsb;
logic [WIDTH-1:0] x_initval;

initial x = 0;
initial clk = 0;
initial rst = 1;
always #(PERIOD) clk = ~clk;


// Ensure output is correct when random bits are set
assign x_initval = 16'b1000000000000001;

//always @(posedge clk) begin
//    if (!rst) begin
//        if (zero) begin
//            $display("FAIL %s: Zero incorrectly asserted", `TEST_CASE);
//            $finish;
//        end
//        else if (lsb != 1 || msb != 13) begin
//            $display("FAIL %s: ", `TEST_CASE,
//                     "Incorrect output. Expected (lsb=1, msb=13) ",
//                     "for x=%b, got (lsb=%0d, msb=%0d)", x, lsb, msb);
//            $finish;
//        end
//        else begin
//            $display("PASS %s", `TEST_CASE);
//            $finish;
//        end
//    end
//end

initial begin
// Value initialization logic
    @(posedge clk);
    if (rst) begin
        rst <= 0;
        x <= x_initval;
    end
// Value initialization logic
    @(posedge clk);
    if (rst) begin
        rst <= 0;
        x <= x_initval;
    end
// Value initialization logic
    @(posedge clk);
    if (rst) begin
        rst <= 0;
        x <= x_initval;
    end
end

// FFS instance
ffs #(
    .WIDTH_LOG(WIDTH_LOG)
)
ffs_instance (
    .x(x),
    .lsb(lsb),
    .msb(msb),
    .zero(zero)
);

endmodule
