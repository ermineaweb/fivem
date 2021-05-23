fx_version 'adamant'

game 'gta5'

description 'FiveM Custom Map Addons'

version '1.0.0'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
   '@es_extended/locale.lua',
   'Server.lua',

}

client_scripts {
    'Client.lua',
}
