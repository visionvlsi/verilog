`define DFLOW
//`define GFLOW
module mux(
 input i0,i1,sel,
 output y
 );
 
   `ifdef DFLOW
  assign y =  (~(sel) & i0) | sel &i1;
  `endif
  
 
 `ifdef GFLOW
  not n1(sbar,sel);
  and a1(w1,sbar, i0);
  and a2(w2,sel, i1);
  or  a3(y , w1, w2);
 `endif
 
 /////////////
 module mux_tb;

reg i0,i1,sel;
wire y;

mux m1(i0,i1,sel,y);

reg [3:0]i; //

initial
 begin
   for(i=0;i<8;i=i+1)
    begin // compulsory
	   {i0,i1,sel} = i;
	   #1;
	   $display($time, "  "  ,i0,i1,sel,y);
	
	end
 
 end
 
endmodule
