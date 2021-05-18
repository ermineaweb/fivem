Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 165, g = 165, b = 165 }

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

Config.TheFirm = {

	TheFirm = {

		Blip = {
			Coords  = vector3(-164.08, -1073.6, 38.47),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Armories = {
			vector3(-175.15, -1077.06, 29.2)
		},

		Vehicles = {
			{
				Spawner = vector3(-157.65, -1073.46, 29.2),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(-192.36, -1076.4, 21.72), heading = 154.35, radius = 6.0 },
					{ coords = vector3(-194.64, -1081.59, 21.69), heading = 154.35, radius = 6.0 },
					{ coords = vector3(-197.34, -1088.41, 21.69), heading = 154.35, radius = 6.0 },
					{ coords = vector3(-199.92, -1095.43, 21.69), heading = 154.35, radius = 6.0 }
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
			vector3(-159.896, -1080.48, 29.2)
		}

	}

}

Config.AuthorizedVehicles = {
	Shared = {
	},

	prospect = {
		{ model = 'g65amg', label = 'Mercedes G Wagon 65 AMG', price = 150000 }
	},

	enforcer = {
		{ model = 'g65amg', label = 'Mercedes G Wagon 65 AMG', price = 150000 }
	},

	lieutenant = {
		{ model = 'g65amg', label = 'Mercedes G Wagon 65 AMG', price = 150000 }
	},
	
	vicepresident = {
		{ model = 'g65amg', label = 'Mercedes G Wagon 65 AMG', price = 150000 },
		{ model = 'cls2015', label = 'Mercedes CSL 2015 AMG', price = 250000 }
	},

	boss = {
		{ model = 'g65amg', label = 'Mercedes G Wagon 65 AMG', price = 150000 },
		{ model = 'cls2015', label = 'Mercedes CSL 2015 AMG', price = 250000 }
	}
}