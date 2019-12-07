p0 = [1 2]
p1 = [8 5]
beta = 30

% Applying homogenous coordinates matrix to p1 .. p0 segment converted to vector
v = (p1 - p0) % we differentiate points from vector !
v_homo = [v 1] % v with added homogeneous coordinate
R = [cosd(beta) -sind(beta) p0(1);sind(beta) cosd(beta) p0(2);0 0 1]

R_and_v_homo_for_print = [R(1:2,:);v_homo;R(3:3, :)];
fprintf('p1_r_homo = \n\t\t\t%7.4f %7.4f %7.4f\n\t\t\t%7.4f %7.4f %7.4f * (%1i %1i %1i)T =\n\t\t\t%7.4f %7.4f %7.4f\n\n', R_and_v_homo_for_print')

p1_r_homo = R * v_homo';
disp(p1_r_homo)
p1_r_draw = p1_r_homo(1:2)

% norm() must be applied to a vector, not to a segment !
% so, norm(p1) or norm(p1_r) is nonsensical !
v
v_r = p1_r_draw' - p0
v_length = norm(v) 
v_r_length = norm(v_r)

close all
figure

vectarrow(p0, p1)
vectarrow(p0, p1_r_draw)

% Now, applying improved homogenous coordinates matrix directly to p1 segment
% without converting it first to vector

RR = [cosd(beta) -sind(beta) (-cosd(beta) * p0(1) + sind(beta) * p0(2) + p0(1));
    sind(beta) cosd(beta) (-sind(beta) * p0(1) -cosd(beta) * p0(2) + p0(2));
    0 0 1]
RR_ = [cosd(beta) -sind(beta) (cosd(beta) * p0(1) - sind(beta) * p0(2));
    sind(beta) cosd(beta) (sind(beta) * p0(1) + cosd(beta) * p0(2));
    0 0 1]
RR__ = [cosd(beta) -sind(beta) (-cosd(beta) * p0(1) - sind(beta) * p0(2));
    sind(beta) cosd(beta) (sind(beta) * p0(1) - cosd(beta) * p0(2));
    0 0 1]

p1_homo = [p1 1]
p1_rr = RR * p1_homo';

R_and_p1_homo_for_print = [RR(1:2,:);p1_homo;RR(3:3, :)];
fprintf('p1_rr = \n\t\t\t%7.4f %7.4f %7.4f\n\t\t\t%7.4f %7.4f %7.4f * (%1i %1i %1i)T =\n\t\t\t%7.4f %7.4f %7.4f\n\n', R_and_p1_homo_for_print')
disp(p1_rr)

p1_rr_draw = p1_rr(1:2)
vectarrow(p0, p1_rr_draw)

p1_rr__ = RR__ * p1_homo'

configTwoDAxis()
