classdef myClass
    properties
        value
    end   
    methods
        function self = myClass()
             self.value = 5;
        end
        function increment(obj)
             obj.value = obj.value + 1;          
        end
        function obj = add(obj, vv)
             obj.value = obj.value + vv;          
        end
    end   
end