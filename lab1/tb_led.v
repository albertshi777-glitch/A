//define timescale
`timescale 1ns/1ns


module tb_led();

reg key_in;
wire led_out;

// module instance
led led_instance(
	.key_in(key_in),	//first is port name in led, second is variable name in tb_led
	.led_out(led_out)
);

//generate artificial inputs
initial begin
	key_in<=1'b0;
end

always begin
	//generate a random number 
	#10 key_in <= ($random) % 2; //only need 0 and 1
end

endmodule