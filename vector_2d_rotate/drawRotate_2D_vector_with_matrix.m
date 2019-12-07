vStart = [1 2]
%vStart = [0 0]
vEnd = [8 5]
beta = 30 % 30 degree counterclockwise rotation

close all
figure;

vectarrow(vStart,vEnd)

% Rotating vEnd - vStart segment using formula
vOrigin = vEnd - vStart
x2 = (vOrigin(1) * cosd(beta)) - (vOrigin(2) * sind(beta))
y2 = (vOrigin(1) * sind(beta)) + (vOrigin(2) * cosd(beta))
vOriginRotated = [x2 y2]
vRotated = vOriginRotated + vStart

% nonsense !
vRotatedLength = norm(vRotated); 
vEndLength = norm(vEnd);
fprintf('Segment length: invalid since norm or magnitude applicable to vector only, not to segment\nvRotatedLength: %7.4f  vEndLength: %7.4f', vRotatedLength, vEndLength)

vOriginLength = norm(vOrigin)
vOriginRotatedLength = norm(vOriginRotated)

vectarrow(vStart, vRotated)

% Rotating vEnd - vStart segment using simple rotation matrix
% (versus homogenous coodinates matrix)
R = [cosd(beta) -sind(beta);sind(beta) cosd(beta)]
vOriginRotated_R = R * vOrigin'
vRotated_R = vOriginRotated_R + vStart'
vectarrow(vStart, vRotated_R) 

vOriginLength
vOriginRotatedLength_R = norm(vOriginRotated_R)

configTwoDAxis()