x=linspace(0,2*pi,4000);

for omega=1:0.1:5

    y=sin(omega*x);

    plot(x,y)

    drawnow

    pause(0.5)

end