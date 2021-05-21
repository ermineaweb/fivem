local spawnedcokes = 0
local cokePlants = {}
local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		local coords = GetEntityCoords(PlayerPedId())

		if GetDistanceBetweenCoords(coords, Config.CircleZones.cokeField.coords, true) < 50 then
			SpawncokePlants()
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.cokeProcessing.coords, true) < 1 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('coke_processprompt'))
			end

			if IsControlJustReleased(0, 38) and not isProcessing then
				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							Processcoke()
						else
							OpenBuyLicenseMenu('coke_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'coke_processing')
				else
					ESX.TriggerServerCallback('esx_drugs:Coke_count', function(xCoke)
						Processcoke(xCoke)
					end)
					
				end
			end
		else
			Citizen.Wait(500)
		end
	end
end)

function Processcoke(xCoke)
	isProcessing = true
	ESX.ShowNotification(_U('coke_processingstarted'))
  TriggerServerEvent('esx_drugs:processCoke')
	if(xCoke <= 5) then
		xCoke = 0
	end
  local timeLeft = (Config.Delays.cokeProcessing * xCoke) / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.cokeProcessing.coords, false) > 4 then
			ESX.ShowNotification(_U('coke_processingtoofar'))
			TriggerServerEvent('esx_drugs:cancelProcessing')
			TriggerServerEvent('esx_drugs:outofbound')
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
			if GetDistanceBetweenCoords(coords, GetEntityCoords(cokePlants[i]), false) < 1 then
				nearbyObject, nearbyID = cokePlants[i], i
			end
		end

		if nearbyObject and IsPedOnFoot(playerPed) then
			if not isPickingUp then
				ESX.ShowHelpNotification(_U('coke_pickupprompt'))
			end

			if IsControlJustReleased(0, 38) and not isPickingUp then
				isPickingUp = true

				ESX.TriggerServerCallback('esx_drugs:canPickUp', function(canPickUp)
					if canPickUp then
						TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)

						Citizen.Wait(2000)
						ClearPedTasks(playerPed)
						Citizen.Wait(1500)
		
						ESX.Game.DeleteObject(nearbyObject)
		
						table.remove(cokePlants, nearbyID)
						spawnedcokes = spawnedcokes - 1
		
						TriggerServerEvent('esx_drugs:pickedUpCoke')
					else
						ESX.ShowNotification(_U('coke_inventoryfull'))
					end

					isPickingUp = false
				end, 'coke')
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

function SpawncokePlants()
	while spawnedcokes < 25 do
		Citizen.Wait(0)
		local cokeCoords = GeneratecokeCoords()

		ESX.Game.SpawnLocalObject('prop_coke_02', cokeCoords, function(obj)
			PlaceObjectOnGroundProperly(obj)
			FreezeEntityPosition(obj, true)

			table.insert(cokePlants, obj)
			spawnedcokes = spawnedcokes + 1
		end)
	end
end

function ValidatecokeCoord(plantCoord)
	if spawnedcokes > 0 then
		local validate = true

		for k, v in pairs(cokePlants) do
			if GetDistanceBetweenCoords(plantCoord, GetEntityCoords(v), true) < 5 then
				validate = false
			end
		end

		if GetDistanceBetweenCoords(plantCoord, Config.CircleZones.cokeField.coords, false) > 50 then
			validate = false
		end

		return validate
	else
		return true
	end
end

function GeneratecokeCoords()
	while true do
		Citizen.Wait(1)

		local cokeCoordX, cokeCoordY

		math.randomseed(GetGameTimer())
		local modX = math.random(-15, 15)

		Citizen.Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-15, 15)

		cokeCoordX = Config.CircleZones.cokeField.coords.x + modX
		cokeCoordY = Config.CircleZones.cokeField.coords.y + modY

		local coordZ = GetCoordZ(cokeCoordX, cokeCoordY)
		local coord = vector3(cokeCoordX, cokeCoordY, coordZ)

		if ValidatecokeCoord(coord) then
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
