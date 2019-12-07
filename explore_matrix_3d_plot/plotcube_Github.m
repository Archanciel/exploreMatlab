close all
figure;

lim = [0 10]
tick = (0:1:10)
set(gca,'XLim',lim)
set(gca,'XTick',tick)
set(gca,'YLim',lim)
set(gca,'YTick',tick)
set(gca,'ZLim',lim)
set(gca,'ZTick',tick)


hold on;
plotcube([0 0 0],4,3,2,0,0,0,123);
%plotcube([0 0 0],4,3,2,0,20,0,123);
%plotcube([2 0 2],1,2,3,0,0,140,55);
%axis equal; % this cancels the XLim set above !
grid on;
xlabel('X','FontSize',18);
ylabel('Y','FontSize',18)
zlabel('Z','FontSize',18)
%h = gca;
%view(120,30); % azimut = 120, elevation = 30
view(3) % default
colormap jet;
colorbar;
hold off;

function plotcube(origin,X,Y,Z,a,b,c,cdata)
% PLOTCUBE plots a cube with dimension of X, Y, Z.
%
% INPUTS:
% origin = set origin point for the cube in the form of [x,y,z].
% X      = cube length along x direction.
% Y      = cube length along y direction.
% Z      = cube length along z direction.
% a      = cube rotation about x axis [degrees].
% b      = cube rotation about y axis [degrees].
% c      = cube rotation about z axis [degrees].
% cdata  = numeric value used to determine the color of the cube when
%          colormap and colorbar are used.
% OUPUTS:
% Plot a figure in the form of cubics.
%
%
% Originally by: Jialun Liu
%                http://jialunliu.com/how-to-use-matlab-to-plot-3d-cubes/
% 
% Modified by:   Aleix Pinardell
%                to include rotation and CData
%
 
 
% ------------------------------Code Starts Here------------------------------ %
 
% Define the vertexes of the unit cubic
ver = [1 1 0;
    0 1 0;
    0 1 1;
    1 1 1;
    0 0 1;
    1 0 1;
    1 0 0;
    0 0 0];
 
%  Define the faces of the unit cubic
fac = [1 2 3 4;
    4 3 5 6;
    6 7 8 5;
    1 2 8 7;
    6 7 1 4;
    2 3 5 8];
 
% Create rotation matrices
Rx = [  1       0           0;
        0       cosd(a)     sind(a);
        0       -sind(a)    cosd(a)];
Ry = [  cosd(b) 0           -sind(b);
        0       1           0;
        sind(b) 0           cosd(b)];
Rz = [  cosd(c)     sind(c) 0;
        -sind(c)    cosd(c) 0;
        0           0       1];
 
% Rotate cube
cube = [ver(:,1)*X,ver(:,2)*Y,ver(:,3)*Z];
for i = 1:length(cube)
    cube(i,:) = (Rx*Ry*Rz*cube(i,:)')';
end
 
% Plot cube
cube = [cube(:,1)+origin(1),cube(:,2)+origin(2),cube(:,3)+origin(3)];
patch('Faces',fac,'Vertices',cube,'FaceVertexCData',cdata,'FaceColor','flat');
 
end
