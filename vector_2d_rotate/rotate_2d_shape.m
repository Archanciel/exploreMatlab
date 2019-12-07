X = [-2 -2 2 2];
Y = [-2 2 2 -2];

figure
close all
hSquare = fill(X,Y,'k');

thetad = 3;

R = [cosd(thetad) -sind(thetad); sind(thetad) cosd(thetad)]
C = repmat([0 0], 4, 1)'

axis([-10 10 -10 10])
%return
for k=1:10
    V = get(hSquare,'Vertices')' % get the current set of vertices
    %V = R*V
    V1 = V - C
    Vtheta = R*V1 + C % do the rotation relative to the centre of the square
    set(hSquare,'Vertices',Vtheta'); % update the vertices
%    pause(0.01);
end

