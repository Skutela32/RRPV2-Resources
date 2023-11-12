Config.Slots = 3

Config.EnableStarterItems = true
Config.StarterItems = {
    {name = 'phone', count = 1},
    {name = 'sandwich', count = 5},
    {name = 'water_bottle', count = 5},
}

Config.EnableStarterMoney = true
Config.StarterMoney = {
    {account = 'cash', amount = 0},
    {account = 'bank', amount = 0},
}

openSpawnSelector = function(src, cData)
    if Config.UseCustomSpawnSelector then
        TriggerClientEvent('rrp-spawn:client:openUI', src)
    else
        TriggerClientEvent('apartments:client:setupSpawnUI', src, cData)
    end
end