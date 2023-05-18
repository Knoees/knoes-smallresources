local kmh, mph = 3.6, 2.23693629
local carSpeed = 0
local speed = kmh -- or mph
local speedLimit = 1000.0 
local driftMode

-- Thread
CreateThread(function()
	while true do
		Wait(250)
		if not driftMode then
			if IsPedInAnyVehicle(PlayerPedId(), false) then
				carSpeed = GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId())) * speed
				if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() then
					if (carSpeed <= speedLimit) then  
						if IsControlPressed(0, 21) then
							SetVehicleReduceGrip(GetVehiclePedIsIn(PlayerPedId(), false), true)
						else
							SetVehicleReduceGrip(GetVehiclePedIsIn(PlayerPedId(), false), false)
						end
					end
				end
			end
		end
	end
end)

RegisterCommand('driftmode', function()
	if not driftMode then
		SetVehicleReduceGrip(GetVehiclePedIsIn(PlayerPedId(), false), true)
		driftMode = true
	else
		SetVehicleReduceGrip(GetVehiclePedIsIn(PlayerPedId(), false), false)
		driftMode = false
	end
end)


