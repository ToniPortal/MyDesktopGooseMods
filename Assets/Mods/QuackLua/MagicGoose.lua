function Start()
    -- Le code ici est exécuté une fois que la cage de l'oie est ouverte.
    return true
end

local revien = false
local actionExecuted = false

-- Pour la propriété de l'oie :
-- La première valeur est X
-- La deuxième valeur est Y

function Update()
    -- Le code ici est exécuté à chaque image.

    randomNumber = math.random(1, 50)
    pos = Goose.GetGooseProp("targetPos")

    if pos[1] < 2 and not revien and not actionExecuted then
        Interface.MessageBox("Il va revenir")
        revien = true
    end

    if revien then
        -- Attendre 7 secondes avant de vérifier à nouveau
        if pos[1] > 200 and pos[2] < 500 and not actionExecuted then
            -- Interface.MessageBox("Salut")
            movegoose()
            actionExecuted = true
        end
    end

    if revien then
        -- Attendre 7 secondes avant de vérifier à nouveau
        if pos[1] > 1200 and pos[2] < 1900 and not actionExecuted then
            -- Interface.MessageBox("Salut")
            movegoose()
            actionExecuted = true
        end
    end


    if revien and actionExecuted then
        actionExecuted = false
        revien = false
    end

    return true
end

function movegoose()
    whero = math.random(1, 1)

    if whero == 1 then
        randomX = math.random(20, 1900)
        randomY = 20
        Goose.SetGooseProp("direction", 35)
        Goose.SetGooseProp("targetPos", {randomX, randomY + 250})

    end

    -- Définir la position de l'oie sur le bord de l'écran
    Goose.SetGooseProp("position", {randomX, randomY})

end


return true
