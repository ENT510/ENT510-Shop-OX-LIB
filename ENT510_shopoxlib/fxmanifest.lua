fx_version 'adamant'

game 'gta5'

author 'ENT510'

version '2.0'

lua54 'yes'


shared_script '@es_extended/imports.lua'

client_scripts {
	'@es_extended/locale.lua',
	'client/client.lua',
	'locales/it.lua',
	'locales/en.lua',
	'shared/config.lua'

}


server_scripts {
	'@es_extended/locale.lua',
	'server/server.lua',
	'versioncheck.lua',
	'locales/it.lua',
	'locales/en.lua',
	'shared/config.lua'
}


dependency 'ENT510_shopoxlib'


dependencies {
    'ENT510_shopoxlib',
    'ox_target',
	'ox_lib'
}

shared_script '@es_extended/imports.lua'

shared_script '@ox_lib/init.lua'

shared_scripts {
    '@ox_lib/init.lua',
}

server_scripts { '@mysql-async/lib/MySQL.lua' }