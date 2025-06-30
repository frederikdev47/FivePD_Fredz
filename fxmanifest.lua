-- fxmanifest.lua
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
    '@vrp/lib/utils.lua', -- (nødvendig for vRP Tunnel/Proxy!)
    'server/main.lua'
}

lua54 'yes'
