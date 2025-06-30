
fx_version 'cerulean'
game 'gta5'

author 'Fredz'
description 'vRP Bliv Politielev'
version '1.0.0'

shared_script '@ox_lib/init.lua'
client_scripts {
    'client/main.lua'
}
server_scripts {
    '@vrp/lib/utils.lua', 
    'server/main.lua'
}

lua54 'yes'
