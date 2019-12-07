close all
v1 = [0;0;0]
v2 = [2;2;1]
v3 = [4;2;5]
M = [v1 v2 v3]

figure
%drawVerticesL(v1.',v2.',(v1 + v2).', v1.','b', 0.2);

drawVerticesL(v1.',v2.',(v1 + v2 + v3).', v3.','b', 0.2);
hold on
%drawVerticesL(v1 ,v2,(v1 + v2 - v3), v3,'r', 0.2);

function y = drawVerticesL(v1, v2, v3, v4, color,transparancy)
    x = [v1(1) v2(1) v3(1) v4(1)]
    y = [v1(2) v2(2) v3(2) v4(2)]
    z = [v1(3) v2(3) v3(3) v4(3)]
    patch=fill3(x, y, z, color);
    patch.FaceAlpha=transparancy;
end