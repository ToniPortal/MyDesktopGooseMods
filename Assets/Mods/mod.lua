function Start()
    -- Code here is executed once the goose's cage is opened.
    return true
end

follow = false

function Update()
    -- Code here is executed every frame.
    shiftKey = "LeftShift" -- You might need to check the correct key identifier in the documentation.

    mpos = Input.Mouse.GetMousePos()
    pos = Goose.GetGooseProp("position")

    if Input.Keyboard.GetKeyHeld(shiftKey) and not follow then
        follow = true
    end

    if Input.Keyboard.GetKeyHeld(shiftKey) and follow then
        Goose.SetGooseProp("targetPos", {pos[1], pos[2]})
        follow = false
    end

    if follow then
        Goose.SetGooseProp("targetPos", {mpos[1], mpos[2]})
    end

    return true
end


return true
