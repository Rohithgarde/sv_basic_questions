module queues();
// ADD_CODE:Declare a local variable i of type int for manupilation and initialize it to 1
int j=1;

//declare j
//int j;

// ADD_CODE:Declare a queue "b" of type int and initialize it to {3,4}
int b[$]='{3,4};
// ADD_CODE:Declare a queue "q" of type int and initialize it to {0,2,5}
int q[$]='{0,2,5};

initial 
  begin
// ADD_CODE:Insert (1,j) into the queue q and display q using %p
   q.insert(1,j);
$display("queue elements = %0p", q);
    
// ADD_CODE:Insert (3,b[$]) into the queue q and display q using %p
    q.insert(3,b[$]);
$display("queue elements = %0p", q);
// ADD_CODE:delete element (1) from the queue q and display q using %p
   q.delete(j);
$display("queue elements = %0p", q);
// ADD_CODE:push front (6) into the queue q and display q using %p
   q.push_front(6);
$display("queue elements = %0p", q);
// ADD_CODE:pop back from the queue q, store the value in j and display j
   j=q.pop_back();
$display("value of j=%0d",j);
// ADD_CODE:push back (8) into the queue q and display q using %p
   q.push_back(8);
$display("queue elements = %0p", q);
// ADD_CODE:pop front from the queue q, store the value in j and display j
    j=q.pop_front();
$display("value of j=%0d",j);
end

endmodule
