local QBCore = exports['qb-core']:GetCoreObject()

local function orspevladisilah()
    local playerPed = PlayerPedId()
    local currentWeapon = GetSelectedPedWeapon(playerPed)
    return currentWeapon ~= `WEAPON_UNARMED`
end

CreateThread(function()
    while true do
        Wait(0)  
        if orspevladisilah() then
            if IsControlJustPressed(0, 73) then  
                QBCore.Functions.Notify("Silah eldeyken bu tuşu kullanamazsınız!", "error")
                ClearPedTasks(PlayerPedId())
            end
        end
    end
end)
