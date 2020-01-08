clear all
global data_cell
data_cell = {1 2 3}

a = one()
fprintf('after one')
data_cell

b = two()
fprintf('after two')
data_cell

function f = one()
    global data_cell
    fprintf('inside one')
    data_cell{1} = data_cell{1} + 1
    f = 1
end

function f = two()
    global data_cell
    fprintf('inside two')
    data_cell{1} = data_cell{1} * 10
    f = 2
end