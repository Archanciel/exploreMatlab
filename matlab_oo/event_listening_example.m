eventGenerator = MyEventGeneratorClass();
eventListener = MyListenerClass(eventGenerator); % setting listener in constructor
eventListener.createListener(eventGenerator); % setting listener in specific method

fprintf('now firing trigger\n')
eventGenerator.triggerEvent();

fprintf('\nnow testing MyEventGeneratorClass.addListenerToEvent\n\n');

eventGenerator.addListenerToEvent(eventListener, 'AlternateEvent');
eventGenerator.triggerEvent();
eventGenerator.triggerAlternateEvent();
