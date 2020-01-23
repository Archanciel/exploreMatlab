x= 0:0.1:2*pi; 
y= sin(x);
figure
ph = plot(x(1), y(1), 'r*');  %plot initial point
set(gca,'Xlim',[0 6.5], 'Ylim',[-1 1])
for i=1:length(y)
    ph.XData = x(i);         %change x coordinate of the point
    ph.YData = y(i);         %change y coordinate of the point
    drawnow
    pause(0.05)  %control speed, if desired
end