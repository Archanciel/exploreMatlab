eventGenerator = MyEventGeneratorClass();
eventListener = MyListenerClass(eventGenerator); % setting listener in constructor
eventListener.createListener(eventGenerator); % setting listener in specific method

fprintf('now firing trigger\n')
eventGenerator.triggerEvent();

fprintf('now testing addListenerToEvent\n');

eventGenerator.addListenerToEvent(eventListener, 'AlternateEvent');
eventGenerator.triggerEvent();
eventGenerator.triggerAlternateEvent();
