Config = {}

Config.Locale = 'fr'

Config.Delays = {
	CokeProcessing = 1000 * 3
}

Config.DrugDealerItems = {
	marijuana = 91
}

Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	coke_processing = {label = _U('license_coke'), price = 15000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	CokeField = {coords = vector3(499.63, -3373.92, 6.07), name = _U('radar_drugs_package'), color = 25, sprite = 514, radius = 10.0},
	CokeProcessing = {coords = vector3(1092.22, -3196.67, -38.99-0.98), name = _U(''), color = 25, sprite = 514, radius = 20.0},
	DrugDealer = {coords = vector3(-1172.02, -1571.98, 4.66), name = _U('blip_drugdealer'), color = 6, sprite = 378},
}