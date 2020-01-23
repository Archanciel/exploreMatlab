

appDa = ApplicationSharedData('init val', 'val');
fprintf('After contruction');
appDa.currentSelection
appDa.value

f1(appDa);
fprintf('After f1 call');
appDa.currentSelection
appDa.value

f2(appDa);
fprintf('After f2 call');
appDa.currentSelection
appDa.value

appDa.currentSelection = 'coucou';
fprintf('After setting property');
appDa.currentSelection
appDa.value

function f1(appData)
    appData.setValue('f1');
end

function f2(appData)
    appData.setValue('f2');
end