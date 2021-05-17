local density = { -- 0.0 to 1.0
	peds = 1.0,
	vehicles = 0.6,
	parked = 0.3
}

Citizen.CreateThread(function()
    while true do
		-- NEIGE
-- SetSnowLevel(1.0)
-- WAR MODE
-- SetRiotModeEnabled(true)
-- ECHELLE DE TEMPS
-- SetTimeScale(1.0)
    	if NetworkIsHost() then
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
		SetRandomBoats(false) -- Stop random boats from spawning in the water.
		SetCreateRandomCops(true) -- disable random cops walking/driving around.
		SetCreateRandomCopsNotOnScenarios(false) -- stop random cops (not in a scenario) from spawning.
		SetCreateRandomCopsOnScenarios(false) -- stop random cops (in a scenario) from spawning.
		SetIgnoreLowPriorityShockingEvents(PlayerPedId(), true)
		
		Citizen.Wait(0)
    end
end)

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
		Citizen.Wait(1000)
		SetNoWeaponDrops()
	end
end)