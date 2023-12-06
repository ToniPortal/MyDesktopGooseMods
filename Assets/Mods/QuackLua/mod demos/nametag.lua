function Start()
    --Code here is executed once goose's cage is opened.
    goosename = Interface.MessageBoxInput("Goose Name?")
    return true
end
function Update()
    --Code here is executed every frame.
    pos = Goose.GetGooseProp("position")
    pos2 = Graphics.MeasureText(pos, goosename, "Black", 12)
    pos[1]=pos[1]-pos2[1]/2
    pos[2]=pos[2]+10
    pos3 = pos
    pos3[1] = pos3[1] + 5
    pos3[2] = pos3[2] + 5
    Graphics.DrawRect(pos, pos2, "Gold")
    Graphics.DrawText(pos3, goosename, "Black", 12)
    return true
end
return true