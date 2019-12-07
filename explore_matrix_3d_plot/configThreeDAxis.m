function y = configTheeDAxis()
    lim = [0 10];
    tick = (0:1:10);
    configTwoDAxis(lim, tick);
    zlabel('z');
    set(gca,'ZLim',lim);
    set(gca,'ZTick',tick);
end