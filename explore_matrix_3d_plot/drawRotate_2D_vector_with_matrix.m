vStart = [1 2]
%vStart = [0 0]

vEnd = [8 5]
close all
figure;

vectarrow(vStart,vEnd)

beta = 30 % 30 degree counterclockwise rotation
vOrigin = vEnd - vStart
vOriginLength = norm(vOrigin)
x2 = (vOrigin(1) * cosd(beta)) - (vOrigin(2) * sind(beta))
y2 = vOrigin(2) * cosd(beta) + vOrigin(1) * sind(beta)
vOriginRotated = [x2 y2]

R = [cosd(beta) -sind(beta);cosd(beta) sind(beta)]
vOriginRotated_R = R * vOrigin'
vOriginRotated_R = vOrigin * R'


vRotated = vOriginRotated + vStart
vRotatedLength = norm(vRotated) % non sence !
vEndLength = norm(vEnd) % non sence !
vOriginLength
vOriginRotatedLength = norm(vOriginRotated)
vectarrow(vStart, vRotated)