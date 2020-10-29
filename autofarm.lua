MINIMUM_FUEL_LEVEL=12

function refuel()
    if turtleNeedFuel == 0 then
        return true;
    end
    return turtle.refuel()
end

function goForward()
    while not turtle.detect() do
        turtle.forward()
    end
end

if not refuel() then
    print("Turtle refuel: FAIL")
    return false
end

print("Turtle refueld.")
turtle.forward()
turtle.down()

goForward()

local success, data = turtle.inspect()
if success then
    print("Block name:", data.name)
    print("Metadata", data.metadata)
    print(data)
end
