Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 255, g = 0, b = 0 }

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

Config.Bloods = {

	Bloods = {

		Blip = {
			Coords  = vector3(-164.08, -1073.6, 38.47),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Armories = {
			vector3(-86.53, 371.12, 111.52)
		},

		Vehicles = {
			{
				Spawner = vector3(-70.01, 350.27, 111.52),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(-53.52, 342.27, 111.69), heading = 153.86, radius = 6.0 },
					{ coords = vector3(-56.16, 336.93, 111.28), heading = 153.86, radius = 6.0 },
					{ coords = vector3(-59.3, 330.67, 110.64), heading = 153.86, radius = 6.0 },
					{ coords = vector3(-62.63, 324.16, 109.93), heading = 153.86, radius = 6.0 }
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
			vector3(-90.82, 365.44, 111.52)
		}

	}

}

Config.AuthorizedVehicles = {
	Shared = {
	},

	prospect = {
		{ model = 'bentaygast', label = 'Bentley Bentayga', price = 150000 }
	},

	enforcer = {
		{ model = 'bentaygast', label = 'Bentley Bentayga', price = 150000 }
	},

	lieutenant = {
		{ model = 'bentaygast', label = 'Bentley Bentayga', price = 150000 }
	},
	
	vicepresident = {
		{ model = 'bentaygast', label = 'Bentley Bentayga', price = 150000 },
		{ model = 'bmm', label = 'Bentley Mulsanne Mulliner', price = 250000 }
	},

	boss = {
		{ model = 'bentaygast', label = 'Bentley Bentayga', price = 150000 },
		{ model = 'bmm', label = 'Bentley Mulsanne Mulliner', price = 250000 },
		{ model = 'jp12', label = 'Grizzly Donation', price = 5000 },
		{ model = 'ladybird6str', label = 'Joshua Donation', price = 5000 },
		{ model = 's500w222', label = 'Wez Donation', price = 5000 }
	}
}
