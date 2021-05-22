local density = { -- 0.0 to 1.0
	peds = 0.4,
	vehicles = 0.4,
	parked = 0.2
}

local isHost = false

Citizen.CreateThread(function()
    while true do
		-- NEIGE
-- SetSnowLevel(1.0)
-- WAR MODE
-- SetRiotModeEnabled(true)
-- ECHELLE DE TEMPS
-- SetTimeScale(1.0)
	isHost = NetworkIsHost()
    	if isHost then
		-- old version
    	-- if NetworkIsHost() then
			-- These natives has to be called every frame.
			SetPedDensityMultiplierThisFrame(density.peds)
			SetScenarioPedDensityMultiplierThisFrame(density.peds, density.peds)
			SetVehicleDensityMultiplierThisFrame(density.vehicles)
			SetRandomVehicleDensityMultiplierThisFrame(density.vehicles)
			SetParkedVehicleDensityMultiplierThisFrame(density.parked)
		else
			SetPedDensityMultiplierThisFrame(0.0)
			SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
			SetVehicleDensityMultiplierThisFrame(0.0)
			SetRandomVehicleDensityMultiplierThisFrame(0.0)
			SetParkedVehicleDensityMultiplierThisFrame(0.0)
		end

		SetGarbageTrucks(false) -- Stop garbage trucks from randomly spawning
		SetRandomBoats(true) -- Stop random boats from spawning in the water.
		SetCreateRandomCops(true) -- disable random cops walking/driving around.
		SetCreateRandomCopsNotOnScenarios(false) -- stop random cops (not in a scenario) from spawning.
		SetCreateRandomCopsOnScenarios(false) -- stop random cops (in a scenario) from spawning.
		SetIgnoreLowPriorityShockingEvents(PlayerPedId(), true)
		
		Citizen.Wait(3000)
    end
end)

-- Citizen.CreateThread(function()
--     while(true) do
--         isHost = NetworkIsHost()
-- 		Citizen.Wait(1000)
--     end
-- end)

-- NO WEAPON DROP FROM NPC
function SetNoWeaponDrops()
	local handle, ped = FindFirstPed()
	local finished = false

	repeat
		if not IsEntityDead(ped) then
			SetPedDropsWeaponsWhenDead(ped, false)
		end
		finished, ped = FindNextPed(handle)
	until not finished

	EndFindPed(handle)
end

Citizen.CreateThread(function()
	while true do
		SetNoWeaponDrops()
		Citizen.Wait(1000)
	end
end)










-- cruise control
local useMph = false -- if false, it will display speed in kph

Citizen.CreateThread(function()
  local resetSpeedOnEnter = true
  while true do
    Citizen.Wait(0)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed,false)
    if GetPedInVehicleSeat(vehicle, -1) == playerPed and IsPedInAnyVehicle(playerPed, false) then

      -- This should only happen on vehicle first entry to disable any old values
      if resetSpeedOnEnter then
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        resetSpeedOnEnter = false
      end
      -- Disable speed limiter
      if IsControlJustReleased(0,246) and IsControlPressed(0,131) then
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        showHelpNotification("Speed limiter disabled")
      -- Enable speed limiter
      elseif IsControlJustReleased(0,246) then
        cruise = GetEntitySpeed(vehicle)
        SetEntityMaxSpeed(vehicle, cruise)
        if useMph then
          cruise = math.floor(cruise * 2.23694 + 0.5)
          showHelpNotification("Speed limiter set to "..cruise.." mph. ~INPUT_VEH_SUB_ASCEND~ + ~INPUT_MP_TEXT_CHAT_TEAM~ to disable.")
        else
          cruise = math.floor(cruise * 3.6 + 0.5)
          showHelpNotification("Speed limiter set to "..cruise.." km/h. ~INPUT_VEH_SUB_ASCEND~ + ~INPUT_MP_TEXT_CHAT_TEAM~ to disable.")
        end
      end
    else
      resetSpeedOnEnter = true
    end
  end
end)

function showHelpNotification(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end