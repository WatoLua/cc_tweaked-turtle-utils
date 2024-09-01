local environmentUtils = {}

function environmentUtils.suckLeft(count)
    count = count or 64
    turtle.turnLeft()
    turtle.suck(count)
    turtle.turnRight()
end

function environmentUtils.suckRight(count)
    count = count or 64
    turtle.turnRight()
    turtle.suck(count)
    turtle.turnLeft()
end

function environmentUtils.suckBack(count)
    count = count or 64
    turtle.turnRight()
    turtle.turnRight()
    turtle.suck(count)
    turtle.turnRight()
    turtle.turnRight()
end

function environmentUtils.suckAt(side, count)
    side = side or "front"
    count = count or 64
    if side == "left" then
        environmentUtils.suckLeft(count)
    elseif side == "right" then
        environmentUtils.suckRight(count)
    elseif side == "back" then
        environmentUtils.suckBack(count)
    elseif side == "front" then
        turtle.suck()
    elseif side == "up" then
        turtle.suckUp()
    elseif side == "down" then
        turtle.suckDown()
    else
        print("Error : Invalid given side to suck")
    end
end

function environmentUtils.dropLeft(count)
    count = count or 64
    turtle.turnLeft()
    turtle.drop(count)
    turtle.turnRight()
end

function environmentUtils.dropRight(count)
    count = count or 64
    turtle.turnRight()
    turtle.drop(count)
    turtle.turnLeft()
end

function environmentUtils.dropBack(count)
    count = count or 64
    turtle.turnRight()
    turtle.turnRight()
    turtle.drop(count)
    turtle.turnRight()
    turtle.turnRight()
end

function environmentUtils.dropAt(side, count)
    side = side or "front"
    count = count or 64
    if side == "left" then
        environmentUtils.dropLeft(count)
    elseif side == "right" then
        environmentUtils.dropRight(count)
    elseif side == "back" then
        environmentUtils.dropBack(count)
    elseif side == "front" then
        turtle.drop()
    elseif side == "up" then
        turtle.dropUp()
    elseif side == "down" then
        turtle.dropDown()
    else
        print("Error : Invalid given side to drop")
    end
end

function environmentUtils.scanForward()
    found, item = turtle.inspect()
    result = ""
    if item ~= nil then
        result = item.name
    else
        result = "minecraft:empty"
    end
    return result
end

return environmentUtils
