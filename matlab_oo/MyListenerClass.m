classdef MyListenerClass < handle
    methods
        function obj = MyListenerClass(eventGenerator)
            addlistener(eventGenerator, 'StateChange', @obj.handleStateChange);
        end
        
        function ls = createListener(obj, eventGenerator)
            ls = addlistener(eventGenerator, 'OtherEvent', @obj.handleOtherEvent);
        end   
        
        function handleStateChange(obj, eventGenerator, eventData)
            % All callback functions must accept at least two arguments:
            %
            % 1/ the handle of the object that is the source of the event
            % 2/ an event.EventData object or an object that is derived 
            %    from the event.EventData class.
            fprintf('from handleStateChange (listener created from constructor)\n');
        end
        
        function handleOtherEvent(obj, eventGenerator, eventData)
            % All callback functions must accept at least two arguments:
            %
            % 1/ the handle of the object that is the source of the event
            % 2/ an event.EventData object or an object that is derived 
            %    from the event.EventData class.
            fprintf('from handleOtherEvent (listener created from createListener method)\n');
        end  
        
        function createListenerForEvent(obj, eventGenerator, eventStr)
            % This method is called by the event generator instance which ask the 
            % current listener instance to add itself as listener to the event generator 
            % instance.            
            addlistener(eventGenerator, eventStr, @obj.handleThisEvent);
        end  
        
        function handleThisEvent(obj, eventGenerator, eventData)
            % All callback functions must accept at least two arguments:
            %
            % 1/ the handle of the object that is the source of the event
            % 2/ an event.EventData object or an object that is derived 
            %    from the event.EventData class.
            fprintf('from handleThisEvent. Event = %s\n', eventData.EventName);
        end        
    end
end