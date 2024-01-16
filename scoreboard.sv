class scoreboard;
  mailbox mon2scb;
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  task main;
    transaction trans;
    repeat(1);
    begin
      mon2scb.get(trans);
      if(((trans.s === 4'b0000) && (trans.t === 7'b1111110)) ||
         ((trans.s === 4'b0001) && (trans.t === 7'b0110000)) ||
         ((trans.s === 4'b0010) && (trans.t === 7'b1101101)) ||
         ((trans.s === 4'b0011) && (trans.t === 7'b1111001)) ||
         ((trans.s === 4'b0100) && (trans.t === 7'b0110011)) ||
         ((trans.s === 4'b0101) && (trans.t === 7'b1011011)) ||
         ((trans.s === 4'b0110) && (trans.t === 7'b1011111)) ||
         ((trans.s === 4'b0111) && (trans.t === 7'b1110000)) ||
         ((trans.s === 4'b1000) && (trans.t === 7'b1111111)) ||
         ((trans.s === 4'b1001) && (trans.t === 7'b1111011)))
        $display("Result is as expected");
      else
        $error("Wrong result");
      trans.display("Scoreboard");
    end
  endtask
endclass
