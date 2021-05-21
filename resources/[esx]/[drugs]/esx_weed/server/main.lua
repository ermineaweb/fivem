ESX = nil
local playersProcessingCannabis = {}
local outofbound = true
local alive = true

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_weed:sellDrug')
AddEventHandler('esx_weed:sellDrug', function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = Config.DrugDealerItems[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		print(('esx_weed: %s attempted to sell an invalid drug!'):format(xPlayer.identifier))
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

ESX.RegisterServerCallback('esx_weed:buyLicense', function(source, cb, licenseName)
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
		print(('esx_weed: %s attempted to buy an invalid license!'):format(xPlayer.identifier))
		cb(false)
	end
end)

RegisterServerEvent('esx_weed:pickedUpCannabis')
AddEventHandler('esx_weed:pickedUpCannabis', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local cime = math.random(5,10)

	if xPlayer.canCarryItem('weed', cime) then
		xPlayer.addInventoryItem('weed', cime)
	else
		xPlayer.showNotification(_U('weed_inventoryfull'))
	end
end)

ESX.RegisterServerCallback('esx_weed:canPickUp', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	cb(xPlayer.canCarryItem(item, 1))
end)

RegisterServerEvent('esx_weed:outofbound')
AddEventHandler('esx_weed:outofbound', function()
	outofbound = true
end)

RegisterServerEvent('esx_weed:quitprocess')
AddEventHandler('esx_weed:quitprocess', function()
	can = false
end)

ESX.RegisterServerCallback('esx_weed:cannabis_count', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xCannabis = xPlayer.getInventoryItem('weed').count
	cb(xCannabis)
end)

RegisterServerEvent('esx_weed:processCannabis')
AddEventHandler('esx_weed:processCannabis', function()
  if not playersProcessingCannabis[source] then
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local xCannabis = xPlayer.getInventoryItem('weed')
		local can = true
		outofbound = false
    if xCannabis.count >= 5 then
      while outofbound == false and can do
				if playersProcessingCannabis[_source] == nil then
					playersProcessingCannabis[_source] = ESX.SetTimeout(Config.Delays.WeedProcessing , function()
            if xCannabis.count >= 5 then
              if xPlayer.canSwapItem('weed', 5, 'weed_pooch', 1) then
                xPlayer.removeInventoryItem('weed', 5)
                xPlayer.addInventoryItem('weed_pooch', 1)
								xPlayer.showNotification(_U('weed_processed'))
							else
								can = false
								xPlayer.showNotification(_U('weed_processingfull'))
								TriggerEvent('esx_weed:cancelProcessing')
							end
						else						
							can = false
							xPlayer.showNotification(_U('weed_processingenough'))
							TriggerEvent('esx_weed:cancelProcessing')
						end

						playersProcessingCannabis[_source] = nil
					end)
				else
					Wait(Config.Delays.WeedProcessing)
				end	
			end
		else
			xPlayer.showNotification(_U('weed_processingenough'))
			TriggerEvent('esx_weed:cancelProcessing')
		end	
			
	else
		print(('esx_weed: %s attempted to exploit weed processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerId)
	if playersProcessingCannabis[playerId] then
		ESX.ClearTimeout(playersProcessingCannabis[playerId])
		playersProcessingCannabis[playerId] = nil
	end
end

RegisterServerEvent('esx_weed:cancelProcessing')
AddEventHandler('esx_weed:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerId, reason)
	CancelProcessing(playerId)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)
