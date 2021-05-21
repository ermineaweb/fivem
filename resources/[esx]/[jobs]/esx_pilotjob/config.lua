Config					= {}
Config.DrawDistance		= 100.0
Config.MaxInService		= -1 -- Set to -1 to disable this
Config.Locale			= 'en'

Config.Airports = {
	LSX = {
		Airline = true, -- Allow airline pilots to fly and spawn planes here? Not recommended on smaller airstrips..
		Pos		= { x = -1051.14, y = -2996.84, z = 13.95 },
		Size	= { x = 1.5, y = 1.5, z = 1.0 },
		Colour	= { r = 204, g = 204, b = 0 },
		Marker	= 1,
		Blips	= {
			Pos		= { x = -1025.9, y = -3011.88, z = 13.95 },
			Sprite	= 90,
			Colour	= 5,
			Scale	= 1.2,
			Display	= 4
		},
	},
	Airstrip = {
		Airline = false, -- Allow airline pilots to fly and spawn planes here? Not recommended on smaller airstrips..
		Pos		= { x = 1700.676, y = 3291.739, z = 47.922 },
		Size	= { x = 1.5, y = 1.5, z = 1.0 },
		Colour	= { r = 204, g = 204, b = 0 },
		Marker	= 1,
		Blips	= {
			Pos		= { x = 1700.676, y = 3291.739, z = 48.922 },
			Sprite	= 90,
			Colour	= 5,
			Scale	= 1.2,
			Display	= 4
		},
	},
}

Config.Clothes = {
	LSX = {
		Pos		= { x = -941.73, y = -2957.86, z = 5 },
		Size	= { x = 1.5, y = 1.5, z = 1.0 },
		Colour	= { r = 204, g = 204, b = 0 },
		Marker	= 1
	},
	Airstrip = {
		Pos		= { x = 1757.451, y = 3296.943, z = 40.150 },
		Size	= { x = 1.5, y = 1.5, z = 1.0 },
		Colour	= { r = 204, g = 204, b = 0 },
		Marker	= 1
	},
}

Config.Vehicles = {
	LSX = {
		Pos		= { x = -1025.9, y = -3011.88, z = 5 },
		Size	= { x = 1.5, y = 1.5, z = 1.0 },
		Colour	= { r = 204, g = 204, b = 0 },
		Marker	= 1,
		SpawnPoint = {
			Pos		= { x = -1051.14, y = -2996.84, z = 5 },
			Heading	= 330.166
		},
		Deleter	= {
			Pos		= { x = -1046.44, y = -2947, z = 5 },
			Colour	= { r = 255, g = 0, b = 0 },
			Size	= { x = 5.0, y = 5.0, z = 2.0 }
		},
	},
	Airstrip = {
		Pos		= { x = 1716.331, y = 3280.057, z = 40.087 },
		Size	= { x = 1.5, y = 1.5, z = 1.0 },
		Colour	= { r = 204, g = 204, b = 0 },
		Marker	= 1,
		SpawnPoint = {
			Pos		= { x = 1721.433, y = 3270.458, z = 40.310 },
			Heading	= 119.404
		},
		Deleter	= {
			Pos		= { x = 1731.002, y = 3312.352, z = 40.223 },
			Colour	= { r = 255, g = 0, b = 0 },
			Size	= { x = 5.0, y = 5.0, z = 2.0 }
		},
	},
}

Config.GradeVehicles = {
	hobbypilot = {
		mammatus = {
			label = 'Mammatus',
			value = 'mammatus'
		},
		dodo = {
			label = 'Dodo',
			value = 'dodo'
		},
		velum2 = {
			label = 'Velum2',
			value = 'velum2'
		},
		cuban800 = {
			label = 'Cuban800',
			value = 'cuban800'
		},
		luxor = {
			label = 'Luxor',
			value = 'luxor'
		},
		buzzard2 = {
			label = 'Buzzard2',
			value = 'buzzard2'
		},
		frogger2 = {
			label = 'Frogger2',
			value = 'frogger2'
		},
		supervolito2 = {
			label = 'Supervolito2',
			value = 'supervolito2'
		},
	},

	freightpilot = {
		mammatus = {
			label = 'Mammatus',
			value = 'mammatus'
		},
		dodo = {
			label = 'Dodo',
			value = 'dodo'
		},
		velum = {
			label = 'Velum',
			value = 'velum2'
		},
		cuban = {
			label = 'Cuban 800',
			value = 'cuban800'
		},
	},

	airlinepilot = {
		mammatus = {
			label = 'Mammatus',
			value = 'mammatus'
		},
		dodo = {
			label = 'Dodo',
			value = 'dodo'
		},
		velum = {
			label = 'Velum',
			value = 'velum2'
		},
		cuban = {
			label = 'Cuban 800',
			value = 'cuban800'
		},
		shamal = {
			label = 'Shamal',
			value = 'shamal'
		},
		miljet = {
			label = 'Miljet',
			value = 'miljet'
		},
		airbus = { -- This is from a mod, you should probably remove this or change it to avoid issues!
			label = 'Airbus A350',
			value = 'a350'
		},
	},
	
}