
ESX = nil



-- Thread
Citizen.CreateThread(function()

	-- Systeme ESX
	while ESX == nil do 
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
		Citizen.Wait(100)
	end

end)



function EstUnePute(pute)
	if GetEntityModel(pute) == 348382215 then return true end
	if GetEntityModel(pute) == 51789996 then return true end
	return false
end


-- Reception du model rechercher par simeon donné par le serveur
RegisterNetEvent('Putes')
AddEventHandler('Putes', function(Model) 

	local J 	= GetPlayerPed(-1)
	local Coords   	= GetEntityCoords(J)

	local MaPute, distance = ESX.Game.GetClosestPed({ x = Coords.x, y = Coords.y, z = Coords.z }, {J})


	if distance == -1 then
		local success, NPC = GetClosestPed(Coords.x,  Coords.y,  Coords.z,  5.0, 1, 0, 0, 0,  26)
		if DoesEntityExist(NPC) then
            local NPCcoords = GetEntityCoords(NPC)
			
            MaPute = NPC
            distance = GetDistanceBetweenCoords(Coords.x,  Coords.y,  Coords.z,  NPCcoords.x,  NPCcoords.y,  NPCcoords.z,  true)
        end

	end

	-- NPC assez proche du J pour continuer ?
	
	if distance <= 6.0 and MaPute ~= J and not IsPedAPlayer(MaPute) and EstUnePute(MaPute) then 
		
		if IsPedInAnyVehicle(J,  false) then 	
			local Vehicule = GetVehiclePedIsIn(J, false)
			if IsVehicleSeatFree(Vehicule, 1) then
				
				pute('J\'arrive mon ange !', MaPute)
				local Voiture = GetVehiclePedIsIn(J, false)
				local Choix = true
				local EnCours = true
				local EnVoiture = false
				
				-- Vas dans la voiture
				TaskWarpPedIntoVehicle(J, Voiture, 1)
				while EnVoiture == false do Citizen.Wait(10)
					TaskWarpPedIntoVehicle(MaPute, Voiture, 2)
					if GetPedInVehicleSeat(Voiture, 2) == MaPute then EnVoiture = true end
				end

				

				-- Attend le clic
				while Choix do Citizen.Wait(10)
					ESX.ShowHelpNotification('~INPUT_THROW_GRENADE~ 150$ Fuck~n~~INPUT_MP_TEXT_CHAT_TEAM~ 80$ Get Sucked~n~~INPUT_PARACHUTE_SMOKE~')
					if IsControlJustPressed(0, 47) then 
						AnimBaise(J, MaPute) 
						Choix = false
					end
					if IsControlJustPressed(0, 246) then 
						AnimSuce(J, MaPute) 
						Choix = false
					end		
					if IsControlJustPressed(0, 23) then 
						TaskWarpPedIntoVehicle(MaPute, Voiture, 0)
						TaskWarpPedIntoVehicle(J, Voiture, -1)
						StopAnim(MaPute) 
						Choix = false
						EnCours = false
					end
					if IsControlJustPressed(0, 73) then 
						TaskWarpPedIntoVehicle(MaPute, Voiture, 0)
						TaskWarpPedIntoVehicle(J, Voiture, -1)
						StopAnim(MaPute) 
						Choix = false
						EnCours = false
					end
				end


				-- Attend le clic de fin
				while EnCours do Citizen.Wait(10)

					ESX.ShowHelpNotification('~INPUT_PARACHUTE_SMOKE~ Stop')
					if IsControlJustPressed(0, 73) then 
						TaskWarpPedIntoVehicle(MaPute, Voiture, 0)
						TaskWarpPedIntoVehicle(J, Voiture, -1)
						StopAnim(MaPute) 
						EnCours = false
					end				
				end

			else
				-- Refus passager pris
				pute('You don\'t have place for me', MaPute)
			end
		else
			-- Refus pieton
			pute('Without a car ?', MaPute)
		end

	else 
		ESX.ShowAdvancedNotification('[ Prostitution ]', '~r~Prostitute Not Found', nil, 'CHAR_BIKESITE', 0)
		print(GetEntityModel(MaPute))
	end


end)



function pute(msg, MaPute)

    local mugshot, mugshotStr = ESX.Game.GetPedMugshot(MaPute)
    ESX.ShowAdvancedNotification('[ Prostitution ]', nil, msg , mugshotStr, 0)
    UnregisterPedheadshot(mugshot)

end



function StopAnim(ped)

	ClearPedTasksImmediately(ped)
	ClearPedTasks(ped)
	ClearPedSecondaryTask(ped)

end



function AnimSuce(client, pute)

	local temps = 5*60*1000
	LoadAnim('mini@prostitutes@sexnorm_veh')
	TaskPlayAnim(client, 'mini@prostitutes@sexnorm_veh', 'bj_loop_male', 2.0, 2.0, temps, 1, 0, false, false, false)
	TaskPlayAnim(pute, 'mini@prostitutes@sexnorm_veh', 'bj_loop_prostitute', 2.0, 2.0, temps, 1, 0, false, false, false)
	TriggerServerEvent('Putes', 80)

end



function AnimBaise(client, pute)

	local temps = 5*60*1000
	LoadAnim('mini@prostitutes@sexnorm_veh')
	TaskPlayAnim(client, 'mini@prostitutes@sexnorm_veh', 'sex_loop_male', 2.0, 2.0, temps, 1, 0, false, false, false)
	TaskPlayAnim(pute, 'mini@prostitutes@sexnorm_veh', 'sex_loop_prostitute', 2.0, 2.0, temps, 1, 0, false, false, false)
	TriggerServerEvent('Putes', 150)

end



function LoadAnim(dict)

	while not HasAnimDictLoaded(dict) do Wait(10)
	  	RequestAnimDict(dict)
	end

end



