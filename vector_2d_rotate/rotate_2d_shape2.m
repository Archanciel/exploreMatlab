%used to pos your answer
X = [-2 -2 2 2];
Y = [-2 2 2 -2];

hSquare = fill(X,Y,'k');

thetad = 1;

R = [cosd(thetad) -sind(thetad); sind(thetad) cosd(thetad)];
C = repmat([0 0], 4, 1)';

axis([-10 10 -10 10])
%return
for k=1:60
    V = get(hSquare,'Vertices')'; % get the current set of vertices
    V = R*(V - C) + C; % do the rotation relative to the centre of the square
    set(hSquare,'Vertices',V'); % update the vertices
    pause(0.05);
end

