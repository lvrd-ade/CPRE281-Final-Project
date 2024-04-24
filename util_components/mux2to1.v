module mux2to1(W1, W0, S, F);
input W1, W0, S;
output F;
assign F = (S ? W1 : W0);
endmodule 