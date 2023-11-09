local function randomizeLoadingScreen()
    local randomImage = "images/image" .. math.random(1, 3) .. ".jpg"
    local randomMusic = "music/music" .. math.random(1, 3) .. ".ogg"

    SetLoadingPromptTextEntry("STRING")
    AddTextComponentSubstringPlayerName("Loading...")
    Citizen.Wait(0)

    BeginTextCommandBusyspinnerOn("STRING")
    AddTextComponentSubstringPlayerName("Please wait.")
    EndTextCommandBusyspinnerOn(4)

    NuiCreateFrame("html/index.html", "html/index.html")

    SendNUIMessage({
        image = randomImage,
        music = randomMusic,
    })

    Citizen.Wait(1000) -- Adjust the duration if needed
end

Citizen.CreateThread(function()
    while true do
        randomizeLoadingScreen()
    end
end)