Config                            = {}
Config.DrawDistance               = 50.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnableArmoryManagement     = true
Config.Locale                     = 'pl'

Config.Gangs = {
	Ballas = {
		JobName = "ballas", -- need to be same as in SQL
		-- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
		Blip = { 
		  Pos     = { x = -1119.31, y = -1606.65, z = 4.4 },
		  Sprite  = 59,
		  Display = 4,
		  Scale   = 1.2,
		  Colour  = 29,
		  Name = "Organizacja Ballas", -- blip name
		},		
		EnablePlayerManagement = true,	-- if you want to enable boss player management
		BossActions = { -- where this management should be?
			{x = -1117.74, y = -1589.46, z = 4.58 },
		},
		AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
			"rank4",
		},
		Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
			{
				Spawner    = { x = -1128.06, y = -1614.31, z = 4.4 },
				SpawnPoint = { x = -1118.7, y = -1608.41, z = 4.29 },
				Heading    = 28.89,
			}		
		},
		VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
			{x = -1127.48, y = -1607.92, z = 4.4},
		},	
		Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
			{x = -1117.42, y = -1626.24, z = 4.45},
		},
	},
	--another gang, just simply fill as much as you want to :P 
	-- Ballas = {
	-- 	JobName = "ballas", -- need to be same as in SQL
	-- 	Blip = { -- if you want blip on the map, just simply fill fields below. You can delete this section if neccessary.
	-- 	  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
	-- 	  Sprite  = 59,
	-- 	  Display = 4,
	-- 	  Scale   = 1.2,
	-- 	  Colour  = 29,
	-- 	  Name = "Organizacja Ballas", -- blip name
	-- 	},		
	-- 	EnablePlayerManagement = true,	-- if you want to enable boss player management
	-- 	BossActions = { -- where this management should be?
	-- 		{x = 426.2, y = -981.14, z = 29.71 },
	-- 	},
	-- 	AuthorizedToBossActionsRanks = { -- ranks from SQL to have access to player management
	-- 		"boss", "secondrank"
	-- 	},
	-- 	Vehicles = { -- gangs garage. You can delete this section, but remember to delete VehicleDeleters and Authorized Vehicles! You can add multiple garages.
	-- 		{
	-- 			Spawner    = { x = 428.130, y = -975.558, z = 30.711 },
	-- 			SpawnPoint = { x = 418.130, y = -975.558, z = 30.711 },
	-- 			Heading    = 331.74,
	-- 		}		
	-- 	},
	-- 	VehicleDeleters = { -- Same. You can add a lot vehicle deleters :)
	-- 		{x = 91.03, y = -1964.94, z = 19.75},
	-- 		{x = 411.51, y = -981.99, z = 29.42},
	-- 	},	
	-- 	Armories = { -- same.. Just armories (places where you can put your weapon, and everyone from gang can see this.
	-- 		{x = 422.130, y = -975.558, z = 30.711},
	-- 	},
	-- },	
}