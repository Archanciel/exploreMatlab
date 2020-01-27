% Using a value class
mc = myClass;
mc.increment; % mc,increment does not modify the mc instance
fprintf('mc value class was not modified by the increment() method !')
mc.value

newClass = mc.add(10);% here, unlike the increment method, the add method
                      % does return the copy of the mc instance on which
                      % the add method was applied

fprintf('mc value class was not modified by the add(10) method !')
mc.value % mc was not modified ...

fprintf('newClass received the modified copy of the mc value class !')
newClass.value

% Using a reference class, Here, we are in OO programming !
mch = myClassHandle;
mch.increment;
fprintf('mch handle class was modified by the increment() method !')
mch.value

mch.add(10);
fprintf('mch handle class was modified by the add(10) method !')
mch.value
