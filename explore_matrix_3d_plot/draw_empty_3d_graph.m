figure
p0 = [0 0 0];
p1 = [0 0 0];
plot3(p0,p1,p1)
grid
xlabel('x')
ylabel('y')
zlabel('z')
lim = [0 10]
tick = (0:1:10)
set(gca,'XLim',lim)
set(gca,'XTick',tick)
set(gca,'YLim',lim)
set(gca,'YTick',tick)
set(gca,'ZLim',lim)
set(gca,'ZTick',tick)

