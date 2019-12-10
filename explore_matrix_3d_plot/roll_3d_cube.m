 clear all;clc 
 A = [0 0 0];
 B = [1 0 0];
 C = [0 1 0];
 D = [0 0 1];
 E = [0 1 1];
 F = [1 0 1];
 G = [1 1 0];
 H = [1 1 1];
 P = [A;B;F;H;G;C;A;D;E;H;F;D;E;C;G;B];
 plot3(P(:,1),P(:,2),P(:,3),'g'), hold on % original cube
 roll = 360; pitch = 360; yaw = 360;
 dcm = angle2dcm(yaw, pitch, roll);
 P = P*dcm;
 plot3(P(:,1),P(:,2),P(:,3)) % rotated cube
 plot3(0,0,0,'or')