local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
      if not iswearingsuit and (IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId())) then
        if QBCore.Functions.HasItem("phone") or QBCore.Functions.HasItem("radio") then
          exports['pma-voice']:setCallChannel(0)
          exports['pma-voice']:setVoiceProperty('radioEnabled', false)
          if not notified then
            QBCore.Functions.Notify("Your electronics got wet, try to dry it out", "error", 1000)
            notified = true
          end
        end
      else
        notified = false
        exports['pma-voice']:setVoiceProperty('radioEnabled', true)
      end
      Wait(1000)
    end
end)