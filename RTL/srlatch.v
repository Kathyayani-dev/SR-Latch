# code for srlatch.v
  ...
     module srlatch(s,r,a,b);
        input s,r;
        output a,b;

        nor nor1(a,r,b);
        nor nor2(b,s,a);

        endmodule
...
