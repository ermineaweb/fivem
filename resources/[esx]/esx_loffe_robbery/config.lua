Config = {}
Translation = {}

Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped
Config.Locale = 'fr' -- 'en', 'sv' or 'custom'

local globalCooldown = {hour = 0, minute = 30, second = 0}
local globalMoney = {5000, 15000}
local globalMoney = {5000, 15000}
local globalBlip = true
local globalCops = 0

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    -- superettes
    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Superette 7/11', cooldown = globalCooldown, robbed = false},
    -- robs liquor
    {coords = vector3(-1486.07, -377.92, 41.16-0.98), heading = 131.5, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Rob\'s Liquor', cooldown = globalCooldown, robbed = false},
    {coords = vector3(-1222.21, -908.54, 12.33-0.98), heading = 43.09, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Rob\'s Liquor', cooldown = globalCooldown, robbed = false},
    -- coiffeurs
    {coords = vector3(-1284.19, 1115.2, 6.99-0.98), heading = 121.09, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Coiffeur', cooldown = globalCooldown, robbed = false},
    -- tattoos
    {coords = vector3(-1152.06, -1423.77, 4.95-0.98), heading = 127.33, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Tatoueur', cooldown = globalCooldown, robbed = false},
    -- vetements
    {coords = vector3(-823.07, -1072.28, 11.33-0.98), heading = 205.24, money = globalMoney, cops = globalCops, blip = globalBlip, name = 'Boutique de fringues', cooldown = globalCooldown, robbed = false},
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
        ['shopkeeper'] = 'Commerçant',
        ['robbed'] = 'Je viens d\'être braqué, je n\'ai plus d\'argent !',
        ['cashrecieved'] = 'Vous recevez : ',
        ['currency'] = '$',
        ['scared'] = 'Effrayé : ',
        ['no_cops'] = 'Pas assez de policier en service',
        ['cop_msg'] = 'Nous avons envoyé une photo du voleur prise par la caméra de surveillance !',
        ['set_waypoint'] = 'Définir le waypoint vers le magasin',
        ['hide_box'] = 'Fermer cette boîte',
        ['robbery'] = 'Vol en cours',
        ['walked_too_far'] = 'Vous êtes parti trop loin !'
    }
}