%httv://www.matrixlab-examvles.com/3d-volygon.html
close all;

v1 = [0 0 0];
v2 = [2 0 0];
v3 = [2 4 0];
v4 = [0 4 0];
drawVertices(v1,v2,v3,v4,1);
hold on

v5 = [0 0 3];
v6 = [2 0 3];
v7 = [2 4 3];
v8 = [0 4 3];
drawVertices(v5,v6,v7,v8,3);
hold on

v9 = [v1(1) v1(1) v1(1)];
v10 = [v5(1) v5(2) v5(3)];
v11 = [v6(1) v6(2) v6(3)];
v12 = [v2(1) v2(2) v3(3)];
drawVertices(v9,v10,v11,v12,2);

%axis([-1 3 -1 5 -1 4])
xlabel('x'); ylabel('y'); zlabel('z');
grid;
