close all
f=figure(1);hold on;
c1=plot(1:10);
c2=plot(10:-1:1);
pause(2)
delete(c2);
pause(2)
c2=plot(10:-1:1,'m');
