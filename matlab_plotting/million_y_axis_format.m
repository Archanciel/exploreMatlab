y = [80000000:80000400];
x = [1:size(y, 2)];
pl = plot(x, y);
ax = ancestor(pl, 'axes');
ax.YAxis.Exponent = 0;
ytickformat('%d');
