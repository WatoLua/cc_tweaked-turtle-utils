local environmentUtils = require("/utils/environment")

local inventoryUtils = {}

function inventoryUtils.cleanInventoryAt(side)
    side = side or "front"
    for i=1,16 do
        turtle.select(i)
        environmentUtils.dropAt(side)
    end
end

function inventoryUtils.isInventoryFull()
    currentSlot = turtle.getSelectedSlot()
    for i=1,16 do
        turtle.select(i)
        item = turtle.getItemDetail()
        if item == nil then
            turtle.select(currentSlot)
            return false
        end
    end
    turtle.select(currentSlot)
    return true
end

return inventoryUtils
