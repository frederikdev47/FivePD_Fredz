-- client.lua
local npcCoords = vector3(436.976, -984.453, 30.689)

-- Load NPC model
local function LoadModel(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end
end

CreateThread(function()
    LoadModel('s_m_y_cop_01')
    local npc = CreatePed(0, GetHashKey('s_m_y_cop_01'), npcCoords.x, npcCoords.y, npcCoords.z - 1, 90.0, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)

    exports['ox_target']:addBoxZone({
        coords = npcCoords,
        size = vec3(1, 1, 2),
        rotation = 0,
        debug = false,
        options = {
            {
                name = 'bliv_politielev',
                icon = 'fas fa-user-shield',
                label = 'Bliv Politielev!',
                onSelect = function()
                    lib.registerContext({
                        id = 'politielev_menu',
                        title = 'Politielev Ansøgning',
                        options = {
                            {
                                title = 'Bliv Politielev!',
                                description = 'Klik her for at blive optaget!',
                                onSelect = function()
                                    TriggerServerEvent('blivPolitielevVRP:givJob')
                                end,
                            },
                        }
                    })
                    lib.showContext('politielev_menu')
                end
            }
        }
    })
end)
