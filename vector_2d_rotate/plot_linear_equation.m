x = -5 : 5
m = -3/2;
b = 3;
y = m*x + b

close all
figure

plot(x, y)

%configTwoDAxis()
xmin = -3
xmax = 3
ymin = -4
ymax = 4
set(gca,'ylim',[ymin ymax],'xlim',[xmin xmax],'xtick',xmin:xmax,'ytick',ymin:ymax)
opt.fontname = 'helvetica';
opt.fontsize = 8;

centeraxes(gca,opt);