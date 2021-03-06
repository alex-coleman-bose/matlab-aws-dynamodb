function setSS(obj, S)
% SETSS Set a cell array of attributes of type String
% Cell array entries should be of type character vector.

% Copyright 2019 The MathWorks, Inc.

if ~iscellstr(S) %#ok<ISCLSTR>
    % Create logger reference
    logObj = Logger.getLogger();
    write(logObj,'error','Expected S of type cell array of character vectors');
end

ArrayListJ = java.util.ArrayList;
for n = 1:numel(S)
    ArrayListJ.add(S{n});
end

obj.Handle.setSS(ArrayListJ);

end
