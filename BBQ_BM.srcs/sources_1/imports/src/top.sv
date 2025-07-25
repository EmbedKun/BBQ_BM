`timescale 1 ps / 1 ps

import heap_ops::*;

`ifndef ELEMENT_BITS
`define ELEMENT_BITS 17
`endif  // ELEMENT_BITS

`ifndef CELL_BITS
`define CELL_BITS 15
`endif  // CELL_SIZE

`ifndef BITMAP_WIDTH
`define BITMAP_WIDTH 32
`endif // BITMAP_WIDTH

`ifndef NUM_LEVELS
`define NUM_LEVELS 2
`endif // NUM_LEVELS

module top (
    input               sys_clk_p,
    input               sys_clk_n,
    input               cpu_resetn,
    output logic        bbq_out
);

/////////////////////////
// dev_clr sync-reset
/////////////////////////
wire arst;

wire bbq_clk;
wire locked;

clk_wiz_0 clk_wiz_inst
(
    // Clock out ports  
    .bbq_clk(bbq_clk),
    // Status and control signals               
    .resetn(cpu_resetn), 
    .locked(locked),
    // Clock in ports
    .clk_in1_p(sys_clk_p),
    .clk_in1_n(sys_clk_n)
);

assign arst = ~locked;
/**
 * BBQ.
 */
// Heap parameters
localparam NB_LEVELS = 2;
localparam HEAP_BITMAP_WIDTH = `BITMAP_WIDTH;
localparam HEAP_ENTRY_DWIDTH = `ELEMENT_BITS;
localparam HAEP_CELL_BITS = `CELL_BITS;
localparam HEAP_MAX_NUM_ENTRIES = ((1 << `ELEMENT_BITS) - 1);
localparam HEAP_NUM_PRIORITIES = (HEAP_BITMAP_WIDTH ** NB_LEVELS);
localparam HEAP_ENTRY_AWIDTH = ($clog2(HEAP_MAX_NUM_ENTRIES));
localparam HEAP_PRIORITY_AWIDTH = ($clog2(HEAP_NUM_PRIORITIES));

// Local typedefs
typedef logic [HEAP_ENTRY_DWIDTH-1:0] heap_entry_data_t;
typedef logic [HEAP_PRIORITY_AWIDTH-1:0] heap_priority_t;

// Global state
(* keep = "true" *) logic init_done;
(* keep = "true" *) logic [63:0] counter;
(* keep = "true" *) logic [63:0] counter2;//debug by mkxue

// Heap signals
(* keep = "true" *)logic heap_ready;
(* keep = "true" *)logic heap_in_valid;
(* keep = "true" *)heap_op_t heap_in_op_type;
(* keep = "true" *)heap_entry_data_t heap_in_data;
(* keep = "true" *)heap_priority_t heap_in_priority;

ila_1 ila_1(
    .clk(bbq_clk),
    .probe0(init_done),
    .probe1(counter)
);

always @(posedge bbq_clk) begin
    if (arst) begin
        counter <= 0;
        counter2 <= 0;
        init_done <= 0;
    end
    else begin
        heap_in_data <= 0;
        heap_in_valid <= 0;
        heap_in_priority <= 0;
        heap_in_op_type <= HEAP_OP_ENQUE;
//        counter2 <= (counter2<64'b0000000000000000000000000000000000000000000000000000000000011111)?(counter2 +1):64'b0000000000000000000000000000000000000000000000000000000000111111;
        init_done <= (init_done | heap_ready);
          if (init_done) begin
            counter <= counter + 1;
            heap_in_valid <= 1;
            heap_in_data <= counter[HEAP_ENTRY_DWIDTH-1:0];
            heap_in_priority <= counter[HEAP_PRIORITY_AWIDTH-1:0];
            heap_in_op_type <= (counter[0] == 0) ? HEAP_OP_ENQUE : HEAP_OP_DEQUE_MIN;
        end
    end
end

localparam HEAP_PRIORITY_BUCKETS_AWIDTH = ($clog2(HEAP_NUM_PRIORITIES));

(* keep = "true" *) logic                                    heap_out_valid;
(* keep = "true" *) heap_op_t                                heap_out_op_type;
(* keep = "true" *) logic [HEAP_ENTRY_DWIDTH-1:0]            heap_out_he_data;
(* keep = "true" *) logic [HEAP_PRIORITY_BUCKETS_AWIDTH-1:0] heap_out_he_priority;

ila_0 (
    .clk(bbq_clk),
    .probe0(heap_out_valid),
    .probe1(heap_out_op_type),
    .probe2(heap_out_he_data),
    .probe3(heap_out_he_priority),
    .probe4(locked)
);

(* keep = "true" *) logic [31:0] out_placeholder;
(* keep = "true" *) logic bbq_out_r;

// Make sure we use all the outputs.
always_comb begin
    out_placeholder = 0;
    out_placeholder ^= heap_out_op_type;
    out_placeholder ^= heap_out_he_data;
    out_placeholder ^= heap_out_he_priority;

    bbq_out_r = ^out_placeholder ^ heap_out_valid;
end

always_ff @(posedge bbq_clk) begin
    bbq_out <= bbq_out_r;
end

// BBQ instance
bbq #(
    .HEAP_BITMAP_WIDTH(HEAP_BITMAP_WIDTH),
    .HEAP_ENTRY_DWIDTH(HEAP_ENTRY_DWIDTH),
    .HEAP_MAX_NUM_ENTRIES(HEAP_MAX_NUM_ENTRIES)
)
bbq_inst (
    .clk(bbq_clk),
    .rst(arst),
    .ready(heap_ready),
    .in_valid(heap_in_valid),
    .in_op_type(heap_in_op_type),
    .in_he_data(heap_in_data),
    .in_he_priority(heap_in_priority),
    .out_valid(heap_out_valid),
    .out_op_type(heap_out_op_type),
    .out_he_data(heap_out_he_data),
    .out_he_priority(heap_out_he_priority)
);

endmodule
