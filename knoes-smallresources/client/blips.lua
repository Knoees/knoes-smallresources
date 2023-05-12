if Config.enableblips then
    CreateThread(function()
        for _,v in pairs(Config.blips) do
            local blip = AddBlipForCoord(v.coord)
            SetBlipSprite(blip, v.sprite)
            SetBlipScale(blip, v.scale)
            SetBlipColour(blip, v.color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.text)
            EndTextCommandSetBlipName(blip)
            if not v.radius then
                local blipradius = AddBlipForRadius(v.coord, v.radius)
                SetBlipColour(blipradius, v.radiuscolor)
                SetBlipAlpha(blipradius, v.alpha)
            end
        end
    end)
end