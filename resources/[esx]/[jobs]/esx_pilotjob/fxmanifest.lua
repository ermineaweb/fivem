fx_version 'adamant'
game 'gta5'

name 'pilot job'
version '0.0.4'

client_scripts {
	'@es_extended/locale.lua',
	'client/misc.lua',
	'client/main.lua',
	'locales/en.lua',
	'locales/sv.lua',
	'config.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'server/main.lua',
	'locales/en.lua',
	'locales/sv.lua',
	'config.lua'
}

dependencies {
	'es_extended',
	'esx_billing',
	'esx_identity',
	'esx_license',
	'esx_service'
}
