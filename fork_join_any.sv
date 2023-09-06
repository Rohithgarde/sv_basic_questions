program fork_join_any;
   initial begin
    #(10);
       $display(" BEFORE fork  time = %d ",$time ); 
       fork
           begin
               # (20);
               $display("time = %d # 20  ",$time );
           end
           begin
               #(10);
               $display("time = %d # 10  ",$time );
           end
           begin
               #(5);
               $display("time = %d # 5  ",$time );
           end
         join_any
    $display(" time = %d Outside the main fork ",$time );
wait fork;
   end 
   endprogram
