module DFF(clk,rst,D,q,qbar);
    input clk,D,rst;
    output reg q;
    output reg qbar;
    always @(posedge clk or posedge rst)
    begin 
        if(rst)
            q<=0;
        else
            begin
                q<=D;
            end
                qbar<= ~q;
    end
endmodule
