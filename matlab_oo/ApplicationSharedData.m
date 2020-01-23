classdef ApplicationSharedData < handle
    properties
        value = ''
        currentSelection = ''
    end
    methods
        function obj = ApplicationSharedData(selection, value)
            obj.value = value;
            obj.currentSelection = selection;
        end
        
        % defining explicit setterR
        function obj = setValue(obj, value)
            obj.value = value;
        end
        
        % using property setter (similar to python @property annotaton)
        function obj = set.currentSelection(obj, value)
            fprintf('from implicit property setter')
            upper(value)
            obj.currentSelection = value;
        end
    end
end