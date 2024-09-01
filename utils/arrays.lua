local arraysUtils = {}

function arraysUtils.toString(array)
    arrayAsString = "["
    
    for i=0,#array do
        if #arrayAsString ~= 1 then
            arrayAsString = arrayAsString..", "
        end
        if type(array[i]) == "string" then
            arrayAsString = arrayAsString.."\""..array[i].."\""
        end
    end
    return arrayAsString.."]"
end

function arraysUtils.dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. arraysUtils.dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end

return arraysUtils