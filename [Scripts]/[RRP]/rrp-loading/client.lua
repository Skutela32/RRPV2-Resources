local function randomizeLoadingScreen()
    local randomImage = "images/image" .. math.random(1, 3) .. ".jpg"
    local randomMusic = "music/music" .. math.random(1, 3) .. ".ogg"

    SetLoadingScreen({
        type = 4,
        status = "Loading...",
        text = "Please wait.",
        background = randomImage,
        music = randomMusic,
    })

    Citizen.Wait(1000) -- Adjust the duration if needed
end

Citizen.CreateThread(function()
    while true do
        randomizeLoadingScreen()
    end
end)