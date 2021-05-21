ESX = nil
local playersProcessingCoke = {}
local outofbound = true
local alive = true

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_coke:sellDrug')
AddEventHandler('esx_coke:sellDrug', function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = Config.DrugDealerItems[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		print(('esx_coke: %s attempted to sell an invalid drug!'):format(xPlayer.identifier))
		return
	end

	if xItem.count < amount then
		xPlayer.showNotification(_U('dealer_notenough'))
		return
	end

	price = ESX.Math.Round(price * amount)

	if Config.GiveBlack then
		xPlayer.addAccountMoney('black_money', price)
	else
		xPlayer.addMoney(price)
	end

	xPlayer.removeInventoryItem(xItem.name, amount)
	xPlayer.showNotification(_U('dealer_sold', amount, xItem.label, ESX.Math.GroupDigits(price)))
end)

ESX.RegisterServerCallback('esx_coke:buyLicense', function(source, cb, licenseName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local license = Config.LicensePrices[licenseName]

	if license then
		if xPlayer.getMoney() >= license.price then
			xPlayer.removeMoney(license.price)

			TriggerEvent('esx_license:addLicense', source, licenseName, function()
				cb(true)
			end)
		else
			cb(false)
		end
	else
		print(('esx_coke: %s attempted to buy an invalid license!'):format(xPlayer.identifier))
		cb(false)
	end
end)

RegisterServerEvent('esx_coke:pickedUpCoke')
AddEventHandler('esx_coke:pickedUpCoke', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local cime = math.random(5,10)

	if xPlayer.canCarryItem('coke', cime) then
		xPlayer.addInventoryItem('coke', cime)
	else
		xPlayer.showNotification(_U('coke_inventoryfull'))
	end
end)

ESX.RegisterServerCallback('esx_coke:canPickUp', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	cb(xPlayer.canCarryItem(item, 1))
end)

RegisterServerEvent('esx_coke:outofbound')
AddEventHandler('esx_coke:outofbound', function()
	outofbound = true
end)

RegisterServerEvent('esx_coke:quitprocess')
AddEventHandler('esx_coke:quitprocess', function()
	can = false
end)

ESX.RegisterServerCallback('esx_coke:coke_count', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xCoke = xPlayer.getInventoryItem('coke').count
	cb(xCoke)
end)

RegisterServerEvent('esx_coke:processCoke')
AddEventHandler('esx_coke:processCoke', function()
  if not playersProcessingCoke[source] then
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local xCoke = xPlayer.getInventoryItem('coke')
		local can = true
		outofbound = false
    if xCoke.count >= 5 then
      while outofbound == false and can do
				if playersProcessingCoke[_source] == nil then
					playersProcessingCoke[_source] = ESX.SetTimeout(Config.Delays.CokeProcessing , function()
            if xCoke.count >= 5 then
              if xPlayer.canSwapItem('coke', 5, 'coke_pooch', 1) then
                xPlayer.removeInventoryItem('coke', 5)
                xPlayer.addInventoryItem('coke_pooch', 1)
								xPlayer.showNotification(_U('coke_processed'))
							else
								can = false
								xPlayer.showNotification(_U('coke_processingfull'))
								TriggerEvent('esx_coke:cancelProcessing')
							end
						else						
							can = false
							xPlayer.showNotification(_U('coke_processingenough'))
							TriggerEvent('esx_coke:cancelProcessing')
						end

						playersProcessingCoke[_source] = nil
					end)
				else
					Wait(Config.Delays.CokeProcessing)
				end	
			end
		else
			xPlayer.showNotification(_U('coke_processingenough'))
			TriggerEvent('esx_coke:cancelProcessing')
		end	
			
	else
		print(('esx_coke: %s attempted to exploit coke processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerId)
	if playersProcessingCoke[playerId] then
		ESX.ClearTimeout(playersProcessingCoke[playerId])
		playersProcessingCoke[playerId] = nil
	end
end

RegisterServerEvent('esx_coke:cancelProcessing')
AddEventHandler('esx_coke:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerId, reason)
	CancelProcessing(playerId)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)
