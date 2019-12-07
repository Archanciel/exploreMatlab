function y = configTwoDAxis(lim, tick)
    grid;
    xlabel('x');
    ylabel('y');;

    if ~exist('lim','var')
        lim = [0 10];
    end

    if ~exist('tick','var')
        tick = (0:1:10);
    end

    set(gca,'XLim',lim);
    set(gca,'XTick',tick);
    set(gca,'YLim',lim);
    set(gca,'YTick',tick);
end