startX = 0;
endX = 3;
splineNumber = 6;
pointNumber = 5;

for i = 1:splineNumber
    xArray = [];
    
    for j = 1:pointNumber
        possibleXArray = startX:0.1:endX; % define the possible x values
        xArray = [xArray getUniqueRandomNumber(xArray, possibleXArray)];
    end
    
    xArray = sort(xArray)
    startX = xArray(pointNumber) + 0.1;
    endX = startX + pointNumber;
end

function uniqueValue = getUniqueRandomNumber(xArray, possibleXArray)
    uniqueValue = possibleXArray(randi([1,numel(possibleXArray)]));
    
    while ismember(uniqueValue, xArray)
        uniqueValue = possibleXArray(randi([1,numel(possibleXArray)]));
    end
end