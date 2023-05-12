
-- Polis aracları silah kapatma
CreateThread(function()
    while true do
        Wait(1)
        id = PlayerId()
        DisablePlayerVehicleRewards(id)
    end
end)

--Dipcik atmayı engeller

CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        if IsPedArmed(ped, 6) then
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        end
    end
end)