`timescale 1ns/1ps
module clkg_ufdj;
reg clk;
real freq,tp,duty,freq_jitter,jitter;
initial  begin 
$value$plusargs("freq=%f",freq);
$value$plusargs("duty=%f",duty);
$value$plusargs("jitter=%f",jitter);
clk =0; //initializing clk
forever begin
freq_jitter=freq*$urandom_range(100-jitter,100+jitter)/100;
tp =(1000/freq_jitter); //tp in ns
clk=1; #(duty*tp/100.0);
clk=0; #((100-duty)*tp/100.0);
end
end
initial begin
#500;
$finish;
end
endmodule

