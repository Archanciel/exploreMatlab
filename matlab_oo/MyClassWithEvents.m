classdef MyClassWithEvents < handle
   events
      StateChange
      OtherEvent
   end
   methods
      function triggerEvent(obj)
         notify(obj,'StateChange')
         notify(obj,'OtherEvent')
         obj.notify('OtherEvent') % alternate way of sending notification
      end
   end
end