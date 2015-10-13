module inputconditioner(clk, noisysignal, conditioned, positiveedge, negativeedge);
output reg conditioned = 0;
output reg positiveedge = 0;
output reg negativeedge = 0;
input clk, noisysignal;

parameter counterwidth = 3;
parameter waittime = 3;

reg[counterwidth-1:0] counter =0;
reg synchronizer0 = 0;
reg synchronizer1 = 0;

always @(posedge clk ) begin
    if(conditioned == synchronizer1) begin
        counter <= 0;
	positiveedge=0;
	negativeedge=0;
    end
    else begin
        if( counter == waittime) begin
            counter <= 0;
            conditioned <= synchronizer1;
	    if (conditioned==0) begin
		positiveedge=1;
		//$display("positive edge");
	    end
	    else begin
		negativeedge=1;
		//$display("negative edge");
	    end

        end
        else 
            counter <= counter+1;

    end
    synchronizer1 = synchronizer0;
    synchronizer0 = noisysignal;
end

endmodule