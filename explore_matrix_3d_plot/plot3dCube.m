% The given data points
E1 = [0 0 0]';
E2 = [3 0 0]';
E3 = [0 1 0]';
E4 = [3 1 0]';
E5 = [0 0 1]';
E6 = [3 0 1]';
E7 = [0 1 1]';
E8 = [3 1 1]';

% Assemble points to matrix E
E  = [E1 E2 E6 E2 E4 E8 E4 E3 E7 E3 E1 E5 E6 E8 E7 E5]

% defining points one by one as done in plot 3D cube.pdf
%E = [0 3 3 3 3 3 3 0 0 0 3 3 0 0 0 0;
%     0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 0;
%     0 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1]


xE = E(1,:)
yE = E(2,:)
zE = E(3,:)

% Plot
close all
figure()
p = plot3(xE, yE, zE, '.-');
p.LineWidth = 2;
axisMin = 0;
axisMax = 3;
axis([axisMin,axisMax,axisMin,axisMax,axisMin,axisMax])
title('Parallelepiped')
xlabel('x')
ylabel('y')
zlabel('z')
grid on