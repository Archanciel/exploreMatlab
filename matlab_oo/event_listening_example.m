eventGenerator = MyClassWithEvents();
eventListener = MyListenerClass(eventGenerator); % setting listener in constructor
eventListener.createListener(eventGenerator); % setting listener in specific method

fprintf('now firing trigger\n')
eventGenerator.triggerEvent();