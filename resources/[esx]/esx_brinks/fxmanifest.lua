fx_version 'adamant'

game 'gta5'

description 'ESX brinks'

version '1.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'client/main.lua',
	'config.lua'
  }
  
  server_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'server/main.lua',
	'config.lua'
  }

dependency 'es_extended'
