--------------------------------------------------------

-- # ███████╗███╗░░██╗████████╗███████╗░░███╗░░░█████╗░
-- # ██╔════╝████╗░██║╚══██╔══╝██╔════╝░████║░░██╔══██╗
-- # █████╗░░██╔██╗██║░░░██║░░░██████╗░██╔██║░░██║░░██║
-- # ██╔══╝░░██║╚████║░░░██║░░░╚════██╗╚═╝██║░░██║░░██║
-- # ███████╗██║░╚███║░░░██║░░░██████╔╝███████╗╚█████╔╝
-- # ╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═════╝░╚══════╝░╚════╝░

--------------------------------------------------------
-- GITHUB : https://github.com/ENT510


ESX = exports["es_extended"]:getSharedObject()

---PED / TARGET OPTIONS---

Citizen.CreateThread(function()
    for k, v in pairs(Config.PedPositionShop) do
        local modelHash = GetHashKey(v.ped)
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do Wait(1) end
        CreateNPC(modelHash, v)
        SetModelAsNoLongerNeeded(modelHash)
    end
end)
function CreateNPC(modelHash, NPC)
    local coords = NPC.position
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, 59)
    SetBlipScale(blip, 0.7)
    SetBlipColour(blip, 50)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.NameShop)
    EndTextCommandSetBlipName(blip)

    
    local ped = CreatePed(4, modelHash, coords.x, coords.y, coords.z - 1, NPC.heading, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedHasAiBlip(ped, true)
    Citizen.CreateThread(function()
        if Config.TARGET == 'target' then

        exports.ox_target:addLocalEntity((ped), {
            {
                name = 'ped',
                icon = 'fa-solid fa-cart-shopping',
                label = _U('titolo_aperturashop'),
                onSelect = function()
                    lib.showMenu('ENT510_shop_ox')
                    
                end
            }
        })
    end
if Config.TARGET == 'textui' then 
    local point = lib.points.new({
        coords = vec3(NPC.position),
        distance = 3.5  
    })
    
    function point:onEnter()
        lib.showTextUI(Config.TextUiLabel)
        -- exports['ENT510-TextUI']:Show(Config.TextUiLabel)
    end
    
    function point:onExit()
        lib.hideTextUI()
        -- exports['ENT510-TextUI']:Hide()
        
    end
    
    function point:nearby()    
        if self.currentDistance < 3 and IsControlJustReleased(0, 38) then
            exports['ox_lib']:showMenu('ENT510_shop_ox')
        end
    end
end
Wait(1000)
    end)
end

Citizen.CreateThread(function()
    lib.registerMenu({
        id = 'ENT510_shop_ox',
        title = Config.NameShop,
        position = 'top-left',
        disableInput = true,
        options = Config.Items
    }, function(selected)
        local input = lib.inputDialog('🏪🛒 ITEMS SHOP 🛒🏪', {
            {
                type = 'number',
                label = 'HELLO',
                description = 'SPECIFY THE QUANTITY',
                icon = 'bars',
                min = 1,
                max = 50,
                move = false
            }
        })
        if not input then return 
            lib.showMenu('ENT510_shop_ox')
        end
        local alert = lib.alertDialog({
            header = 'Do you want to proceed with the purchase?',
            content = 'Confirm or cancel your purchase',
            centered = true,
            size = 'sm',
            cancel = true,
        })

        if alert == "cancel" then return 
        lib.showMenu('ENT510_shop_ox')
        end
        if not input then return end
        local quantita = input[1]
        if quantita > 0 then
            TriggerServerEvent("ENT510:buyItem", selected, quantita)
            -- ExecuteCommand('me Sta Comprando ~b~Qualcosa')  -- <-- Show target over head when buy , Work whit /ME resource
        end
    end)
end)


