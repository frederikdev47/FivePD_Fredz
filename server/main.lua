-- server.lua
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

RegisterNetEvent('blivPolitielevVRP:givJob', function()
    local source = source
    local user_id = vRP.getUserId({source})
    if user_id then
        vRP.addUserGroup({user_id, "Politi-Job"}) -- Tildeler 'Politi-Job' group i vRP
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Politielev',
            description = 'Du er nu Politielev!',
            type = 'success'
        })
    end
end)
