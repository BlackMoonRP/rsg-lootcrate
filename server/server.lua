local RSGCore = exports['rsg-core']:GetCoreObject()

-- resets loot crates
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then -- 60 seconds
        MySQL.update('UPDATE lootcrate SET looted = ?', { 0 })
        print(Lang:t('success.lootcrate_reset'))
    end
end)

-- give lootbag to player
RegisterNetEvent('rsg-lootcrate:server:givelootbag', function(item)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local amount = math.random(Config.MinLootBags,Config.MaxLootBags)
    Player.Functions.AddItem(item, amount)
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items['lootbag'], "add")
end)

-- open lootcrate
RSGCore.Functions.CreateUseableItem('lootbag', function(source, item)
    local src = source
    TriggerClientEvent('rsg-lootcrate:client:openlootbag', src, item.name)
end)

-- open lootcrate
RegisterNetEvent('rsg-lootcrate:server:lootbagreward', function(lootbag)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local chance = math.random(1,100)
    -- common reward
    if chance <= Config.RewardChance then -- reward : 1 x common
        local common = Config.CommonItems[math.random(1, #Config.CommonItems)]
        -- add gift
        Player.Functions.AddItem(common, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[common], "add")
        -- remove lootbag
        Player.Functions.RemoveItem(lootbag, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[lootbag], "remove")
    -- rare reward
    elseif chance > Config.RewardChance then -- reward : 1 x rare
        local rare = Config.RareItems[math.random(1, #Config.RareItems)]
        -- add gift
        Player.Functions.AddItem(rare, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[rare], "add")
        -- remove lootbag
        Player.Functions.RemoveItem(lootbag, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[lootbag], "remove")
    else
        print("something went wrong check for exploit!")
    end 
end)

-- callback to see if looted or not
RSGCore.Functions.CreateCallback('rsg-lootcrate:server:GetLootState', function(source, cb, data)
    local cratestate = MySQL.query.await('SELECT * FROM lootcrate WHERE name=@name', {
        ['@name'] = data,
    })    
    if cratestate[1] ~= nil then
        cb(cratestate[1].looted)
    end
end)

RegisterServerEvent('rsg-lootcrate:server:setlooted', function(lootedname)
    MySQL.update('UPDATE lootcrate SET looted = ? WHERE name = ?', { 1, lootedname })
end)
