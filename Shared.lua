-- Overrides print to call Console Log instead
print = function(...)
	local args = {...}
	local _tostring,_concat = tostring,table.concat

    for i = 1, select("#", ...) do
        args[i] = _tostring(args[i])
    end

    Console.Log(_concat(args, '\t'))
end

-- Generates a random seed based on the current time for this session
math.randomseed(os.time())
