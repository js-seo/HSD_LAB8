module my_pe #(parameter L_RAM_SIZE = 6)
(
    // clk/reset
    input aclk,
    input aresetn,
    // port A
    input [31:0] ain,
    // peram -> port B
    input [31:0] din,
    input [L_RAM_SIZE-1:0]  addr,
    input we,
    // integrated valid signal
    input valid,
    // computation result
    output dvalid,
    output [31:0] dout
);

  // peram: PE's local RAM -> Port B
  reg [31:0] bin;
  (* ram_style = "block" *) reg [31:0] peram [0:2**L_RAM_SIZE - 1];

  always @(posedge aclk)
    if (we)
      peram[addr] <= din;
    else
      bin <= peram[addr];
  
  reg[2:0] counter;
  
  reg[31:0] accum;
  always @(posedge aclk)
    if (!aresetn)
        accum <= 0;
  
  always @(posedge aclk)
    if (valid)
        counter <= 6;
    else
        counter <= (counter > 0) ? counter - 1 : 0;
  
  wire mac_en;
  assign mac_en = counter > 1;
  wire[39:0] cin = { accum, 8'b0 };
  assign dvalid = counter == 1;
  always @(posedge aclk)
    if (counter == 4)
        accum <= dout;
        
  xbip_multadd_0 mac_ip (
    .clk(aclk),
    .sclr(!aresetn),
    .ce(mac_en),
    .a(ain[15:0]),
    .b(bin[15:0]),
    .c(cin),
    .subtract('b0),
    .p(dout)
  );
/*
    reg [31:0] data;
    always @(posedge aclk)
       if (!aresetn)
         data <= 'd0;
          
    reg[2:0] counter;
    always @(posedge aclk)
        if (valid)
            counter <= 6;
        else
            counter <= counter > 0 ? counter - 1 : 0;
            
    wire[31:0] product;
    wire[31:0] sum;
    assign dout = data;
    
    reg pvalid;
    reg svalid;
    always @(posedge aclk) begin
        pvalid <= counter > 3;
        if (counter == 2) data <= sum;
        svalid <= counter == 1;
    end
        
    assign dvalid = svalid;
        
    mult_gen_0 multiplier (
        .clk(aclk),
        .a(ain[15:0]),
        .b(bin[15:0]),
        .p(product)
    );
    
    c_addsub_0 adder (
        .clk(aclk),
        .ce(pvalid),
        .a(product[31:8]),
        .b(data),
        .s(sum)
    );
*/
endmodule
