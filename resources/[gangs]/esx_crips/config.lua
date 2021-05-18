Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 0, g = 0, b = 255 }

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

Config.Crips = {

	Crips = {

		Blip = {
			Coords  = vector3(-164.08, -1073.6, 38.47),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Armories = {
			vector3(-1162.39, -929.28, 1.9)
		},

		Vehicles = {
			{
				Spawner = vector3(-1166.81, -918.86, 1.9),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(-1156.13, -935.1, 1.84), heading = 212.38, radius = 6.0 },
					{ coords = vector3(-1158.76, -936.26, 1.84), heading = 212.38, radius = 6.0 },
					{ coords = vector3(-1161.22, -937.98, 1.84), heading = 212.38, radius = 6.0 },
					{ coords = vector3(-1163.86, -939.27, 1.84), heading = 212.38, radius = 6.0 }
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
			vector3(-1167.26, -914.75, 1.9)
		}

	}

}

Config.AuthorizedVehicles = {
	Shared = {
	},

	prospect = {
		{ model = 'rs318', label = 'Audi RS3', price = 150000 }
	},

	enforcer = {
		{ model = 'rs318', label = 'Audi RS3', price = 150000 }
	},

	lieutenant = {
		{ model = 'rs318', label = 'Audi RS3', price = 150000 }
	},
	
	vicepresident = {
		{ model = 'rs318', label = 'Audi RS3', price = 150000 },
		{ model = 'rs7', label = 'Audi RS7', price = 250000 },
	},

	boss = {
		{ model = 'rs318', label = 'Audi RS3', price = 150000 },
		{ model = 'rs7', label = 'Audi RS7', price = 250000 }
	}
}