ESX = exports.es_extended:getSharedObject()
local display = false

RegisterNetEvent('tuopadre:setdisplay')
AddEventHandler('tuopadre:setdisplay', function(bool) 
    display = bool     
    SetNuiFocus(bool, bool)     
    SendNUIMessage({ type = "ui",  status = bool, })
end )

RegisterNUICallback('exit', function(data)
    TriggerEvent('tuopadre:setdisplay', false)
 end)
RegisterNetEvent('spawn:entra')
 AddEventHandler('spawn:entra', function(playerName)
    CreateThread(function()
        TriggerEvent('tuopadre:setdisplay', true)
        while display do 
            DisableControlAction(0,1, display)
            DisableControlAction(0,142, display)
            DisableControlAction(0,18, display)
            DisableControlAction(0,322, display)
            DisableControlAction(0,2, display)
            DisableControlAction(0,106, display)
            Wait(0)
        end
    end)
end)

RegisterNUICallback('paleto', function()
    StartPlayerTeleport(PlayerId(), Config.spawnpaleto.x, Config.spawnpaleto.y, Config.spawnpaleto.z, 0.0, false, true, true)
    TriggerEvent('tuopadre:setdisplay', false)
end)

RegisterNUICallback('garage', function()
    StartPlayerTeleport(PlayerId(), Config.spawngarage.x, Config.spawngarage.y, Config.spawngarage.z, 0.0, false, true, true)
    TriggerEvent('tuopadre:setdisplay', false)
end)

RegisterNUICallback('spiaggia', function()
    StartPlayerTeleport(PlayerId(), Config.spawnspiaggia.x, Config.spawnspiaggia.y, Config.spawnspiaggia.z, 0.0, false, true, true)
    TriggerEvent('tuopadre:setdisplay', false)
end)

RegisterNUICallback('governo', function()
    StartPlayerTeleport(PlayerId(), Config.spawngoverno.x, Config.spawngoverno.y, Config.spawngoverno.z, 0.0, false, true, true)
    TriggerEvent('tuopadre:setdisplay', false)
end)

 RegisterCommand('spawn', function()
    CreateThread(function()
        TriggerEvent('tuopadre:setdisplay', true)
        while display do 
            DisableControlAction(0,1, display)
            DisableControlAction(0,142, display)
            DisableControlAction(0,18, display)
            DisableControlAction(0,322, display)
            DisableControlAction(0,2, display)
            DisableControlAction(0,106, display)
            Wait(0)
        end
    end)
 end)