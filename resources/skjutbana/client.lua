local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  }
  
ESX = nil
local PlayerData = {}
local isAnimalAlive = false
local weapon = ""

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData() == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
end)

Citizen.CreateThread(function ()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
 	PlayerData = ESX.GetPlayerData()
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local coords = GetEntityCoords(PlayerPedId())
		for i=1, #Config.Skjutbana, 1 do
			if(GetDistanceBetweenCoords(coords, Config.Skjutbana[i].x, Config.Skjutbana[i].y, Config.Skjutbana[i].z, true) < Config.DrawDistance) and PlayerData.job ~= nil and PlayerData.job.name == 'police' then
				DrawMarker(Config.MarkerType, Config.Skjutbana[i].x, Config.Skjutbana[i].y, Config.Skjutbana[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
				ESX.Game.Utils.DrawText3D({ x = Config.Skjutbana[i].x, y = Config.Skjutbana[i].y, z = Config.Skjutbana[i].z+0.8 }, '[E] Använd skjutbanan', 0.4)
			end
		end
	end
end)


local AnimalPositions = {
	{ x = 896.64, y = -3155.53, z = -97.97 },
	{ x = 897.81, y = -3152.59, z = -97.97 },
	{ x = 896.64, y = -3155.53, z = -97.97 },
	{ x = 902.51, y = -3144.05, z = -97.97 },
	{ x = 901.9, y = -3155.53, z = -97.97 },
	{ x = 902.53, y = -3116.33, z = -97.97 },
	{ x = 906.71, y = -3118.8, z = -97.97 },
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		RequestModel('a_c_deer') 
								while not HasModelLoaded('a_c_deer') do
									Wait(1)
end
		
		local coords = GetEntityCoords(PlayerPedId())
		for i=1, #Config.Skjutbana, 1 do
			if(GetDistanceBetweenCoords(coords, Config.Skjutbana[i].x, Config.Skjutbana[i].y, Config.Skjutbana[i].z, true) < Config.DrawDistance) and PlayerData.job ~= nil and PlayerData.job.name == 'police' then
				if IsControlPressed(0,  Keys['E']) and PlayerData.job ~= nil and PlayerData.job.name == 'police' and not isAnimalAlive then
				UseGunRange()
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
      while true do
      
      Citizen.Wait(0)
      
          local coords = GetEntityCoords(GetPlayerPed(-1))
			if GetDistanceBetweenCoords(coords, 891.325, -3171.67, -97.97, true) < 1.5 then
			ESX.Game.Utils.DrawText3D({ x = 891.325, y = -3171.67, z = -97.97+0.8 }, '[E] Ta dig till polisstation', 0.4)
				if IsControlPressed(0,  Keys['E']) then
					DoScreenFadeOut(1000)
					Citizen.Wait(1000)
					SetEntityCoords(GetPlayerPed(-1), 446.06, -996.71, 29.84)
					Citizen.Wait(500)
					SetEntityCoords(GetPlayerPed(-1), 446.06, -996.71, 29.84)
					SetEntityHeading(GetPlayerPed(-1), 352.53)
					DoScreenFadeIn(1500) 
			end
		end
		if GetDistanceBetweenCoords(coords, 446.06, -996.71, 29.84, true) < 1.5 then
			ESX.Game.Utils.DrawText3D({ x = 446.06, y = -996.71, z = 29.84+0.8 }, '[E] Ta dig till skjutbanan', 0.4)
				if IsControlPressed(0,  Keys['E']) then
					DoScreenFadeOut(1000)
					Citizen.Wait(1000)
					SetEntityCoords(GetPlayerPed(-1), 891.325, -3171.67, -97.97)
					Citizen.Wait(500)
					SetEntityCoords(GetPlayerPed(-1), 891.325, -3171.67, -97.97)
					SetEntityHeading(GetPlayerPed(-1), 250.53)
					DoScreenFadeIn(1500) 
			end
		end
	end
end)

function UseGunRange()
OpenWeaponMenu()
				Citizen.Wait(500)
				if not isAnimalAlive then
				DeleteEntity(Animal)
					for index, value in pairs(AnimalPositions) do
					local Animal = CreatePed(5, GetHashKey('a_c_deer'), value.x, value.y, value.z, 0.0, true, false)
					TaskWanderStandard(Animal, true, true)
					isAnimalAlive = true
					repeat
					Citizen.Wait(0)
						if not IsEntityDead(Animal) then
							isAnimalAlive = true
							else
							isAnimalAlive = false
							DeleteEntity(Animal)
							RemoveWeaponFromPed(PlayerPedId(), GetHashKey(weapon), true, true)
						end
					until(isAnimalAlive == false)
					isAnimalAlive = false
					end
					end
end

function OpenWeaponMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'fish_menu',
        {
            title    = 'Vilket vapen vill du ha?',
            elements = {
				{label = 'M4A4', value = 'sausage_1', weapon = "WEAPON_CARBINERIFLE"},
				{label = 'MP5', value = 'sausage_1', weapon = "WEAPON_SMG"},
				{label = 'Sig Sauer', value = 'water_1', weapon = "WEAPON_COMBATPISTOL"},
            }
        },
        function(data, menu)
            local weapon = data.current.weapon
			GiveWeaponToPed(PlayerPedId(), GetHashKey(weapon),250, true, false)
			menu.close()
			repeat
			Citizen.Wait(0)
			if not isAnimalAlive then
			RemoveWeaponFromPed(PlayerPedId(), GetHashKey(weapon), true, true)
			end
			until(isAnimalAlive == false)
        end,
    function(data, menu)
        menu.close()
    end)
end
