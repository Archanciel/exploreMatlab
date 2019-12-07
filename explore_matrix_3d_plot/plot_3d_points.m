close all
figure
p0 = [0 0 0];
p1 = [0 0 0];
plot3(p0,p1,p1)
grid
xlabel('x')
ylabel('y')
zlabel('z')
hold on
x = 1
y = 3
z = 9
scatter3(x,y,z)
%plot3(x,y,z,'*')
