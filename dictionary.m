% doc: https://ch.mathworks.com/help/matlab/ref/containers.map.html
c = containers.Map
c('foo') = 1
c(' not a var name ') = 2
keys(c)
values(c)
two = c(' not a var name ')
one = c('foo')