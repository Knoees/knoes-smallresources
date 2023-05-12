onlinePlayers = {}
KNOES = {}
KNOES.which = "name" -- "steam", "steamv2", "license", "licensev2", "name"

RegisterServerEvent('knoes-showid:add-id')
AddEventHandler('knoes-showid:add-id', function()
    TriggerClientEvent("knoes-showid:client:add-id", source, onlinePlayers)
    local topText = "undefined " .. KNOES.which
    if KNOES.which == "name" then 
        topText = GetPlayerName(source)
    end
    onlinePlayers[tostring(source)] = topText
    TriggerClientEvent("knoes-showid:client:add-id", -1, topText, tostring(source))
end)

AddEventHandler('playerDropped', function(reason)
    onlinePlayers[tostring(source)] = nil
end)