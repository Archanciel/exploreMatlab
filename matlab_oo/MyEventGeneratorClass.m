classdef MyEventGeneratorClass < handle
   events
      StateChange
      OtherEvent
      AlternateEvent
   end
   methods
      function triggerEvent(obj)
          fprintf('MyEventGeneratorClass.triggerEvent method called\n');
          notify(obj,'StateChange');
          notify(obj,'OtherEvent');
          obj.notify('OtherEvent'); % alternate way of sending notification
          obj.notify('AlternateEvent'); % alternate way of sending notification
      end
      
      function triggerAlternateEvent(obj)
          fprintf('MyEventGeneratorClass.triggerAlternateEvent method called\n');
          obj.notify('AlternateEvent') % alternate way of sending notification
      end
      
      function addListenerToEvent(obj, listener, eventStr)        
          % This method illustrates an alternative way of adding listeners to 
          % an event generator class. Instead of directly asking the listening
          % instance to add itself as listener to the event generator class, we
          % ask the event generator class to ask the listening class to add itself 
          % as listener of the event generator class.
          listener.createListenerForEvent(obj, eventStr);
      end
   end
end