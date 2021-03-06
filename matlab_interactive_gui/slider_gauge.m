%{
fig = uifigure;
sld = uislider(fig,'Value',50);
sld.Limits = [-50 50];
sld.Value = 35;
%}

%{
fig = uifigure;
pnl = uipanel(fig);
sld = uislider(pnl,'Position',[50 50 150 3]);
sld.Limits = [-50 50];
sld.Value = 35;
%}

function slidervalue
% Create figure window and components

fig = uifigure('Position',[100 100 350 275]);

cg = uigauge(fig,'Position',[100 100 120 120]);

sld = uislider(fig,...
    'Position',[100 75 120 3],...
    'ValueChangedFcn',@(sld,event) updateGauge(sld,cg));

end

% Create ValueChangedFcn callback
function updateGauge(sld,cg)
cg.Value = sld.Value;
end