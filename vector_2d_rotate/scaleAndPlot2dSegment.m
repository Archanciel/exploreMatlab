p0 = [3 2]
p1 = [2 4]
scale = 2
p0_s = p0 .* scale
p1_s = p1 .* scale

close all
figure

plot(p0, p1)
hold on
plot(p0_s, p1_s)

configTwoDAxis()
