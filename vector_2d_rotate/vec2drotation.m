v = [7 3]
beta = 30
R = [cosd(beta) -sind(beta);sind(beta) cosd(beta)]
v_r = R * v'
v_length = norm(v)
v_r_length = norm(v_r)

close all
figure

vectarrow([0 0], v)
vectarrow([0 0], v_r)

configTwoDAxis()



