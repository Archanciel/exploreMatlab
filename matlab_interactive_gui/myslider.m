close all
clear all
figure
x = 1:100;
hplot = plot(x,0*x);
h = uicontrol('style','slider','units','pixel','position',[20 20 300 20],'sliderstep',[1/(10-1), 2/(10-1)],'max',10,'min',1, 'value',1);
addlistener(h,'ContinuousValueChange',@(hObject, event) makeplot(hObject, event,x,hplot));

function makeplot(hObject,event,x,hplot)
    n = get(hObject,'Value')
    set(hplot,'ydata',x.^n);
    drawnow;
end