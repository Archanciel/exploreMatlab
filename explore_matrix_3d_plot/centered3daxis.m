close all
[x, y, z] = ellipsoid(0,0,0,1.9,1.25,1.25,30);
figure
surf(x, y, z)
axis equal
xl = xlim()
yl = ylim()
zl = zlim()
hold on;
line(2*xl, [0,0], [0,0], 'LineWidth', 3, 'Color', 'k');
line([0,0], 2*yl, [0,0], 'LineWidth', 3, 'Color', 'k');
line([0,0], [0,0], 2*zl, 'LineWidth', 3, 'Color', 'k');
