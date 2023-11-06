Config.Slots = 3

Config.EnableStarterItems = true
Config.StarterItems = {
    {name = 'phone', count = 1},
    {name = 'welcomebooklet', count = 1},
}

Config.EnableStarterMoney = true
Config.StarterMoney = {
    {account = 'cash', amount = 350},
    {account = 'bank', amount = 1750},
}

openSpawnSelector = function(src, cData)
    if Config.UseCustomSpawnSelector then
        TriggerClientEvent('vms_spawnselector:open', src)
    else
        TriggerClientEvent('apartments:client:setupSpawnUI', src, cData)
    end
end