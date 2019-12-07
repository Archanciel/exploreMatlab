close all;
figure
v1 = [0 0];
v2 = [2 0];
v3 = [2 2];
v4 = [1 3];
v5 = [0 2];

M_house = [v1' v2' v3' v4' v5' v3' v5' v1']
plot_2d_matrix_vertices(M_house,5,'r')

hold on
v6 = [0.5 1];
v7 = [1 1];
v8 = [1 1.5];
v9 = [0.5 1.5];

M_window = [v6' v7' v8' v8' v9' v6']
plot_2d_matrix_vertices(M_window,4,'b')

% now, rotating house:
beta = 30
R = [cosd(beta) -sind(beta);sind(beta) cosd(beta)]
M_house_r = R * M_house
plot_2d_matrix_vertices(M_house_r,5,'g')


% drawing rotated window
RR = [cosd(beta) -sind(beta) (-cosd(beta) * v6(1) + sind(beta) * v6(2) + v6(1));
    sind(beta) cosd(beta) (-sind(beta) * v6(1) -cosd(beta) * v6(2) + v6(2));
    0 0 1]
M_window_homo = [M_window;1 1 1 1 1 1]
M_window_r = RR * M_window_homo
plot_2d_matrix_vertices(M_window_r,4,'m')

lim = [-2 4];
tick = (-2:1:4);

configTwoDAxis(lim, tick)