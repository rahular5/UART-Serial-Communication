`timescale 1ns/1ps

module uart (
    input wire clk,             // System clock
    input wire reset,           // System reset
    input wire rx,              // Serial data input
    output reg tx,              // Serial data output
    input wire [7:0] tx_data,   // Data to be transmitted
    input wire tx_start,        // Start transmission
    output reg tx_ready,        // Transmitter ready signal
    output reg [7:0] rx_data,   // Received data
    output reg rx_ready,        // Receiver ready signal
    output reg rx_error         // Receiver error signal
);

// Internal Signals
reg [3:0] bit_count;          // Bit counter for transmission
reg [3:0] rx_bit_count;       // Bit counter for reception
reg [7:0] tx_shift_reg;       // Shift register for transmission
reg [7:0] rx_shift_reg;       // Shift register for reception
reg tx_busy;                  // Transmitter busy flag
reg rx_busy;                  // Receiver busy flag

// Transmitter Logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        tx_ready <= 1'b1;
        tx_busy <= 1'b0;
        bit_count <= 4'b0;
        tx <= 1'b1; // Idle state
        tx_shift_reg <= 8'b0;
    end else begin
        if (tx_start && tx_ready) begin
            tx_ready <= 1'b0;
            tx_busy <= 1'b1;
            tx_shift_reg <= tx_data;
            tx <= 1'b0; // Start bit
            bit_count <= 4'b0;
        end else if (tx_busy) begin
            if (bit_count < 8) begin
                tx <= tx_shift_reg[bit_count];
                bit_count <= bit_count + 1;
            end else if (bit_count == 8) begin
                tx <= 1'b1; // Stop bit
                bit_count <= bit_count + 1;
            end else begin
                tx_busy <= 1'b0;
                tx_ready <= 1'b1;
            end
        end
    end
end

// Receiver Logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        rx_ready <= 1'b0;
        rx_busy <= 1'b0;
        rx_bit_count <= 4'b0;
        rx_shift_reg <= 8'b0;
        rx_error <= 1'b0;
    end else begin
        if (!rx_busy && !rx) begin // Start bit detected
            rx_busy <= 1'b1;
            rx_bit_count <= 4'b0;
        end else if (rx_busy) begin
            // Sample bits (implement your sampling logic here)
            rx_shift_reg[rx_bit_count] <= rx;
            rx_bit_count <= rx_bit_count + 1;

            if (rx_bit_count == 7) begin
                rx_ready <= 1'b1; // Data ready
                rx_data <= rx_shift_reg;
                rx_busy <= 1'b0;
            end
        end
    end
end

endmodule
