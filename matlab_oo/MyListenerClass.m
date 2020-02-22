classdef MyListenerClass < handle
    methods
        function obj = MyListenerClass(eventGenerator)
            addlistener(eventGenerator, 'StateChange', @obj.handleStateChange);
        end
        function ls = createListener(obj, src)
            ls = addlistener(src, 'OtherEvent', @obj.handleOtherEvent);
        end   
        function handleStateChange(obj, src, eventData)
            fprintf('from handleStateChange (listener created from constructor)\n');
        end
        function handleOtherEvent(obj, src, eventData)
            fprintf('from handleOtherEvent (listener created from createListener method)\n');
        end        
        function ls = createEventListener(obj, src, eventStr)
            ls = addlistener(src, eventStr, @obj.handleThisEvent);
        end   
        function handleThisEvent(obj, src, eventData)
            fprintf('from handleThisEvent. Event = %s\n', eventData.EventName);
        end        
    end
end