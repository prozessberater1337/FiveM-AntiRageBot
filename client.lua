local shootCount = 0
local detected = false

AddEventHandler('CEventGunShot', function(witnesses, ped)
    local playerPed = PlayerPedId()
    local selectedWeapon = GetSelectedPedWeapon(playerPed)

    if Config.Erlaubsmir[selectedWeapon] then return end

    if ped == playerPed then
        local shooting = IsPedShooting(playerPed)

        shootCount = shootCount + 1

        Citizen.CreateThread(function()
            Wait(1000)
            shootCount = shootCount - 1
        end)
        if shootCount > 500 and not detected then
            TriggerServerEvent('Antirage:ichliebemeinefüße2025', shootCount)
            detected = true
        end
    end
end)