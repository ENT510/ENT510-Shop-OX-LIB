--------------------------------------------------------

-- # ███████╗███╗░░██╗████████╗███████╗░░███╗░░░█████╗░
-- # ██╔════╝████╗░██║╚══██╔══╝██╔════╝░████║░░██╔══██╗
-- # █████╗░░██╔██╗██║░░░██║░░░██████╗░██╔██║░░██║░░██║
-- # ██╔══╝░░██║╚████║░░░██║░░░╚════██╗╚═╝██║░░██║░░██║
-- # ███████╗██║░╚███║░░░██║░░░██████╔╝███████╗╚█████╔╝
-- # ╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═════╝░╚══════╝░╚════╝░

--------------------------------------------------------
-- GITHUB : https://github.com/ENT510


Config              = {}

Config.Webhook      = "https://discord.com/api/webhooks/1165725823907663924/453LbjX9S4-ckKJp_Nn6JRCNbwi8TygGJ4cuFwyJt_Rjj0B4SkDFEypzhjKBpYwRuMDv"

Config.Notify       = "oxlib" -- <-- 'default' Use esx notification / 'okok' Use okokNotify / 'oxlib' Use Ox lib Notify / 'ent' Use ENT510-Notify

Config.Locale       = 'en'  -- <-- Check the locales

Config.NameShop     = 'ITEMS SHOP' -- <-- NAME SHOP 

Config.TARGET       = 'textui' -- <-- If 'target' Use ox_target / If 'textui' use Textui by Ox Lib

Config.TextUiLabel  = '[E] Per accedere allo shop' -- <-- Label translate open shop / for ox_target is in Locales


Config.Items = {

    ---Leave 1 space---                     ---Item name ---  
    {label = " Hamburger - [500$] x1 🍔", name = "burger", price = 500},
    {label = " Water - [500$] x1 🥤", name = "water", price = 500},
    {label = " Phone - [500$] x1 📳", name = "phone", price = 500},
    {label = " Medikit - [500$] x1 🧰", name = "medikit", price = 500},
    {label = " Bandage - [500$] x1 🩹", name = "bandage", price = 500},
    
 }

Config.PedPositionShop = {

    -- ## 1 INNOCENCE BOULEVARD ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(24.2919, -1346.5770, 29.4970), -- <-- Only Vector 3
        heading = 268.4116, -- <-- Position of the ped.
    },


    -- ## 2 SAN ANDREAS AVENUE ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(-1221.4384, -908.2227, 12.3264), -- <-- Only Vector 3
        heading = 40.1430, -- <-- Position of the ped.
    },


    -- ## 3 PROSPERITY STREET ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(-1486.1326, -377.7343, 40.1634), -- <-- Only Vector 3
        heading = 136.6636, -- <-- Position of the ped.
    },


    -- ## 4 WEST MIRROR DRIVE ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(1165.0109, -322.9185, 69.2051), -- <-- Only Vector 3
        heading = 104.0508, -- <-- Position of the ped.
    },


    -- ## 5 EL RANCHO BOULEVARD ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(1133.9186, -982.7535, 46.4158), -- <-- Only Vector 3
        heading = 277.5182, -- <-- Position of the ped.
    },


    -- ## 6 EL RANCHO BOULEVARD ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(-2966.2878, 390.7081, 15.0433), -- <-- Only Vector 3
        heading = 84.5453, -- <-- Position of the ped.
    },


     -- ## 7 CLINTON AVENUE ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(372.7632, 328.1296, 103.5664), -- <-- Only Vector 3
        heading = 256.4511, -- <-- Position of the ped.
    },


    -- ## 8 NILAND AVENUE ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(1959.0663, 3741.3694, 32.3438), -- <-- Only Vector 3
        heading = 311.0866, -- <-- Position of the ped.
    },


    -- ## 9 ROUTE 58 ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(549.4827, 2669.6418, 42.1565), -- <-- Only Vector 3
        heading = 99.3873, -- <-- Position of the ped.
    },


    -- ## 10 SENORA FREEWAY ##

    {
        ped = "mp_m_shopkeep_01",  -- <-- Model of the ped you want to use (https://docs.fivem.net/docs/game-references/ped-models/)
        position = vec3(1728.4788, 6416.7803, 35.0372), -- <-- Only Vector 3
        heading = 245.9855, -- <-- Position of the ped.
    },

}




