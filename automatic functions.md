Automatic Functions

Functions can be declared as automatic functions as of Verilog 2001.

<p style="text-align: justify;">Automatic is a term borrowed from C which allows the function to be re-entrant. 
A re-entrant function is one in which the items declared within the function are allocated upon every individual call of the function, 
as opposed to being shared between all calls of the function. This could be a problem in a simulation environment if code is forked and calls the same function 
at the same time. Race conditions can develop.

In C, all variables are automatic by default. In order to make them not automatic, they must be declared as static. Verilog is the opposite with functions. All functions are static by default and should be declared automatic if they are called simultaneously.
A good practice is to declare your functions as automatic by default. The keyword automatic also allows you to write recursive functions, since now the simulator can dynamically allocate as many copies of the internal variables as it needs to unroll the recursion.</p>

The example below demonstrates how recursion can be used in an automatic function.
