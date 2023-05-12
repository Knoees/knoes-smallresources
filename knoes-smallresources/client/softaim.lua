local Config = {
    ['antiControllerAimAssist'] = true,
    ['antiLockon'] = true,
}

CreateThread(function()
    if not Config['antiControllerAimAssist'] then return end
    while true do
        if NetworkGetTargetingMode() ~= 3 then
            SetPlayerTargetingMode(3)
        else
            Wait(1000)
        end
        Wait(200)
    end
end)

CreateThread(function()
    if not Config['antiLockon'] then return end
    while true do 
        local ped = PlayerPedId()
        local weapon = GetSelectedPedWeapon(ped)
        SetPedConfigFlag(ped, 43, true) -- Disable lockon
        if weapon ~= 0 and weapon ~= `WEAPON_UNARMED` then
            local lockOn = GetLockonDistanceOfCurrentPedWeapon(ped)
            if lockOn > 500.0 then 
                local player = PlayerId()
                SetPlayerLockon(player, true)
                SetPlayerLockonRangeOverride(player, -1.0)
            end
        end
        Wait(2500)
    end
end)