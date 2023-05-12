local start = os.time()

CreateThread(function()
    while true do
        Wait(1000 * 60)

        local uptimeString = ""
        local uptime = os.difftime(os.time(), start)
        local hrs = math.floor(uptime / 3600)
        local mins = math.floor((uptime - (hrs * 3600)) / 60)

        if hrs > 0 then
            uptimeString = string.format("%d:%02d", hrs, mins)
        else
            uptimeString = string.format("%d minutes", mins)
        end

        SetConvarServerInfo('Uptime', uptimeString)
    end
end)