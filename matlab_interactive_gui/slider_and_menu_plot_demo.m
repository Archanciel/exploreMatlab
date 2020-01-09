close all
clear all

global line

line{1} = [-8 5] % 2 points x coordinates
line{2} = [-4 7] % 2 points y coordinates
line{3} = 'p1'   % initial value of menu 

figure('position', [200 100 500 600]);

hplot = plot(line{1},line{2});

xMin = -10
xMax = 10
yMin = -10
yMax = 10
axis([xMin - 1, xMax + 1, yMin - 1, yMax + 1])
grid

SLIDER_POS_X = 150
MENU_POS_X = 70

% slider controlling x coordinates
xSlider = uicontrol('style','slider','units','pixel','position',[SLIDER_POS_X 20 300 20],...
    'sliderstep',[1/(xMax-xMin), 2/(xMax-xMin)],'max',xMax,'min',xMin, 'value',line{1}(1,1));
addlistener(xSlider,'ContinuousValueChange',@(hObject, event) sliderPlot_x(hObject, event,hplot));
line{4} = xSlider % required so that menu selection can update slider values
uicontrol('style','text',...
    'position',[SLIDER_POS_X - 10 30 10 10],'string', 'X');

% slider controlling y coordinates
ySlider = uicontrol('style','slider','units','pixel','position',[SLIDER_POS_X 0 300 20],...
    'sliderstep',[1/(xMax-xMin), 2/(xMax-xMin)],'max',xMax,'min',xMin, 'value',line{2}(1,1));
line{5} = ySlider
addlistener(ySlider,'ContinuousValueChange',@(hObject, event) sliderPlot_y(hObject, event,hplot));
uicontrol('style','text',...
    'position',[SLIDER_POS_X - 10 10 10 10],'string', 'Y');

% drop down menu to select which point is modified by the sliders 
menu = uicontrol('Style','popupmenu',...
    'position', [MENU_POS_X 20 60 20], 'string', {'p1','p2'});
menu.Callback = @menuSelection;

% callback functions

function sliderPlot_x(hObject,event,hplot)
    global line
    n = get(hObject,'Value')
    
    if line{3} == 'p1'
        line{1}(1,1) = n
    else
        line{1}(1,2) = n
    end
    
    set(hplot,'xdata',line{1});
    drawnow;
end

function sliderPlot_y(hObject,event,hplot)
    global line
    n = get(hObject,'Value')
    
    if line{3} == 'p1'
        line{2}(1,1) = n
    else
        line{2}(1,2) = n
    end
    
    set(hplot,'ydata',line{2});
    drawnow;
end

function menuSelection(hObject,event)
    global line
    
    val = get(hObject,'Value');
    str = get(hObject,'String');
    line{3} = str{val};
    xSlider = line{4};
    ySlider = line{5};

    if line{3} == 'p1'
        xSlider.Value = line{1}(1,1);
        ySlider.Value = line{2}(1,1);
    else
        xSlider.Value = line{1}(1,2);
        ySlider.Value = line{2}(1,2);
    end
end