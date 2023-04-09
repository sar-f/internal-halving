
f=@(x) sin(x)-cos(x); 
bisect(f,0,5,0.0001,100)
function c =bisect(f,a,b,delta,N)
c=[];
k=1;
while (k<=N)
x2= (a+b+delta) / 2 ;
x1=(a+b-delta) / 2 ;
F1=f(x1);
F2=f(x2);
 if F2<F1 
      b=x2;
      k=k+1;
 elseif F2>F1
      a=x1;
      k=k+1;

  elseif  F2==F1
      a=x1;
      b=x2;
      k=k+1;
  end
end
c=[x2];
end

