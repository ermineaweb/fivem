Config = {}
Translation = {}

Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped
Config.Locale = 'fr' -- 'en', 'sv' or 'custom'

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, money = {5000, 15000}, cops = 0, blip = true, name = '7/11', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, money = {7500, 20000}, cops = 0, blip = true, name = '7/11', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false}
    {coords = vector3(-165, -302, 40-0.98), heading = 91.0, money = {7500, 20000}, cops = 0, blip = true, name = 'Boutique de Vêtements', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false}
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