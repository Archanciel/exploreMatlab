classdef MyListenerClass < handle
    methods
        function obj = MyListenerClass(eventGenerator)
            addlistener(eventGenerator, 'StateChange', @obj.handleStateChange);
        end
        
        function ls = createListener(obj, eventGenerator)
            ls = addlistener(eventGenerator, 'OtherEvent', @obj.handleOtherEvent);
        end   
        
        function handleStateChange(obj, eventGenerator, eventData)
            fprintf('from handleStateChange (listener created from constructor)\n');
        end
        
        function handleOtherEvent(obj, eventGenerator, eventData)
            fprintf('from handleOtherEvent (listener created from createListener method)\n');
        end  
        
        function ls = createListenerForEvent(obj, eventGenerator, eventStr)
            % This method is called by the event generator instance which ask the 
            % current listener instance to add itself as listener to the event generator 
            % instance.            
            ls = addlistener(eventGenerator, eventStr, @obj.handleThisEvent);
        end  
        
        function handleThisEvent(obj, eventGenerator, eventData)
            fprintf('from handleThisEvent. Event = %s\n', eventData.EventName);
        end        
    end
end