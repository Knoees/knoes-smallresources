
local deleteTimer = 30 --time in Minutes




CreateThread(function()
    while true do
        Wait(deleteTimer * 60000)
        TriggerClientEvent('chat:addMessage', -1, { color = { 255, 0, 0 }, args = {'Warning', 'Inactive vehicles will be deleted in 1MIN'}})
        Wait(45000)
        TriggerClientEvent('chat:addMessage', -1, { color = { 255, 0, 0 }, args = {'Warning', 'Inactive vehicles will be deleted in 15 SECS'}})
        Wait(10000)
        TriggerClientEvent('chat:addMessage', -1, { color = { 255, 0, 0 }, args = {'Warning', 'Inactive vehicles will be deleted in 5 SECS'}})
        Wait(5000)

        for i, veh in pairs(GetAllVehicles()) do 
            if HasVehicleBeenOwnedByPlayer(veh) then 
                if not isVehicleOccupied(veh) then
                    DeleteEntity(veh)
                end
            end
        end
        TriggerClientEvent('chat:addMessage', -1, { color = { 255, 0, 0 }, args = {'Warning', 'All Inactive vehicles got deleted'}})
    end
end)



function isVehicleOccupied(veh)
    for seat = -1, 6 do 
        if GetPedInVehicleSeat(veh, seat) ~= 0 then 
            return true 
        end
    end
    return false 
end