local stringsUtils = {}

function stringsUtils.split(str, sep)
    local result = {}
    local regex = ("([^%s]+)"):format(sep)
    for each in str:gmatch(regex) do
       table.insert(result, each)
    end
    return result
end

function stringsUtils.trim(s)
    return s:match( "^%s*(.-)%s*$" )
end

return stringsUtils