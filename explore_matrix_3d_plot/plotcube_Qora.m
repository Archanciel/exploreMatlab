xline = [0 10 10]
yline = [0 5 5]
zline = [0 7 7]
x = linspace(xline(1),xline(2),xline(3))
y = linspace(yline(1),yline(2),yline(3))
z = linspace(zline(1),zline(2),zline(3))

[a,b,c] = ndgrid(x,y,z)

Q = [1 0 1 0 1;1 4 1 2 4;1 1 4 4 2;1 4 1 2 4;1 1 4 4 2]
Q(:)
Q = [true false true true false;true true true false false;true false true true false;true true true false false;true false true true false;true false true true false;true true true false false;true false true true false;true true true false false;true false true true false]
a = a(Q(:))
b = b(Q(:))
c = c(Q(:))

plot3(a,b,c,'.')