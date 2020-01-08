% Plot different plots according to slider location.
S.fh = figure('units','pixels',...
              'position',[300 300 300 400],...
              'menubar','none',...
              'name','slider_plot',...
              'numbertitle','off',...
              'resize','off');    
S.x = 0:.01:2;  % For plotting.         
S.ax = axes('unit','pix',...
            'position',[20 160 260 210]);
S.LN = plot(S.x,S.x,'r')        
S.ax.XLim = [0 2]
S.ax.YLim = [0 10]
S.sl_one = uicontrol('style','slide',...
                 'unit','pix',...
                 'position',[20 10 260 30],...
                 'min',1,'max',10,'val',1,...
                 'sliderstep',[1/20 1/20],...
                 'callback',{@sl_call_one,S});  
S.sl_two = uicontrol('style','slide',...
                 'unit','pix',...
                 'position',[20 50 260 30],...
                 'min',1,'max',10,'val',1,...
                 'sliderstep',[1/20 1/20],...
                 'callback',{@sl_call_two,S});  
S.sl_three = uicontrol('style','slide',...
                 'unit','pix',...
                 'position',[20 90 260 30],...
                 'min',1,'max',10,'val',1,...
                 'sliderstep',[1/20 1/20],...
                 'callback',{@sl_call_three,S});  

global call_back_io_data
call_back_io_data{1} = 2 % a value
call_back_io_data{2} = 5 % b value
call_back_io_data{3} = 10 % c value

function [] = sl_call_one(varargin)
    % Callback for the slider sl_one.
    global call_back_io_data

    [h,S] = varargin{[1,3]};  % calling handle and data structure.
    a = get(h,'value')
    call_back_io_data{1} = a
    b = call_back_io_data{2}
    c = call_back_io_data{3}
    syms x
    y = a * x^2 + b * x + c
    yy = subs(y, S.x)
    set(S.LN,'ydata',yy)
end
             
function [] = sl_call_two(varargin)
    % Callback for the slider sl_two.
    global call_back_io_data

    [h,S] = varargin{[1,3]};  % calling handle and data structure.
    b = get(h,'value')
    call_back_io_data{2} = b
    a = call_back_io_data{1}
    c = call_back_io_data{3}
    syms x
    y = a * x^2 + b * x + c
    yy = subs(y, S.x)
    set(S.LN,'ydata',yy)
end
             
function [] = sl_call_three(varargin)
    % Callback for the slider sl_two.
    global call_back_io_data

    [h,S] = varargin{[1,3]};  % calling handle and data structure.
    c = get(h,'value')
    call_back_io_data{3} = c
    a = call_back_io_data{1}
    b = call_back_io_data{2}
    syms x
    y = a * x^2 + b * x + c
    yy = subs(y, S.x)
    set(S.LN,'ydata',yy)
end