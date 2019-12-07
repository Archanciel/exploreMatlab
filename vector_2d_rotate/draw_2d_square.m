close all;
figure
v1 = [0 0];
v2 = [2 0];
v3 = [2 4];
v4 = [0 4];
%drawVertices(v1,v2,v3,v4,'b', 0.2)
M = [v1' v2' v3' v4' v1']
%plot_2d_vertices(v1,v2,v3,v4,5,'r')
plot_2d_matrix_vertices(M,5,'r')
configTwoDAxis()