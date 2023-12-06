function Start()
    --Code here is executed once goose's cage is opened.
    -- goosename = Interface.MessageBoxInput("Goose Name?")
    return true
end

-- 1 c'est gooseX
-- Y c'est 2

function Update()
    -- Code here is executed every frame.
    randomNumber = math.random(1, 50)
    pos = Goose.GetGooseProp("position")

    if randomNumber == 50 then
        ask = Interface.MessageBoxAsk("Want to see the goose's position?")

        if ask == true then
            -- Format the table as a string
            posString = formatTableToString(pos)
            
            -- Set the new position
            Interface.MessageBox("Goose's Position:\n" .. posString)
            ask = false
        end
    end

    return true
end

-- Function to format a table as a string
function formatTableToString(tbl)
    local result = "{\n"
    for key, value in pairs(tbl) do
        result = result .. "  " .. key .. ": " .. tostring(value) .. "\n"
    end
    result = result .. "}"
    return result
end

return true