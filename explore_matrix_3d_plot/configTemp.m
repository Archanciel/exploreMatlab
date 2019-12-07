function y = configTemp()
lim = [0 10];
tick = (0:1:10);


grid;
xlabel('x');
ylabel('y');;
lim = [0 6];
tick = (0:1:6);

set(gca,'XLim',lim);
set(gca,'XTick',tick);
set(gca,'YLim',lim);
set(gca,'YTick',tick);




zlabel('z');
set(gca,'ZLim',lim);
set(gca,'ZTick',tick);
end