local stringsUtils = require("/utils/strings")

local fileUtils = {}

function fileUtils.readPropertiesFile(path)
    properties = {}
    file = fs.open(path, "r")
    line = file.readLine()
    while line ~= nil do
        if string.find(line, "=") then
            parameter = stringsUtils.split(line, "=")
            if #parameter == 2 then
                properties[parameter[1]] = parameter[2]
            end
        end
        line = file.readLine()
    end
    file.close()

    return properties
end

return fileUtils