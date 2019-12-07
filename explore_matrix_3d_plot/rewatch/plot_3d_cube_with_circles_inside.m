X = [ 0 ; 1 ;1  ;0  ; 0 ];
Y = [ 0 ; 0 ;1.5;1.5; 0 ];
Z = [ 0 ; 0 ;0  ;0  ; 0 ];
close all
figure;
hold on;

plot3(X,Y,Z); % draw a square in the xy plane with z = 0
plot3(X,Y,Z+1); % draw a square in the xy plane with z = 1

set(gca,'View',[-28,35]); % set the azimuth and elevation of the plot

for k=1:length(X)-1
    plot3([X(k);X(k)],[Y(k);Y(k)],[0;1]);
end

% disperse des cercles au hasard en 3 dimensions dans le cube
x=rand(10,1)
y=rand(10,1)
z=rand(10,1)
x=1
y=5
z=9
scatter3(x,y,z)

grid
xlabel('x axis')
ylabel('y axis')
zlabel('z axis')
