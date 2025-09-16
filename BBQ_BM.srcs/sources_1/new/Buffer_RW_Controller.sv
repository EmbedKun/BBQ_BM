`timescale 1ns / 1ps

module Buffer_RW_Controller (
    input clk,                      
    input reset,                    
    input write_enable,             
    input read_enable,              
    input [63:0] packet_data_in,    
    input [31:0] packet_len_in,     
    input [31:0] cell_index_in,     
    output reg [63:0] packet_data_out, 
    output reg [31:0] packet_len_out, 
    output reg [31:0] free_cell_pointer, 
    output reg [31:0] current_ptr,
    output reg ready                
);

    reg [63:0] cell_data_memory [0:255];     
    reg [31:0] cell_pointer_memory [0:255];  
    reg [63:0] pd_memory [0:255];            

    // Free Cell Pointer List 
    reg [31:0] free_cell_list [0:255]; 
    reg [7:0] free_cell_head;          
    reg free_cell_list_initialized = 0;

    // INIT
    initial begin
        free_cell_head = 0;
        ready = 1;
        for (integer i = 0; i < 255; i = i + 1) begin
            free_cell_list[i] = i + 1;      
        end
        free_cell_list[255] = 32'hFFFF;     
        free_cell_list_initialized = 1;      
    end

    // write in
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            ready <= 1;
            free_cell_head <= 0;
        end else if (write_enable && free_cell_list_initialized) begin
            integer current_cell = free_cell_head;
            integer prev_cell = -1;
            integer cells_used = 0;
            integer max_cells = (packet_len_in + 63) / 64;// cell_nums

            for (integer i = 0; i < 2; i = i + 1) begin
                if (current_cell != 32'hFFFF) begin
                    cell_data_memory[current_cell] <= packet_data_in;
                    
                    if (i == max_cells - 1) begin
                        cell_pointer_memory[current_cell] <= 32'hFFFF; 
                    end else begin
                        cell_pointer_memory[current_cell] <= free_cell_list[current_cell]; 
                    end

                    prev_cell = current_cell;
                    current_cell = free_cell_list[current_cell];
                    cells_used = cells_used + 1;
                end
            end

            free_cell_head <= current_cell;

            pd_memory[cell_index_in] <= {packet_len_in, free_cell_head}; // MODIFIED: 

            ready <= 1;
        end
    end

reg [31:0] head_ptr;
    //read out
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            packet_data_out <= 0;
            packet_len_out <= 0;
            free_cell_pointer <= 0;
        end else if (read_enable) begin
            packet_len_out <= pd_memory[cell_index_in][63:32]; 
            head_ptr = pd_memory[cell_index_in][31:0]; 
            current_ptr = head_ptr;

            if (current_ptr != 32'hFFFF) begin
                packet_data_out <= cell_data_memory[current_ptr]; 
                free_cell_pointer <= current_ptr; 
                current_ptr = cell_pointer_memory[current_ptr]; 
            end
        end
    end
endmodule