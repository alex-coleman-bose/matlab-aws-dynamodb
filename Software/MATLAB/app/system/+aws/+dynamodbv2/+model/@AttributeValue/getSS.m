function result = getSS(obj)
% GETSS gets a set of attributes of type String
% Result is returned as a cell array of character vectors.

% Copyright 2019 The MathWorks, Inc.

resultJ = obj.Handle.getSS();

size = resultJ.size();
result = cell(size,1);

if size > 0
    % get the iterator
    iteratorJ = resultJ.iterator();
    ctr = 1;
    while iteratorJ.hasNext()
        result{ctr} = char(iteratorJ.next());
        ctr = ctr + 1;
    end
end

end
