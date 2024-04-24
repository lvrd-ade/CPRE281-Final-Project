module mu6x4to1(w0, w1, w2, w3, s, f);
input [6:0] w0, w1, w2, w3;
input [1:0] s;
output [6:0] f;
assign f = s[1] ? (s[0] ? w3 : w2) : (s[0] ? w1 : w0);
endmodule
