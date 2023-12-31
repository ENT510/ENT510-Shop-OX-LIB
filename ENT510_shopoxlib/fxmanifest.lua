fx_version 'adamant'

game 'gta5'

author 'ENT510'

version '3.0'

lua54 'yes'

client_scripts {
	'@es_extended/locale.lua',
	'client/*',
	'locales/*',
	'shared/config.lua'

}

server_scripts {
	'@es_extended/locale.lua',
	'server/*',
	'locales/*',
	'shared/config.lua'
}

dependencies {
    'ox_inventory',
	'ox_lib'
}

shared_scripts {
    '@ox_lib/init.lua',
	'@es_extended/imports.lua'
}
