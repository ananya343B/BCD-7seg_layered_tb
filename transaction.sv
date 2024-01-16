class transaction;
  randc bit [3:0] s;
  bit [6:0] t;
  constraint cons
  { s>0; s<10;}
  function void display(string name);
    $display("------------------------");
    $display("%s",name);
    $display("------------------------");
    $display("s=%0d",s);
    $display("t=%0b",t);
    $display("------------------------");
  endfunction
endclass
