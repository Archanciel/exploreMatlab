function y = pot_2d_matrix_vertices(M, lineWidth, color,transparancy)
%x = [v1(1) v2(1) v3(1) v4(1) v1(1)]
%y = [v1(2) v2(2) v3(2) v4(2) v1(2)]
x = M(1,:)
y = M(2,:)
%patch=fill3(x, y, z, color);
%patch.FaceAlpha=transparancy;
p=plot(x, y, 'Color', color);
p.LineWidth = lineWidth;