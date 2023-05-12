CreateThread(function()
    SetDiscordAppId(Config.DiscordAppId)

    SetDiscordRichPresenceAsset(Config.DCAsset)
    SetDiscordRichPresenceAssetText(Config.DCAssetText)

    SetDiscordRichPresenceAssetSmall(Config.DCAssetSmall)
    SetDiscordRichPresenceAssetSmallText(Config.DCAssetSmallText)

    SetDiscordRichPresenceAction(0, Config.DCAction[1].text, Config.DCAction[1].link)
    SetDiscordRichPresenceAction(1, Config.DCAction[2].text, Config.DCAction[2].link)

    while true do
        TriggerServerEvent('knoes_discord_presence:get_data')

        Wait(60000)
    end
end)

RegisterNetEvent("knoes_discord_presence:receive_data", function(richPresenceString)
    SetRichPresence(richPresenceString)
end)