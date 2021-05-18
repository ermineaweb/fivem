Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 0, g = 255, b = 0 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.MoneyFirst = {

	MoneyFirst = {

		Blip = {
			Coords  = vector3(-164.08, -1073.6, 38.47),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Armories = {
			vector3(-1050.02, 519.86, 87.33)
		},

		Vehicles = {
			{
				Spawner = vector3(-1034.69, 517.65, 87.53),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(-1044.75, 500.36, 83.74), heading = 220.28, radius = 6.0 },
					{ coords = vector3(-1038.26, 495.35, 81.75), heading = 246.46, radius = 6.0 },
					{ coords = vector3(-1030.99, 494.01, 79.51), heading = 263.55, radius = 6.0 }
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, -28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},

		BossActions = {
			vector3(-1042.97, 511.12, 87.33)
		}

	}

}

Config.AuthorizedVehicles = {
	Shared = {
	},

	prospect = {
		{ model = 'cayenne', label = 'Porsche Cayenne', price = 150000 }
	},
	
	enforcer = {
		{ model = 'cayenne', label = 'Porsche Cayenne', price = 150000 }
	},
	
	lieutenant = {
		{ model = 'cayenne', label = 'Porsche Cayenne', price = 150000 }
	},
	
	vicepresident = {
		{ model = 'cayenne', label = 'Porsche Cayenne', price = 150000 },
		{ model = 'pturismo', label = 'Porsche Turismo', price = 250000 },
	},
	
	boss = {
		{ model = 'cayenne', label = 'Porsche Cayenne', price = 150000 },
		{ model = 'pturismo', label = 'Porsche Turismo', price = 250000 }
	}
}