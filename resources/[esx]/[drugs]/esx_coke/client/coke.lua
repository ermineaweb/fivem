local spawnedCokes = 0
local cokePlants = {}
local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		local coords = GetEntityCoords(PlayerPedId())

		if GetDistanceBetweenCoords(coords, Config.CircleZones.CokeField.coords, true) < 50 then
			SpawnCokePlants()
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.CokeProcessing.coords, true) < 6 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('coke_processprompt'))
			end

			if IsControlJustReleased(0, 38) and not isProcessing then
				
				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							ProcessCoke()
						else
							OpenBuyLicenseMenu('coke_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'coke_processing')
				else
					ESX.TriggerServerCallback('esx_coke:coke_count', function(xCoke)
						ProcessCoke(xCoke)
					end)
					
				end
			end
		else
			Citizen.Wait(500)
		end
	end
end)

function ProcessCoke(xCoke)
	isProcessing = true
	ESX.ShowNotification(_U('coke_processingstarted'))
  TriggerServerEvent('esx_coke:processCoke')
	if(xCoke <= 5) then
		xCoke = 0
	end
  local timeLeft = (Config.Delays.CokeProcessing * xCoke) / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.CokeProcessing.coords, false) > 8 then
			ESX.ShowNotification(_U('coke_processingtoofar'))
			TriggerServerEvent('esx_coke:cancelProcessing')
			TriggerServerEvent('esx_coke:outofbound')
			break
		end
	end

	isProcessing = false
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local nearbyObject, nearbyID

		for i=1, #cokePlants, 1 do
			if GetDistanceBetweenCoords(coords, GetEntityCoords(cokePlants[i]), false) < 3 then
				nearbyObject, nearbyID = cokePlants[i], i
			end
		end

		if nearbyObject and IsPedOnFoot(playerPed) then
			if not isPickingUp then
				ESX.ShowHelpNotification(_U('coke_pickupprompt'))
			end

			if IsControlJustReleased(0, 38) and not isPickingUp then
				local closestPlayer, closestPlayerDistance = ESX.Game.GetClosestPlayer()
				if closestPlayer == -1 or closestPlayerDistance > 50.0 then
					ESX.ShowNotification('Vous devez ??tre au moins deux pour faire cela.')
				else
					isPickingUp = true

					ESX.TriggerServerCallback('esx_coke:canPickUp', function(canPickUp)
						if canPickUp then
							TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)

							Citizen.Wait(500)
							ClearPedTasks(playerPed)
							Citizen.Wait(1500)
			
							ESX.Game.DeleteObject(nearbyObject)
			
							table.remove(cokePlants, nearbyID)
							spawnedCokes = spawnedCokes - 1
			
							TriggerServerEvent('esx_coke:pickedUpCoke')
						else
							ESX.ShowNotification(_U('coke_inventoryfull'))
						end

						isPickingUp = false
					end, 'coke')
				end
			end
		else
			Citizen.Wait(500)
		end
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(cokePlants) do
			ESX.Game.DeleteObject(v)
		end
	end
end)

function SpawnCokePlants()
	while spawnedCokes < 5 do
		Citizen.Wait(0)
		local cokeCoords = GenerateCokeCoords()

		ESX.Game.SpawnLocalObject('ex_office_swag_drugbag2', cokeCoords, function(obj)
			PlaceObjectOnGroundProperly(obj)
			FreezeEntityPosition(obj, true)

			table.insert(cokePlants, obj)
			spawnedCokes = spawnedCokes + 1
		end)
	end
end

function ValidateCokeCoord(plantCoord)
	if spawnedCokes > 0 then
		local validate = true

		for k, v in pairs(cokePlants) do
			if GetDistanceBetweenCoords(plantCoord, GetEntityCoords(v), true) < 5 then
				validate = false
			end
		end

		if GetDistanceBetweenCoords(plantCoord, Config.CircleZones.CokeField.coords, false) > 50 then
			validate = false
		end

		return validate
	else
		return true
	end
end

function GenerateCokeCoords()
	while true do
		Citizen.Wait(6000)

		local cokeCoordX, cokeCoordY

		math.randomseed(GetGameTimer())
		local modX = math.random(-5, 5)

		Citizen.Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-5, 5)

		cokeCoordX = Config.CircleZones.CokeField.coords.x + modX
		cokeCoordY = Config.CircleZones.CokeField.coords.y + modY

		local coordZ = GetCoordZ(cokeCoordX, cokeCoordY)
		local coord = vector3(cokeCoordX, cokeCoordY, coordZ)

		if ValidateCokeCoord(coord) then
			return coord
		end
	end
end

function GetCoordZ(x, y)
	local groundCheckHeights = { 48.0, 49.0, 50.0, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 43.0
end
