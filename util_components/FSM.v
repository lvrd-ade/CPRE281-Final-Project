module FSM(Q0, Q1, Q2, Q3, D, N, E, D0, D1, D2, D3);
input Q0, Q1, Q2, Q3, D, N, E;
output D0, D1, D2, D3;
assign D0 = (Q0&~D&~N) | (Q1&N) | (Q0&D) | (Q0&D&~N&E);
assign D1 = (Q1&~D&~N) | (Q0&N) | (Q1&D&~N&E);
assign D2 = (Q2&~D&~N) | (Q2&N) | (Q1&D) | (Q2&D);
assign D3 = (Q3&~N&~N) | (Q3&N) | (Q3&D) | (Q2&D&~N&E) | (Q3&D&~N&E);
endmodule