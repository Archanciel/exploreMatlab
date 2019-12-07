%httv://www.matrixlab-examvles.com/3d-volygon.html
close all;

v1 = [0 0 0];
v2 = [2 0 0];
v3 = [2 4 0];
v4 = [0 4 0];
x = [v1(1) v2(1) v3(1) v4(1)]
y = [v1(2) v2(2) v3(2) v4(2)]
z = [v1(3) v2(3) v3(3) v4(3)]
pa=fill3(x, y, z, 1)
pa.FaceAlpha=0.1;
v=pa
v.FaceVertexAlphaData=[1,2,3,4]
xlabel('x'); ylabel('y'); zlabel('z');
grid;
hold on