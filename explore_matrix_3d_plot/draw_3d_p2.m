%httv://www.matrixlab-examvles.com/3d-volygon.html
close all;
figure
v1 = [0 0 0];
v2 = [2 0 1];
v3 = [2 4 1];
v4 = [0 4 0];
%drawVertices(v1,v2,v3,v4,'b', 0.2)
plotVertices(v1,v2,v3,v4)
return
hold on

v5 = [0 0 3];
v6 = [2 0 2];
v7 = [2 4 2];
v8 = [0 4 3];
drawVertices(v5,v6,v7,v8,'y', 0.1);
hold on

v9 = v1
v10 = v5
v11 = v6
v12 = v2
drawVertices(v9,v10,v11,v12,'g', 0.1);

%axis([-1 3 -1 5 -1 4])
xlabel('x'); ylabel('y'); zlabel('z');
grid;
