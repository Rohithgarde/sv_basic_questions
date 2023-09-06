module associative_array ();

// ADD_CODE:Declare an associative array as_mem of type int and index type int
  int as_mem [int];
// ADD_CODE:Declare a local variable i of type int for manupilation
int i;
int ret;
initial begin
  // ADD_CODE:Add element to the associative array as follows:
  // in the 100th location store value 101
  as_mem[100]=101;
  // in the first location store value 100
  as_mem[1]=100;
  // in the 50th location store value 99
  as_mem[50]=99;
  // in the 256th location store value 77
  as_mem[256]=77;
  
  // ADD_CODE:Display the size of the associative array
  $display("size=%0d", as_mem.size());
  // ADD_CODE:Check if index 2 exists
  ret=as_mem.exists(2);
  $display("1 if exist else 0",ret);
  // ADD_CODE:Check if index 100 exists
  ret=as_mem.exists(100);
  $display("1 if exist else 0",ret);
  // ADD_CODE: Display the value stored in first index
  if(as_mem.first(i))
    $display("first index value =%0d",as_mem[i] );
  // ADD_CODE:Display the value stored in last index
  if(as_mem.last(i))
    $display("last index value =%0d",as_mem[i] );
  // ADD_CODE:Delete the first index
  as_mem.delete(1);
  // ADD_CODE:Display the value stored in first index
   if(as_mem.first(i))
    $display("first index value =%0d",as_mem[i] );
  #1 $finish;
end

endmodule

