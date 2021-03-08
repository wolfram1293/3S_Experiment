`timescale 1ns / 1ps

module ff(ck,res,Q);
    input ck, res;
    output wire Q;
    wire D;
    assign D = ~Q;
    always @(posedge ck) begin
        if(res==1) begin
            Q<= 0;
        end else begin
            Q<=D;
        end
    end
    assign out = q;
endmodule
