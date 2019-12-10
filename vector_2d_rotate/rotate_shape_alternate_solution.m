%//////////////////////////////////%

piont1 = [1; 0] ;% our Points

piont2 = [3; 0] ;

piont3 = [2; 1] ;

piont4 = [2; -1] ;

coordinate = [0; 0];%Coordinate of rotation

angleInDegrees = 90.00 ;%rotation angle in "degree"

%//////////////////////////////////%

original = [[piont1; 1], [piont2; 1], [piont3; 1], [piont4; 1]] ;%corrdinate of rotation

angleInRadians = degToRad(angleInDegrees);

m = coordinate(1, 1) ;

n = coordinate(2, 1) ;

first = [1 0 -m;0 1 -n;0 0 1];

third = [1 0 m; 0 1 n; 0 0 1];

second = [cos(angleInRadians) -sin(angleInRadians) 0; sin(angleInRadians) cos(angleInRadians) 0; 0 0 1];

rotated_point = third* second* first*original

Rpoints(1,:) = rotated_point (1,:,:) ;

Rpoints(2,:) = rotated_point (2,:,:) ;

%Rpoints has the answers

