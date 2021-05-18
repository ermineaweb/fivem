Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 255, g = 255, b = 0 }

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

Config.LondonKings = {

	LondonKings = {

		Blip = {
			Coords  = vector3(-164.08, -1073.6, 38.47),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Armories = {
			vector3(-437.28, -2182.18, 9.43)
		},

		Vehicles = {
			{
				Spawner = vector3(-441.61, -2174.23, 9.43),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(-435.89, -2164.1, 10.14), heading = 272.09, radius = 6.0 },
					{ coords = vector3(-429.66, -2163.72, 10.14), heading = 272.09, radius = 6.0 },
					{ coords = vector3(-423.07, -2163.39, 10.14), heading = 272.09, radius = 6.0 },
					{ coords = vector3(-416.61, -2163.12, 10.14), heading = 272.09, radius = 6.0 }
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
			vector3(-439.23, -2174.14, 9.43)
		}

	}

}

Config.AuthorizedVehicles = {
	Shared = {
	},

	prospect = {
		{ model = 'x6m', label = 'BMW X6', price = 150000 }
	},

	enforcer = {
		{ model = 'x6m', label = 'BMW X6', price = 150000 }
	},

	lieutenant = {
		{ model = 'x6m', label = 'BMW X6', price = 150000 }
	},
	
	vicepresident = {
		{ model = 'x6m', label = 'BMW X6', price = 150000 },
		{ model = '17m760i', label = 'BMW M7', price = 250000 },
	},

	boss = {
		{ model = 'x6m', label = 'BMW X6', price = 150000 },
		{ model = '17m760i', label = 'BMW M7', price = 250000 }
	}
}