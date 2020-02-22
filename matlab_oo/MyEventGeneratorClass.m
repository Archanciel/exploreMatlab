classdef MyEventGeneratorClass < handle
   events
      StateChange
      OtherEvent
      AlternateEvent
   end
   methods
      function triggerEvent(obj)
         notify(obj,'StateChange')
         notify(obj,'OtherEvent')
         obj.notify('OtherEvent') % alternate way of sending notification
         obj.notify('AlternateEvent') % alternate way of sending notification
      end
      
      function triggerAlternateEvent(obj)
         obj.notify('AlternateEvent') % alternate way of sending notification
      end
      
      function addListenerToEvent(obj, listener, eventStr)
          listener.createEventListener(obj, eventStr);
      end
   end
end