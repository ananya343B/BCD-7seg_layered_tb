
`include "interface.sv"
`include "test.sv"

module tbench_top;
  intf i_intf();
  test t1(i_intf);
  seven_disp sd (
    .s(i_intf.s),
    .t(i_intf.t)
 );
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
