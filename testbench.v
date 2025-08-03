module test;
  reg a, b;
  wire y;
  and_gate uut(a, b, y);

  initial begin
    $monitor("a=%b b=%b y=%b", a, b, y);
    a = 0; b = 0;
    #10 a = 1;
    #10 b = 1;
    #10 a = 0;
    #10 $finish;
  end
endmodule
