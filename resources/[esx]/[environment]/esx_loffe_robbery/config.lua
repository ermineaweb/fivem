Config = {}
Translation = {}

Config.Shopkeeper = -1211756494 -- hash of the shopkeeper ped
Config.Locale = 'fr' -- 'en', 'sv' or 'custom'
Config.bag = false
Config.blackMoney = true

local globalCooldown = {hour = 0, minute = 120, second = 0}
local globalMoney = {1000, 3000}
local globalBlip = false
local globalCops = 0

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    -- superettes
    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-46.81, -1758.86, 29.42-0.98), heading = 44.54, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1164.78, -323.05, 69.21-0.98), heading = 100.36, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(372.83, 328.04, 103.57-0.98), heading = 254.92, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(549.24, 2670.98, 42.16-0.98), heading = 92.15, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(2555.16, 380.78, 108.62-0.98), heading = 356.37, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(2677.59, 3279.47, 55.24-0.98), heading = 330.43, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-2966.24, 390.98, 15.04-0.98), heading = 86.79, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-3040.94, 583.84, 7.91-0.98), heading = 16.93, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-3244.34, 1000.09, 12.83-0.98), heading = 347.91, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1727.99, 6415.71, 35.04-0.98), heading = 233.39, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1697.21, 4923.45, 42.06-0.98), heading = 323.61, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1960.02, 3740.15, 32.34-0.98), heading = 301.59, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1165.52, 2710.95, 38.16-0.98), heading = 187.04, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1819.48, 793.57, 138.08-0.98), heading = 134.85, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    -- robs liquor
    {coords = vector3(-1486.07, -377.92, 41.16-0.98), heading = 131.5, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Rob\'s Liquor', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1222.21, -908.54, 12.33-0.98), heading = 43.09, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Rob\'s Liquor', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1133.96, -982.45, 46.42-0.98), heading = 276.44, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Rob\'s Liquor', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1392.61, 3606.42, 34.98-0.98), heading = 200.22, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Rob\'s Liquor', cooldown = globalCooldown, robbed = false},
    -- coiffeurs
    {coords = vector3(135.12, -1707.81, 29.29-0.98), heading = 141.24, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1211.58, -470.78, 66.21-0.98), heading = 66.5, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-30.71, -151.91, 57.08-0.98), heading = 344.0, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-277.81, 6230.29, 31.7-0.98), heading = 49.26, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1284.04, -1115.21, 6.99-0.98), heading = 118.49, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-821.95, -183.02, 37.57-0.98), heading = 211.28, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1930.97, 3728.26, 32.84-0.98), heading = 214.94, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    -- tattoos
    {coords = vector3(-1152.06, -1423.77, 4.95-0.98), heading = 127.33, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Tatoueur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1324.69, -1650.29, 52.28-0.98), heading = 136.41, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Tatoueur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(319.67, 180.82, 103.59-0.98), heading = 261.42, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Tatoueur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-292.11, 6200.06, 31.49-0.98), heading = 215.78, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Tatoueur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-3170.77, 1073.15, 20.83-0.98), heading = 329.96, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Tatoueur', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1862.56, 3748.34, 33.03-0.98), heading = 17.82, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Tatoueur', cooldown = globalCooldown, robbed = false},
    -- vetements
    {coords = vector3(-823.07, -1072.28, 11.33-0.98), heading = 205.24, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(73.97, -1392.69, 29.38-0.98), heading = 275.3, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(427.09, -806.42, 29.49-0.98), heading = 84.65, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-165.15, -302.71, 39.73-0.98), heading = 252.78, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(127.23, -224.49, 54.56-0.98), heading = 64.06, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1448.53, -238.13, 49.81-0.98), heading = 39.94, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(612.75, 2762.96, 42.09-0.98), heading = 283.9, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1193.2, -766.21, 17.32-0.98), heading = 219.36, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-708.75, -151.69, 37.42-0.98), heading = 113.58, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-3169.03, 1043.5, 20.86-0.98), heading = 54.9, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(5.42, 6510.86, 31.88-0.98), heading = 34.55, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1695.51, 4822.43, 42.06-0.98), heading = 85.31, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1197.18, 2711.76, 38.22-0.98), heading = 179.42, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1102.21, 2711.88, 19.11-0.98), heading = 220.85, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
    -- armureries
    {coords = vector3(253.64, -51.4, 69.94-0.98), heading = 74.37, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(23.39, -1105.6, 29.8-0.98), heading = 155.02, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(809.0, -2159.04, 29.62-0.98), heading = 348.43, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-330.87, 6085.85, 31.45-0.98), heading = 193.5, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(2571.86, 297.05, 108.73-0.98), heading = 81.19, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-661.25, -933.51, 21.83-0.98), heading = 169.83, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(1692.77, 3761.64, 34.71-0.98), heading = 223.58, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1118.34, 2700.56, 18.55-0.98), heading = 216.18, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    {coords = vector3(841.51, -1035.42, 28.19-0.98), heading = 351.1, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Armurerie', cooldown = globalCooldown, robbed = false},
    -- unicorn club
    {coords = vector3(129.92, -1284.81, 29.27-0.98), heading = 118.94, money = {3000, 6000}, cops = globalCops, blip = globalBlip, name = 'Unicorn Club', cooldown = {hour = 48, minute = 0, second = 0}, robbed = false},
    -- bahamas mama
    {coords = vector3(-1392.65, -605, 30.32-0.98), heading = 100.13, money = {3000, 6000}, cops = globalCops, blip = globalBlip, name = 'Unicorn Club', cooldown = {hour = 48, minute = 0, second = 0}, robbed = false},
}

Translation = {
    ['en'] = {
        ['shopkeeper'] = 'shopkeeper',
        ['robbed'] = "I was just robbed and ~r~don't ~w~have any money left!",
        ['cashrecieved'] = 'You got:',
        ['currency'] = '$',
        ['scared'] = 'Scared:',
        ['no_cops'] = 'There are ~r~not~w~ enough cops online!',
        ['cop_msg'] = 'We have sent a photo of the robber taken by the CCTV camera!',
        ['set_waypoint'] = 'Set waypoint to the store',
        ['hide_box'] = 'Close this box',
        ['robbery'] = 'Robbery in progress',
        ['walked_too_far'] = 'You walked too far away!'
    },
    ['fr'] = { -- edit this to your language
        ['shopkeeper'] = 'Commer??ant',
        ['robbed'] = 'Je viens d\'??tre braqu??, je n\'ai plus d\'argent !',
        ['cashrecieved'] = 'Vous recevez : ',
        ['currency'] = '$',
        ['scared'] = 'Effray?? : ',
        ['no_cops'] = 'Pas assez de policier en service',
        ['cop_msg'] = 'Nous avons envoy?? une photo du voleur prise par la cam??ra de surveillance !',
        ['set_waypoint'] = 'D??finir le waypoint vers le magasin',
        ['hide_box'] = 'Fermer cette bo??te',
        ['robbery'] = 'Vol en cours',
        ['walked_too_far'] = 'Vous ??tes parti trop loin !'
    }
}