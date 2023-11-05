Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.MaxInventoryWeight = 60000                           -- Max weight a player can carry (default 120kg, written in grams)
Config.MaxInventorySlots = 30                                -- Max inventory slots for a player

Config.KeyBinds = {
    Inventory = 'TAB',
    HotBar = 'z'
}

Config.CleanupDropTime = 15 * 60                -- How many seconds it takes for drops to be untouched before being deleted
Config.MaxDropViewDistance = 12.5               -- The distance in GTA Units that a drop can be seen
Config.UseItemDrop = true                       -- This will enable item object to spawn on drops instead of markers
Config.ItemDropObject = `prop_nigel_bag_pickup` -- if Config.UseItemDrop is true, this will be the prop that spawns for the item

Config.VendingObjects = {
    'prop_vend_soda_01',
    'prop_vend_soda_02',
    'prop_vend_water_01'
}

Config.BinObjects = {
    '',
}

Config.CraftingObject = ``

Config.VendingItem = {
    {
        name = 'kurkakola',
        price = 4,
        amount = 50,
        info = {},
        type = 'item',
        slot = 1,
    },
    {
        name = 'water_bottle',
        price = 4,
        amount = 50,
        info = {},
        type = 'item',
        slot = 2,
    },
}

-- See the vehicle class here: https://docs.fivem.net/natives/?_0x29439776AAA00A62
-- The template:
-- [vehicleClass] = {slots = [number], maxWeight = [number]}
Config.TrunkSpace = {
    ['default'] = { -- All the vehicle class that not listed here will use this as default
        slots = 30,
        maxWeight = 50000
    },
    [0] = { -- Compacts
        slots = 35,
        maxWeight = 70000
    },
    [1] = { -- Sedans
        slots = 40,
        maxWeight = 100000
    },
    [2] = { -- SUVs
        slots = 50,
        maxWeight = 125000
    },
    [3] = { -- Coupes
        slots = 35,
        maxWeight = 75000
    },
    [4] = { -- Muscle
        slots = 35,
        maxWeight = 75000
    },
    [5] = { -- Sports Classics
        slots = 25,
        maxWeight = 50000
    },
    [6] = { -- Sports
        slots = 25,
        maxWeight = 50000
    },
    [7] = { -- Super
        slots = 10,
        maxWeight = 30000
    },
    [8] = { -- Motorcycles
        slots = 10,
        maxWeight = 10000
    },
    [9] = { -- Off-road
        slots = 45,
        maxWeight = 100000
    },
    [12] = { -- Vans
        slots = 100,
        maxWeight = 200000
    },
    [13] = { -- Cycles
        slots = 0,
        maxWeight = 0
    },
    [14] = { -- Boats
        slots = 50,
        maxWeight = 120000
    },
    [15] = { -- Helicopters
        slots = 50,
        maxWeight = 120000
    },
    [16] = { -- Planes
        slots = 50,
        maxWeight = 120000
    },
}

Config.CraftingItems = {
    {
        name = 'lockpick',
        amount = 50,
        threshold = 0,
        points = 1,
        costs = {
            ['metalscrap'] = 22,
            ['plastic'] = 32,
        },
    },
}

Config.AttachmentCraftingLocation = vector3(88.91, 3743.88, 40.77)

Config.AttachmentCrafting = {
    {
        name = 'none',
        amount = 50,
        threshold = 0,
        points = 1,
        costs = {
            ['none'] = 140,
            ['none'] = 250,
            ['none'] = 60,
        },
    },
}

BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`comet3`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`gp1`] = true,
    [`autarch`] = true,
    [`tyrant`] = true
}

Config.MaximumAmmoValues = {
    ['pistol'] = 50,
    ['smg'] = 100,
    ['shotgun'] = 20,
    ['rifle'] = 100,
}
