Function - Verilog Example
Write synthesizable and automatic functions in Verilog
Functions are sections of Verilog code that allow the Digital Designer to write more reusable and maintainable code. Often a function is created when the same operation is done over and over throughout Verilog code. Rather than rewriting code, one can just call the function. This prevents copy and paste errors and allows for more maintainable code: if the behavior of the function changes, it only needs to be updated in one location.

One rule about functions is that they cannot have any time delay (# delay, posedge). This is one way in which they differ from tasks. For this reason, functions are used for creating combinational logic. Yes, functions are synthesizable!

Below is a list of rules for functions:

Functions can have any number of inputs but only one output (one return value)
The order of inputs to a function dictates how it should be wired up when called
The return type defaults to one bit unless defined otherwise
Functions execute immediately (zero time delay)
Functions can call other functions but they cannot call tasks
Functions can drive global variables external to the function
Variables declared inside a function are local to that function
Non-blocking assignment in function is illegal
Functions can be automatic (see below for more detail)
Often functions are created in the file they are used in. The example below demonstrates this. However functions can also be included via the `include compile directive.
