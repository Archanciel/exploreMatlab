classdef myClassHandle < handle
    properties
        value
    end   
    methods
        function self = myClassHandle()
             self.value = 5;
        end
        function increment(obj)
             obj.value = obj.value + 1;          
        end
        function add(obj, vv)
             obj.value = obj.value + vv;          
        end
    end   
end