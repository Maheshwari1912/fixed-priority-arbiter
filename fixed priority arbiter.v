module fixed_priority_arbiter #(parameter N=8) (
  input [N-1:0] req,
  output [N-1:0] grant
);
  assign grant[7] = req[7];
  genvar i;
  generate
    for(i=6; i>=0; i=i-1) begin
      assign grant[i]=req[i] && ~();
