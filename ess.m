numericalMajorTickArray = -1:0.1:1; 
stringMajorTickArray = cellstr(strsplit(num2str(numericalMajorTickArray)))
REPLACE_NUMBER = 3
n = REPLACE_NUMBER
for i = 1:length(stringMajorTickArray)
    if n < REPLACE_NUMBER
        stringMajorTickArray{i} = {' '};
        n = n + 1;
    else
        n = 0;
    end
end
stringMajorTickArray
