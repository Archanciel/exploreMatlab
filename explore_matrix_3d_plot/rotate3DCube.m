X = [0, 4, 4, 0
    0, 4, 4, 0
    0, 0, 0, 0
    0, 4, 4, 0
    4, 4, 4, 4
    4, 4, 0, 0] ;
Y = [0, 0, 3, 3
    0, 0, 3, 3
    0, 0, 3, 3
    0, 0, 0, 0
    0, 3, 3, 0
    3, 3, 3, 3] ;
Z = [0, 0, 0, 0
    1, 1, 1, 1
    0, 1, 1, 0
    0, 0, 1, 1
    0, 0, 1, 1
    0, 1, 1, 0] ;
C = {'blue' ;'red' ; 'green' ; 'yellow' ; 'magenta' ; 'cyan'};
figure
hold on
for i = 1:6
    patch(X(i,:), Y(i,:), Z(i,:),C{i}) ;
end
axis square
view(3)
%% Rotate
th = linspace(0,2*pi) ;
for i = 1:length(th)
    R = [1 0 0 ;0 cos(th(i)) -sin(th(i)) ; 0 sin(th(i)) cos(th(i))] ;
    T = [X(:) Y(:) Z(:)]*R ;
    Xi = reshape(T(:,1),[],4) ;
    Yi = reshape(T(:,2),[],4) ;
    Zi = reshape(T(:,3),[],4) ;
    figure(1)
    hold on
    for j = 1:6
        patch(Xi(j,:), Yi(j,:), Zi(j,:),C{j}) ;
    end
    axis square
    view(3)
    drawnow
    hold off
    clf
    
end