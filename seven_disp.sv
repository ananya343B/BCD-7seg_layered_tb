module seven_disp(input logic [3:0] s,
                  output logic [6:0] t);
  
  
  logic A,B,C,D;
  logic a,b,c,d,e,f,g;
  
  
  assign A = s[3];
  assign B = s[2];
  assign C = s[1];
  assign D = s[0];
  
  
  assign a = A | C | ~(B ^ D);
  assign b = ~B | ~(C ^ D);
  assign c = D | ~C | B;
  assign d = (~B & ~D) | (~C & B) | (C & ~B & D) | (C & ~D) | A;
  assign e = (~B & ~D) | (C & ~D);
  assign f = (~C & ~D) | (C & ~B) | (C & ~D) | A;
  assign g = (C ^ B) | A | (B & ~D);
  
  
  assign t = {a,b,c,d,e,f,g};
  
  
endmodule

  
