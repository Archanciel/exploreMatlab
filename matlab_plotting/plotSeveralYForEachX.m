A = ones(60,1);

for i = 1:5
    A(i) = 0.5;
end
for i = 6:15
    A(i) = 0.55;
end
for i = 16:30
    A(i) = 0.6;
end
for i = 31:60
    A(i) = 0.65;
end
A
B = zeros(length(A),1);

for i = 1:length(A)
    B(i) = i * 2;
end

D = [A, B]

close all
figure
subplot(2,1,1);
h=plot(D(:,1), D(:,2), 'k.'); % plot points
%h=plot(D(:,1), D(:,2), 'k'); % plot lines
set(h,'markersize',4); % if set to 1, points are not visible !
grid on
hold on

subplot(2,1,2);
h=plot(D(:,1), D(:,2), 'k'); % plot lines
grid on