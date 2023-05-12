local kmh, mph = 3.6, 2.23693629
local carSpeed = 0
local speed = kmh -- veya mph
local speedLimit = 100.0
local driftMode = false

local function StartDriftMode(drift)
	while drift do
		Wait(250)
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
		if not driftMode then break end
	end
end

RegisterCommand('driftmode', function()
	driftMode = not driftMode
	if driftMode then
		SetVehicleReduceGrip(GetVehiclePedIsIn(PlayerPedId(), false), false)
		StartDriftMode(true)
	else
		SetVehicleReduceGrip(GetVehiclePedIsIn(PlayerPedId(), false), true)
		StartDriftMode(false)
	end
end)

