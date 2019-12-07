vStart = [1 2]
%vStart = [0 0]

vEnd = [8 5]
close all
figure('units','normalized','outerposition',[0 0 1 1])

vectarrow(vStart,vEnd)

beta = 30 % 30 degree counterclockwise rotation
vOrigin = vEnd - vStart
vOriginLength = norm(vOrigin)
x2 = (vOrigin(1) * cosd(beta)) - (vOrigin(2) * sind(beta))
y2 = vOrigin(2) * cosd(beta) + vOrigin(1) * sind(beta)
vOriginRotated = [x2 y2]
vRotated = vOriginRotated + vStart
vRotatedLength = norm(vRotated) % nonsence !
vEndLength = norm(vEnd) % nonsence !
vOriginLength
vOriginRotatedLength = norm(vOriginRotated)
vectarrow(vStart, vRotated)