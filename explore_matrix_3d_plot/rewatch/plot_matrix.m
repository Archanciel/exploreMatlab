function y = plot_matrix(X,Y,Z)

figure;
hold on;

height = 15
plot3(X,Y,Z); % draw a square in the xy plane with z = 0
plot3(X,Y,Z+height); % draw a square in the xy plane with z = height

set(gca,'View',[-28,35]); % set the azimuth and elevation of the plot

for k=1:length(X)-1
    plot3([X(k);X(k)],[Y(k);Y(k)],[Z(k);Z(k)+height]);
end

xlabel('x axis')
ylabel('y axis')
zlabel('z axis')

y = 0
