clear all;
clc;
syms x;
x1 = 3;
y1 = 2;
x2 = 8;
y2 = -4;
X = [x1 x2];
Y = [y1 y2];
C = [1 x1;1 x2];
A = inv(C)*Y';
a = A(1);
b = A(2);
fprintf('Required equation: \n');
y = a + b*x;
y = vpa(y) 

%plotting
xx = linspace(x1, x2);
yy = subs(y, x, xx);
plot(xx, yy, 'b-');
hold on;
scatter(X, Y, 20, 'r', 'filled');
xlabel('x');
ylabel('y');
grid;
axis square;
axis([0 10 -5 3]);
d = 0.5;
text(x1+d, y1, 'P_1');
text(x2+d, y2, 'P_2');
hold off;
