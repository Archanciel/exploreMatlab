majorTicksNumber = 5;
axMin = -1
axMax = 1.9

computeMajorTicksArray(axMin,...
                       axMax,...
                       majorTicksNumber)

majorTicksNumber = 5;
axMin = 0
axMax = 100;

computeMajorTicksArray(axMin,...
                       axMax,...
                       majorTicksNumber)


function majorTicksArray = computeMajorTicksArray(axMin,...
                                                  axMax,...
                                                  majorTicksNumber)
axRange = axMax - axMin;
majorTicksLength = axRange / majorTicksNumber;

majorTicksArray = zeros(1, majorTicksNumber);

for i = 1:majorTicksNumber
    majorTick = axMin + (i * majorTicksLength);
    majorTicksArray(i) = round(majorTick, 1);
end
end