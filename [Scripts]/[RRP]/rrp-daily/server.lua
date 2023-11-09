QBCore = nil
local timecache, collecting = {}, {}

Citizen.CreateThread(function()
    TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
    while QBCore == nil do Wait(0) end
end)

Citizen.CreateThread(function()
    exports['ghmattimysql']:ready(function()
        exports['ghmattimysql']:execute("SELECT identifier, next_collect FROM daily_free", {}, function(data)
            for k, v in ipairs(data) do
                timecache[v.identifier] = v.next_collect
            end
        end)
    end)
end)

function getSteamIdentifier(identifiers)
    for k, v in ipairs(identifiers) do
        if v:find("steam") then return v end
    end
    return nil
end

function copyTbl(obj)
    if type(obj) ~= 'table' then return obj end
    local res = {}
    for k, v in pairs(obj) do res[copyTbl(k)] = copyTbl(v) end
    return res
end

RegisterServerEvent("free:updateTimeout")
AddEventHandler("free:updateTimeout", function()
    local _source = source
    local identifier = getSteamIdentifier(GetPlayerIdentifiers(_source))
    if not identifier then return end
    local now = os.time()
    if timecache[identifier] then
        TriggerClientEvent("free:setTimeout", _source, timecache[identifier])
    else
        exports['ghmattimysql']:execute('SELECT `next_collect` FROM `daily_free` WHERE `identifier`=@identifier;', {['@identifier'] = identifier}, function(collect)
            if collect[1] then
                TriggerClientEvent("free:setTimeout", _source, collect[1].next_collect)
                timecache[identifier] = collect[1].next_collect
            else
                TriggerClientEvent("free:setTimeout", _source, 0)
                timecache[identifier] = 0
            end
        end)
    end
end)

function giveItem(it, xPlayer)
    if not it or not xPlayer then return end
    if it.type == 1 and it.value then
        xPlayer.addMoney(it.value)
    elseif it.type == 2 and it.item and it.count then
        xPlayer.addInventoryItem(it.item, it.count)
    elseif it.type == 3 and it.weapon and it.ammo then
        TriggerClientEvent("free:giveWpn", xPlayer.source, it.weapon, it.ammo)
    end
end

function claimRewards(xPlayer)
    -- Modify this function according to QBcore rewards system
end

RegisterServerEvent("free:collect")
AddEventHandler("free:collect", function(t)
    local _source = source
    if collecting[_source] then return end
    collecting[_source] = true
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    local identifier = xPlayer.PlayerData.citizenid
    local now = os.time()
    local nextcollect = os.time() + 86399
    if timecache[identifier] then
        if timecache[identifier] > now then
            TriggerClientEvent("free:setTimeout", _source, timecache[identifier])
            TriggerClientEvent("chatMessage", _source, "Daily Free", {255, 0, 0}, "It's still not time...")
            collecting[_source] = nil
            return
        end
    end
    exports['ghmattimysql']:execute('SELECT * FROM `daily_free` WHERE `identifier`=@identifier;', {['@identifier'] = identifier}, function(collect)
        if collect[1] then
            if collect[1].next_collect < now then
                claimRewards(xPlayer)
                TriggerClientEvent("esx:showNotification", _source, Config.claimed)
                TriggerClientEvent("free:toggleFreeMenu", _source, false)
                exports['ghmattimysql']:execute('UPDATE `daily_free` SET `next_collect`=@nextcollect,`times_collected`=@timescollected WHERE `identifier`=@identifier', {["@identifier"] = identifier, ["@nextcollect"] = nextcollect, ["@timescollected"] = collect[1].times_collected + 1}, nil)
                TriggerClientEvent("free:setTimeout", _source, nextcollect)
            else
                TriggerClientEvent("free:setTimeout", _source, collect[1].next_collect)
                TriggerClientEvent("chatMessage", _source, "Daily Free", {255, 0, 0}, "It's still not time...")
            end
        else
            claimRewards(xPlayer)
            TriggerClientEvent("esx:showNotification", _source, Config.claimed)
            TriggerClientEvent("free:setTimeout", _source, nextcollect)
            TriggerClientEvent("free:toggleFreeMenu", _source, false)
            exports['ghmattimysql']:execute('INSERT INTO `daily_free` (`identifier`, `next_collect`, `times_collected`) VALUES (@identifier, @nextcollect, 1);', {['@identifier'] = identifier, ['@nextcollect'] = nextcollect}, nil)
        end
    end)
    collecting[_source] = nil
end)

RegisterCommand("daily", function(source, args, rawCommand)
    TriggerClientEvent("free:toggleFreeMenu", source, true)
end, false)
