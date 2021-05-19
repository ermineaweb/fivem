
ESX  = nil TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand("bitch", function(source, args, rawCommand)
  
  TriggerClientEvent('Putes', source )
 
end, false )

RegisterServerEvent('Putes')
AddEventHandler('Putes', function(nombre)

	local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.removeMoney(nombre)

end)
