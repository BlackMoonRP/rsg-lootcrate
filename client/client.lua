local RSGCore = exports['rsg-core']:GetCoreObject()
local spawned = false
local busy = false

---------------------------------------------------------------------------------

-- prompt and blip
Citizen.CreateThread(function()
    for loot,v in pairs(Config.LootCrates) do
        exports['rsg-core']:createPrompt(v.name, v.coords, RSGCore.Shared.Keybinds['J'], Lang:t('menu.check') ..v.lable, {
            type = 'client',
            event = 'rsg-lootcrate:client:checklootcrate',
            args = { v.name },
        })
        if v.showblip == true then
            local LootCrateBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(LootCrateBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(LootCrateBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, LootCrateBlip, Config.Blip.blipName)
        end
    end
end)

-- spawn crates
Citizen.CreateThread(function()
    while true do
    Wait(0)
        local hash = GetHashKey('s_lootablemiscchest_wagon')
        while not HasModelLoaded(hash) do
            Wait(10)
            RequestModel(hash)
        end
        if spawned == false then
            for loot,v in pairs(Config.LootCrates) do
                RequestModel(hash)
                propcrate = CreateObject(hash, v.coords -1, true, false, false)
                SetEntityHeading(propcrate, v.heading)
                SetEntityAsMissionEntity(propcrate, true)
                PlaceObjectOnGroundProperly(propcrate, true)
                FreezeEntityPosition(propcrate, true)
                spawned = true
            end
        end
    end
end)

-- check if crate has been looted
RegisterNetEvent('rsg-lootcrate:client:checklootcrate', function(name)
    RSGCore.Functions.TriggerCallback('rsg-lootcrate:server:GetLootState', function(result)
        if result == 0 then
            busy = true
            CrouchAnim()
            Wait(6000)
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('rsg-lootcrate:server:givelootbag', 'lootbag')
            TriggerServerEvent('rsg-lootcrate:server:setlooted', name)
            busy = false
        else
            RSGCore.Functions.Notify(Lang:t('error.already_looted'), 'error')
        end
    end, name)
end)
---------------------------------------------------------------------------------

-- open lootcrate
RegisterNetEvent('rsg-lootcrate:client:openlootbag')
AddEventHandler('rsg-lootcrate:client:openlootbag', function(item)
    local hasItem = RSGCore.Functions.HasItem(item, 1)
    if hasItem then
        RSGCore.Functions.Progressbar('openlootcrate', Lang:t('menu.open_lootbag'), Config.OpenTime, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('rsg-lootcrate:server:lootbagreward', item)
        end)
    else
        RSGCore.Functions.Notify(Lang:t('error.no_item'), 'error')
    end
end)

---------------------------------------------------------------------------------

-- ped crouch
function CrouchAnim()
    local dict = "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper"
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    TaskPlayAnim(ped, dict, "inspectfloor_player", 0.5, 8.0, -1, 1, 0, false, false, false)
end

---------------------------------------------------------------------------------
