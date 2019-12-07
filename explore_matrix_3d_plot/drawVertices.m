function y = drawVertices(v1, v2, v3, v4, color,transparancy)
x = [v1(1) v2(1) v3(1) v4(1)]
y = [v1(2) v2(2) v3(2) v4(2)]
z = [v1(3) v2(3) v3(3) v4(3)]
patch=fill3(x, y, z, color);
patch.FaceAlpha=transparancy;