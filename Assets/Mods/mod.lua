function Start()
    -- Le code ici est exécuté une fois que la cage de l'oie est ouverte.
    return true
end

-- Utiliser la fonction pour obtenir la largeur de l'écran

local revien = false
local actionExecuted = false

-- Pour la propriété de l'oie :
-- La première valeur est X
-- La deuxième valeur est Y

function Update()
    -- Le code ici est exécuté à chaque image.

    pos = Goose.GetGooseProp("targetPos")
    randomNumber = math.random(1, 2)

    if pos[1] < 2 and not revien and not actionExecuted then
        -- Interface.MessageBox("He come back")
        revien = true
    end

    if pos[1] > 1900 and not revien and not actionExecuted then
        -- Interface.MessageBox("He come back")
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
    whero = math.random(1, 4)

    if whero == 1 then
        -- Viens d'en haut
        randomX = math.random(20, 1200)
        randomY = 20
        Goose.SetGooseProp("direction", 35)
        Goose.SetGooseProp("targetPos", {randomX, randomY + 250})
        -- Définir la position de l'oie sur le bord de l'écran
        Goose.SetGooseProp("position", {randomX, randomY})
    elseif whero == 2 then
        -- Viens d'en bas
        randomX = math.random(20, 1200)
        randomY = 950
        Goose.SetGooseProp("direction", 0)
        Goose.SetGooseProp("targetPos", {randomX, randomY - 300})
        -- Définir la position de l'oie sur le bord de l'écran
        Goose.SetGooseProp("position", {randomX, randomY})
    elseif whero == 3 then
        -- Viens d'a droite
        randomX = 1920
        randomY = math.random(200, 800)
        Goose.SetGooseProp("targetPos", {randomX - 500, randomY})
        -- Définir la position de l'oie sur le bord de l'écran
        Goose.SetGooseProp("position", {randomX, randomY})
    elseif whero == 4 then
        randomX = -20
        randomY = math.random(20, 1200)
        Goose.SetGooseProp("direction", 90)
        Goose.SetGooseProp("targetPos", {randomX, randomY - 250})
        -- Définir la position de l'oie sur le bord de l'écran
        Goose.SetGooseProp("position", {randomX, randomY})
    end

end

return true