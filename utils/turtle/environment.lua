local environmentUtils = {}

function environmentUtils.suckLeft(count)
    count = count or 64
    turtle.turnLeft()
    found, reason = turtle.suck(count)
    turtle.turnRight()
    return found, reason
end

function environmentUtils.suckRight(count)
    count = count or 64
    turtle.turnRight()
    found, reason = turtle.suck(count)
    turtle.turnLeft()
    return found, reason
end

function environmentUtils.suckBack(count)
    count = count or 64
    turtle.turnRight()
    turtle.turnRight()
    found, reason = turtle.suck(count)
    turtle.turnRight()
    turtle.turnRight()
    return found, reason
end

function environmentUtils.suckAt(side, count)
    side = side or "front"
    count = count or 64
    if side == "left" then
        return environmentUtils.suckLeft(count)
    elseif side == "right" then
        return environmentUtils.suckRight(count)
    elseif side == "back" then
        return environmentUtils.suckBack(count)
    elseif side == "front" then
        return turtle.suck()
    elseif side == "up" then
        return turtle.suckUp()
    elseif side == "down" then
        return turtle.suckDown()
    else
        print("Error : Invalid given side to suck")
    end
end

function environmentUtils.dropLeft(count)
    count = count or 64
    turtle.turnLeft()
    dropped, reason = turtle.drop(count)
    turtle.turnRight()
    return dropped, reason
end

function environmentUtils.dropRight(count)
    count = count or 64
    turtle.turnRight()
    dropped, reason = turtle.drop(count)
    turtle.turnLeft()
    return dropped, reason
end

function environmentUtils.dropBack(count)
    count = count or 64
    turtle.turnRight()
    turtle.turnRight()
    dropped, reason = turtle.drop(count)
    turtle.turnRight()
    turtle.turnRight()
    return dropped, reason
end

function environmentUtils.dropAt(side, count)
    side = side or "front"
    count = count or 64
    if side == "left" then
        return environmentUtils.dropLeft(count)
    elseif side == "right" then
        return environmentUtils.dropRight(count)
    elseif side == "back" then
        return environmentUtils.dropBack(count)
    elseif side == "front" then
        return turtle.drop()
    elseif side == "up" then
        return turtle.dropUp()
    elseif side == "down" then
        return turtle.dropDown()
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
