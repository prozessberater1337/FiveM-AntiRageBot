RegisterNetEvent("Antirage:ichliebemeinefüße2025")
AddEventHandler("Antirage:ichliebemeinefüße2025", function(shootCount)
    print("Player " .. GetPlayerName(source) .. " has been detected with " .. shootCount .. " shots in 1 second.")

    -- Ban Event (e.g. TriggerEvent("AntiCheat:ban", source, "Ragebot detected ["..shootCount.."]"))
end)

-- more questions? contact me on discord: @unknow1337