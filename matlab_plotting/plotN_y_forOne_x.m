A = [1 2 2 3 3 3 4 5 6 6;20 15 17 8 12 1 30 40 25 35];

close all
figure
subplot(2, 1, 1)
p = plot(A(1,:), A(2,:), 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b');title('Using plot')
%title('Using plot') % overwritten by figure title !
xlabel('A line 1');
ylabel('A line 2');
grid on

subplot(2, 1, 2)
p = scatter(A(1,:), A(2,:), 80, 'filled');
title('Using scatter')
xlabel('A line 1');
ylabel('A line 2');

grid on

% figure title
currentFigure = gcf;
title(currentFigure.Children(end), [sprintf('Data:\n') sprintf('A = [1 2 2 3 3 3 4 5 6 6;20 15 17 8 12 1 30 40 25 35]\n') sprintf('\n') sprintf('Using plot')]);