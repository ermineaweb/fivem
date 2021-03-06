Config = {}

Config.Locale = 'fr'

Config.Delays = {
	WeedProcessing = 1000 * 3
}

Config.DrugDealerItems = {
	marijuana = 91
}

Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	WeedField = {coords = vector3(2224.35, 5577.4, 53.84), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 15.0},
	WeedProcessing = {coords = vector3(1035.38, -3206.28, -38.17), name = "", color = 25, sprite = 496, radius = 20.0},
	DrugDealer = {coords = vector3(-1172.02, -1571.98, 4.66), name = _U('blip_drugdealer'), color = 6, sprite = 378},
}