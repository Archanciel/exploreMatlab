%close all
figure
x = [1,2,3,4]
y = [1,2,3,7]
s = scatter(x,y,50);
delete(findobj(gca,'type', 'patch')) % not working
delete(s) % best solution
%delete(findobj(gca,'type', 'scatter')) % does work
%delete(findobj(gca,'SizeData', 50)) % does work