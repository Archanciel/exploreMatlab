clear
clc
close all
x=[];
y=[];
n=0;
z=0;
m=0;
run1=0;
cirshow=[];
while m<2
  n=n+1;
  m=m+.1;
  x(n)=m;
  y(n)=x(n)^2;
    cirshow(n)=plot(x(n),y(n),'bo')
    hold on
    plot(x,y,'b-')
    axis([0 3 0 3]);
    if run1==1
        delete(cirshow(n-1))
    end
    drawnow
    run1=1;
end