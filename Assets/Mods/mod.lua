function Start()
    -- Code here is executed once the goose's cage is opened.
    return true
end

follow = false
activateKey = "LeftCtrl"
mKey = "M"

desactivateKey = "RightShift"
function Update()
    -- Code here is executed every frame.

    local mpos = Input.Mouse.GetMousePos()
    local pos = Goose.GetGooseProp("position")

    if Input.Keyboard.GetKeyHeld(activateKey) and Input.Keyboard.GetKeyHeld(mKey) and not follow then
        follow = true
        Interface.MessageBox("The Goose Follow your mouse now !\n")
    end

    if Input.Keyboard.GetKeyHeld(desactivateKey) and follow then
        -- Goose.SetGooseProp("targetPos", {pos[1], pos[2]})
        follow = false
        Interface.MessageBox("The Goose not Follow your mouse...\n")
    end

    if follow then
        Goose.SetGooseProp("targetPos", {mpos[1], mpos[2]})
    end

    return true
end

return true
