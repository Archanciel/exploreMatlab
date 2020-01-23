classdef MyClassWithEvents < handle
   events
      StateChange
      OtherEvent
   end
   methods
      function triggerEvent(obj)
         notify(obj,'StateChange')
         notify(obj,'OtherEvent')
      end
   end
end