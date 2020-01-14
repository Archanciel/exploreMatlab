close all
clear all

global global_line_data

global_line_data{1} = [-8 5] % 2 points x coordinates
global_line_data{2} = [-4 7] % 2 points y coordinates
global_line_data{3} = 'p1'   % initial value of menu 

figure('position', [200 100 500 600]);

hplot = plot(global_line_data{1},global_line_data{2});

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
    'sliderstep',[1/(xMax-xMin), 2/(xMax-xMin)],'max',xMax,'min',xMin, 'value',global_line_data{1}(1,1));
addlistener(xSlider,'ContinuousValueChange',@(hObject, event) sliderPlot_x(hObject, event,hplot));
global_line_data{4} = xSlider % required so that menu selection can update slider values
uicontrol('style','text',...
    'position',[SLIDER_POS_X - 10 30 10 10],'string', 'X');

% slider controlling y coordinates
ySlider = uicontrol('style','slider','units','pixel','position',[SLIDER_POS_X 0 300 20],...
    'sliderstep',[1/(xMax-xMin), 2/(xMax-xMin)],'max',xMax,'min',xMin, 'value',global_line_data{2}(1,1));
global_line_data{5} = ySlider
addlistener(ySlider,'ContinuousValueChange',@(hObject, event) sliderPlot_y(hObject, event,hplot));
uicontrol('style','text',...
    'position',[SLIDER_POS_X - 10 10 10 10],'string', 'Y');

% drop down menu to select which point is modified by the sliders 
menu = uicontrol('Style','popupmenu',...
    'position', [MENU_POS_X 20 60 20], 'string', {'p1','p2','p3'});
menu.Callback = @menuSelection;

% callback functions

function sliderPlot_x(hObject,event,hplot)
    global global_line_data
    n = get(hObject,'Value')
    
    if global_line_data{3} == 'p1'
        global_line_data{1}(1,1) = n
    else
        global_line_data{1}(1,2) = n
    end
    
    set(hplot,'xdata',global_line_data{1});
    drawnow;
end

function sliderPlot_y(hObject,event,hplot)
    global global_line_data
    n = get(hObject,'Value')
    
    if global_line_data{3} == 'p1'
        global_line_data{2}(1,1) = n
    else
        global_line_data{2}(1,2) = n
    end
    
    set(hplot,'ydata',global_line_data{2});
    drawnow;
end

function menuSelection(hObject,event)
    global global_line_data;
    
    val = get(hObject,'Value');
    str = get(hObject,'String');

    % saving menu selection into global_line_data so the two slider
    % callback functions can operate on the right point
    global_line_data{3} = str{val};

    % get slider references
    xSlider = global_line_data{4};
    ySlider = global_line_data{5};

    switch global_line_data{3}
        case 'p1'
            xSlider.Value = global_line_data{1}(1,1);
            ySlider.Value = global_line_data{2}(1,1);
        case 'p2'
            xSlider.Value = global_line_data{1}(1,2);
            ySlider.Value = global_line_data{2}(1,2);
        otherwise
            error('Invalid selection %s', global_line_data{3});
    end
end