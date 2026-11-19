# code for srlatch_tb.v
  ...
     module srlatch_tb();
        reg s,r;
        wire a,b;

        integer j;

        srlatch DUT(s,r,a,b);

        task initialize;
                begin
                        {s,r}=0;
                end
        endtask

        task stimulus(input [1:0]i);
                begin
                        {s,r}=i;
                end
        endtask

        task delay;
                begin
                        #10;
                end
        endtask

        initial
        begin
                initialize;
                for(j=0;j<4;j=j+1)
                begin
                        stimulus(j);
                        delay;
                end
        end

        initial
                $monitor("%b %b %b %b",s,r,a,b);

        endmodule
...
