----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

-- Language settings
Language = {
    Targeting = {
        ['playercropicon'] = 'fa-solid fa-wheat-awn', -- Player crops icon
        ['playercroplabel'] = 'Check Crop', -- Player crops label
    },
    XP = {
        ['commandtext'] = 'Displays your current farming xp.', -- Command text
        ['xpnotif'] = 'Farming:', -- Notification
    },
    Farming = {
        Trees = {
            ['pickapplexp'] = 'You picked some '..Config.Farming.Trees.Apple.Return.label..'s and earned a little experience in the process!', -- Notification
            ['pickapplenoxp'] = 'You picked some '..Config.Farming.Trees.Apple.Return.label..'s!', -- Notification
            ['pickorangexp'] = 'You picked some '..Config.Farming.Trees.Orange.Return.label..'s and earned a little experience in the process!', -- Notification
            ['pickorangenoxp'] = 'You picked some '..Config.Farming.Trees.Orange.Return.label..'s!', -- Notification
            ['picklemonxp'] = 'You picked some '..Config.Farming.Trees.Lemon.Return.label..'s and earned a little experience in the process!', -- Notification
            ['picklemonnoxp'] = 'You picked some '..Config.Farming.Trees.Lemon.Return.label..'s!', -- Notification
            ['picklimexp'] = 'You picked some '..Config.Farming.Trees.Lime.Return.label..'s and earned a little experience in the process!', -- Notification
            ['picklimenoxp'] = 'You picked some '..Config.Farming.Trees.Lime.Return.label..'s!', -- Notification
            ['picktreefailxp'] = 'The fruit isnt ripe enough yet.. You lost some experience for wasting time..', -- Notification
            ['picktreefailnoxp'] = 'The fruit isnt ripe enough yet..', -- Notification
            ['pickapple'] = 'Picking Apples..', -- Progressbar
            ['pickorange'] = 'Picking Oranges..', -- Progressbar
            ['picklemon'] = 'Picking Lemon..', -- Progressbar
            ['picklime'] = 'Picking Lime', -- Progressbar 
        },
        Animals = {
            ['nopail'] = 'You cant milk cows without a '..Config.Farming.Animals.Cow.Required.label..'..', -- Notification
            ['alreadypetdog'] = 'You have already pet a dog come back in ('..Config.Farming.Animals.Dog.Cooldown..') minutes..' , -- Notification
            ['alreadypetpig'] = 'You have already pet a pig come back in ('..Config.Farming.Animals.Pig.Cooldown..') minutes..' , -- Notification
            ['alreadymilking'] = 'You are already milking a cow..', -- Notification
            ['collecteggxp'] = 'You collected some '..Config.Farming.Animals.Chicken.Return.label..'s and earned a little experience in the process!', -- Notification
            ['collecteggnoxp'] = 'You collected some '..Config.Farming.Animals.Chicken.Return.label..'s!', -- Notification
            ['collectmilkxp'] = 'You collected some '..Config.Farming.Animals.Cow.Return.label..' and earned a little experience in the process!', -- Notification
            ['collectmilknoxp'] = 'You collected some '..Config.Farming.Animals.Cow.Return.label..'!', -- Notification
            ['collectanimalfailxp'] = 'You didnt manage to collect anything and you lost some experience for wasting time..', -- Notification
            ['collectanimalfailnoxp'] = 'You didnt manage to collect anything..', -- Notification
            ['nobottle'] = 'You dont have anything to bottle your alcohol into..', -- Notification
            ['enoughbottle'] = 'You dont have enough bottles with you..', -- Notification
            ['checkeggs'] = 'Checking For Eggs..', -- Progressbar
            ['milkcow'] = 'Milking Cow..', -- Progressbar
            ['petdog'] = 'Petting Dog..', -- Progressbar
            ['petpig'] = 'Petting Pig..', -- Progressbar
            ['bottle'] = 'Bottling Milk..', -- Progressbar
        },
        Troughs = {
            ['nobale'] = 'You need to be carrying a hay bale to refill troughs..', -- Notification
            ['refillxp'] = 'You refilled a trough and earned a little experience in the process!', -- Notification
            ['refillnoxp'] = 'You refilled a trough!', -- Notification
            ['alreadyrefilledpig'] = 'You have already refilled this trough come back in ('..Config.Farming.Troughs.Pig.Cooldown..') minutes..', -- Notification
            ['alreadyrefilledcow'] = 'You have already refilled this trough come back in ('..Config.Farming.Troughs.Cow.Cooldown..') minutes..', -- Notification
            ['alreadyrefilledchicken'] = 'You have already refilled this trough come back in ('..Config.Farming.Troughs.Chicken.Cooldown..') minutes..', -- Notification
            ['filltrough'] = 'Refilling Trough..', -- Progressbar
        },
        Planting = {
            ['plantedseednoxp'] = 'You planted a seed successfully!', -- Notification
            ['plantedseedxp'] = 'You successfully planted a seed and earned some xp!', -- Notification
            ['tooclose'] = 'You are too close to another plant..', -- Notification
            ['wrongsoil'] = 'You cant plant here look for some more fertile land..', -- Notification
            ['harvestxp'] = 'You successfully harvested some crops and earned some xp!', -- Notification
            ['harvestnoxp'] = 'You successfully harvested some crops!', -- Notification
            ['destroyedcrop'] = 'You successfully destroyed some crops!', -- Notification
            ['notoolplant'] = 'You cant plant seeds without a '..Config.Farming.Planting.Crops.Required.label..'..', -- Notification
            ['notoolharvest'] = 'You cant harvest crops without a '..Config.Farming.Planting.Harvest.Required.label..'..', -- Notification
            ['notooldestroy'] = 'You cant destroy crops without a '..Config.Farming.Planting.Destroy.Required.label..'..', -- Notification
            ['nofertilizer'] = 'You cant feed plants without '..Config.Farming.Planting.Feed.Required.label..'..', -- Notification
            ['nowater'] = 'You cant water plants without '..Config.Farming.Planting.Water.Required.label..'..', -- Notification
            ['harvestheadericon'] = 'fa-solid fa-wheat-awn', -- Menu header icon
            ['harvestheader'] = 'Harvest Crop', -- Menu header
            ['harvestheadericon'] = 'fa-solid fa-scissors', -- Menu header icon
            ['feedheader'] = 'Feed Crop', -- Menu header
            ['feedheadericon'] = 'fa-solid fa-bottle-water', -- Menu header icon
            ['waterheader'] = 'Water Crop', -- Menu header
            ['waterheadericon'] = 'fa-solid fa-droplet', -- Menu header icon
            ['destroyheader'] = 'Destroy Crop', -- Menu header
            ['destroyheadericon'] = 'fa-solid fa-fire', -- Menu header icon
            ['plantseed'] = 'Planting A Seed..', -- Progressbar
            ['harvestcrop'] = 'Harvesting Crops..', -- Progressbar
            ['destroycrop'] = 'Destroying Crops..', -- Progressbar
            ['feedcrop'] = 'Feeding Crops..', -- Progressbar
            ['watercrop'] = 'Watering Crops..', -- Progressbar
        },
        Objects = {
            ['nocan'] = 'You dont have any empty '..Config.Farming.Objects.Water.Required.label..' to fill..', -- Notification
            ['nobale'] = 'You are not carrying a hay bale..', -- Notification
            ['norefill'] = 'It looks like all the animals have been fed check back later..', -- Notification
            ['collectedbale'] = 'You picked up a Hay Bale!', -- Notification
            ['returnedbale'] = 'You returned a Hay Bale!', -- Notification
            ['collectedpail'] = 'You picked up a '..Config.Farming.Animals.Cow.Required.label..'!', -- Notification
            ['waterfail'] = 'You need to be in water to fill up your '..Config.Farming.Objects.Water.Required.label..'..', -- Notification
            ['watersuccess'] = 'You filled up your '..Config.Farming.Objects.Water.Required.label..'!', -- Notification
            ['sacksuccess'] = 'You collected some '..Config.Farming.Objects.Sack.Return.label..'s!', -- Notification
            ['cratesuccess'] = 'You collected some '..Config.Farming.Objects.Crate.Return.label..'s!', -- Notification
            ['collectpail'] = 'Collect Milking Pail..', -- Progressbar
            ['collectbale'] = 'Collect Hay Bale..', -- Progressbar
            ['returnbale'] = 'Returning Hay Bale..', -- Progressbar
            ['collectwater'] = 'Collecting Water..', -- Progressbar
            ['collectsack'] = 'Collecting Sacks..', -- Progressbar
            ['collectcrates'] = 'Collecting Crates..', -- Progressbar
        },
        Farmer = {
            ['farmerheader'] = 'Farmer', -- Menu header
            ['farmerheadertext'] = 'Purchase farming supplies and more!', -- Menu icon
            ['farmerheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['storeheader'] = 'Open Store', -- Menu header
            ['storeheadertext'] = 'Purchase farming supplies here!', -- Menu icon
            ['storeheadericon'] = 'fa-solid fa-shop', -- Menu icon
            ['infoheader'] = 'Brewing', -- Menu header
            ['infoheadertext'] = 'Gain vital brewing information here!', -- Menu icon
            ['infoheadericon'] = 'fa-solid fa-beer-mug-empty', -- Menu icon
            ['timer'] = 'My work day is over. Come back between '..Config.Stores.Farmer.Open..' and '..Config.Stores.Farmer.Close..'..', -- Notification
            ['cantemail'] = 'You have already been sent the information check your phone..', -- Notification
            ['emailsent'] = 'Information has been requested please wait for an email!', -- Notification
            ['gpsset'] = 'A waypoint has been sent to your GPS.', -- Notification
        },
        Packing = {
            ['packingheader'] = 'Package Crops', -- Menu header
            ['packingheadertext'] = 'Pack crops for deliveries here!', -- Menu icon
            ['packingheadericon'] = 'fas fa-box-open', -- Menu icon
            ['barleyheader'] = 'Barley', -- Menu header
            ['barleyheadertext'] = 'Required:</p>1x '..Config.Packing.Sack.Required.label..'</p>'..Config.Packing.Sack.Barley.Required.amount..'x '..Config.Packing.Sack.Barley.Required.label, -- Menu icon
            ['barleyheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['maizeheader'] = 'Maize', -- Menu header
            ['maizeheadertext'] = 'Required:</p>1x '..Config.Packing.Sack.Required.label..'</p>'..Config.Packing.Sack.Maize.Required.amount..'x '..Config.Packing.Sack.Maize.Required.label, -- Menu icon
            ['maizeheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['potatoheader'] = 'Potatoes', -- Menu header
            ['potatoheadertext'] = 'Required:</p>1x '..Config.Packing.Sack.Required.label..'</p>'..Config.Packing.Sack.Potato.Required.amount..'x '..Config.Packing.Sack.Potato.Required.label, -- Menu icon
            ['potatoheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['mushroomheader'] = 'Mushrooms', -- Menu header
            ['mushroomheadertext'] = 'Required:</p>1x '..Config.Packing.Sack.Required.label..'</p>'..Config.Packing.Sack.Mushroom.Required.amount..'x '..Config.Packing.Sack.Mushroom.Required.label, -- Menu icon
            ['mushroomheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['appleheader'] = 'Apples', -- Menu header
            ['appleheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Apple.Required.amount..'x '..Config.Packing.Crate.Apple.Required.label, -- Menu icon
            ['appleheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['orangeheader'] = 'Oranges', -- Menu header
            ['orangeheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Orange.Required.amount..'x '..Config.Packing.Crate.Orange.Required.label, -- Menu icon
            ['orangeheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['lemonheader'] = 'Lemons', -- Menu header
            ['lemonheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Lemon.Required.amount..'x '..Config.Packing.Crate.Lemon.Required.label, -- Menu icon
            ['lemonheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['limeheader'] = 'Limes', -- Menu header
            ['limeheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Lime.Required.amount..'x '..Config.Packing.Crate.Lime.Required.label, -- Menu icon
            ['limeheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['lettuceheader'] = 'Lettuce', -- Menu header
            ['lettuceheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Lettuce.Required.amount..'x '..Config.Packing.Crate.Lettuce.Required.label, -- Menu icon
            ['lettuceheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['cactusfruitheader'] = 'Cactus Fruits', -- Menu header
            ['cactusfruitheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.CactusFruit.Required.amount..'x '..Config.Packing.Crate.CactusFruit.Required.label, -- Menu icon
            ['cactusfruitheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['tomatoheader'] = 'Tomatoes', -- Menu header
            ['tomatoheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Tomato.Required.amount..'x '..Config.Packing.Crate.Tomato.Required.label, -- Menu icon
            ['tomatoheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['strawberryheader'] = 'Strawberries', -- Menu header
            ['strawberryheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Strawberry.Required.amount..'x '..Config.Packing.Crate.Strawberry.Required.label, -- Menu icon
            ['strawberryheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['blueberryheader'] = 'Blueberries', -- Menu header
            ['blueberryheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Blueberry.Required.amount..'x '..Config.Packing.Crate.Blueberry.Required.label, -- Menu icon
            ['blueberryheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['pineappleheader'] = 'Pineapples', -- Menu header
            ['pineappleheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Pineapple.Required.amount..'x '..Config.Packing.Crate.Pineapple.Required.label, -- Menu icon
            ['pineappleheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['milkheader'] = 'Milk', -- Menu header
            ['milkheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Milk.Required.amount..'x '..Config.Packing.Crate.Milk.Required.label, -- Menu icon
            ['milkheadericon'] = 'fa-solid fa-cow', -- Menu icon
            ['eggheader'] = 'Egg', -- Menu header
            ['eggheadertext'] = 'Required:</p>1x '..Config.Packing.Crate.Required.label..'</p>'..Config.Packing.Crate.Egg.Required.amount..'x '..Config.Packing.Crate.Egg.Required.label, -- Menu icon
            ['eggheadericon'] = 'fa-solid fa-egg', -- Menu icon
            ['nopacking'] = 'You dont have anything to pack crops into..', -- Notification
            ['enoughitems'] = 'You dont have enough crops to pack..', -- Notification
            ['anyitems'] = 'You dont have any crops to pack..', -- Notification
            ['packedxp'] = 'You packed some crops and earned a little experience in the process!', -- Notification
            ['packednoxp'] = 'You packed some crops!', -- Notification
            ['packingcrops'] = 'Packing Crops..', -- Progressbar
        },
        Warehouse = {
            ['warehouseheader'] = 'Warehouse', -- Menu header
            ['warehouseheadertext'] = 'Buy or sell crops here!', -- Menu text
            ['warehouseheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['buyheader'] = 'Purchase Crops', -- Menu header
            ['buyheadertext'] = 'Purchase your crops here!', -- Menu text
            ['buyheadericon'] = 'fa-solid fa-shop', -- Menu icon
            ['sellheader'] = 'Sell Crops', -- Menu header
            ['sellheadertext'] = 'Sell your crops here!', -- Menu text
            ['sellheadericon'] = 'fa-solid fa-money-bill-wheat', -- Menu icon 
            ['barleyheader'] = 'Barley Sack', -- Menu header
            ['barleybuyheader'] = 'Barley', -- Menu header
            ['barleyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Barley, -- Menu text
            ['barleybuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Barley, -- Menu text
            ['barleyheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['maizeheader'] = 'Maize Sack', -- Menu header
            ['maizebuyheader'] = 'Maize', -- Menu header
            ['maizeheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Maize, -- Menu text
            ['maizebuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Maize, -- Menu text
            ['maizeheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['potatoheader'] = 'Potato Sack', -- Menu header
            ['potatobuyheader'] = 'Potato', -- Menu header
            ['potatoheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Potato, -- Menu text
            ['potatobuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Potato, -- Menu text
            ['potatoheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['mushroomheader'] = 'Mushroom Sack', -- Menu header
            ['mushroombuyheader'] = 'Mushroom', -- Menu header
            ['mushroomheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Mushroom, -- Menu text
            ['mushroombuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Mushroom, -- Menu text
            ['mushroomheadericon'] = 'fa-solid fa-wheat-awn', -- Menu icon
            ['appleheader'] = 'Apple Crate', -- Menu header
            ['applebuyheader'] = 'Apple', -- Menu header
            ['appleheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Apple, -- Menu text
            ['applebuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Apple, -- Menu text
            ['appleheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['orangeheader'] = 'Orange Crate', -- Menu header
            ['orangebuyheader'] = 'Orange', -- Menu header
            ['orangeheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Orange, -- Menu text
            ['orangebuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Orange, -- Menu text
            ['orangeheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['lemonheader'] = 'Lemon Crate', -- Menu header
            ['lemonbuyheader'] = 'Lemon', -- Menu header
            ['lemonheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Lemon, -- Menu text
            ['lemonbuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Lemon, -- Menu text
            ['lemonheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['limeheader'] = 'Lime Crate', -- Menu header
            ['limebuyheader'] = 'Lime', -- Menu header
            ['limeheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Lime, -- Menu text
            ['limebuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Lime, -- Menu text
            ['limeheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['lettuceheader'] = 'Lettuce Crate', -- Menu header
            ['lettucebuyheader'] = 'Lettuce', -- Menu header
            ['lettuceheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Lettuce, -- Menu text
            ['lettucebuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Lettuce, -- Menu text
            ['lettuceheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['cactusfruitheader'] = 'Cactus Fruit Crate', -- Menu header
            ['cactusfruitbuyheader'] = 'Cactus Fruit', -- Menu header
            ['cactusfruitheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.CactusFruit, -- Menu text
            ['cactusfruitbuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.CactusFruit, -- Menu text
            ['cactusfruitheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['tomatoheader'] = 'Tomato Crate', -- Menu header
            ['tomatobuyheader'] = 'Cactus Fruit', -- Menu header
            ['tomatoheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Tomato, -- Menu text
            ['tomatobuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Tomato, -- Menu text
            ['tomatoheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['strawberryheadggr'] = 'Strawberry Crate', -- Menu header
            ['strawberrybuyheader'] = 'Strawberry', -- Menu header
            ['strawberryheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Strawberry, -- Menu text
            ['strawberrybuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Strawberry, -- Menu text
            ['strawberryheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['blueberryheader'] = 'Blueberry Crate', -- Menu header
            ['blueberrybuyheader'] = 'Blueberry', -- Menu header
            ['blueberryheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Blueberry, -- Menu text
            ['blueberrybuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Blueberry, -- Menu text
            ['blueberryheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['pineappleheader'] = 'Pineapple Crate', -- Menu header
            ['pineapplebuyheader'] = 'Pineapple', -- Menu header
            ['pineappleheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Pineapple, -- Menu text
            ['pineapplebuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Pineapple, -- Menu text
            ['pineappleheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['milkheader'] = 'Milk Crate', -- Menu header
            ['milkbuyheader'] = 'Milk', -- Menu header
            ['milkheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Milk, -- Menu text
            ['milkbuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Milk, -- Menu text
            ['milkheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['eggheader'] = 'Egg Crate', -- Menu header
            ['eggbuyheader'] = 'Egg', -- Menu header
            ['eggheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Sell.Egg, -- Menu text
            ['eggbuyheadertext'] = 'Price: $'..Config.Stores.Warehouse.Prices.Buy.Egg, -- Menu text
            ['eggheadericon'] = 'fa-solid fa-apple-whole', -- Menu icon
            ['inputtext'] = 'Purchase Crops', -- Input header text
            ['inputamount'] = 'amount', -- Input header text
            ['timer'] = 'My work day is over. Come back between '..Config.Stores.Warehouse.Open..' and '..Config.Stores.Warehouse.Close..'..', -- Notification
            ['sold'] = 'You sold some crops to the warehouse!', -- Notification
            ['nosell'] = 'You dont have anything to sell..', -- Notification
            ['enoughmoney'] = 'You dont have enough money..', -- Notification
            ['nostock'] = 'We dont have enough in stock. Amount:', -- Notification 
        },
        Brewing = {
            ['stillheader'] = 'Still', -- Menu header 
            ['stillheadertext'] = 'Brew bootleg alcohol here!', -- Menu text
            ['stillheadericon'] = 'fa-solid fa-fire-burner', -- Menu icon
            ['mashheader'] = 'Prepare Mash', -- Menu header 
            ['mashheadertext'] = 'Prepare your brewing mash here!', -- Menu text
            ['mashheadericon'] = 'fa-solid fa-kitchen-set', -- Menu icon
            ['moonshinemashheader'] = 'Moonshine Mash', -- Menu header 
            ['moonshinemashheadertext'] = 'Required:</p>1x '..Config.Brewing.Moonshine.Mash.Required['1'].label..'</p>'..Config.Brewing.Moonshine.Mash.Required['2'].amount..'x '..Config.Brewing.Moonshine.Mash.Required['2'].label..'</p>'..Config.Brewing.Moonshine.Mash.Required['3'].amount..'x '..Config.Brewing.Moonshine.Mash.Required['3'].label..'</p>'..Config.Brewing.Moonshine.Mash.Required['4'].amount..'x '..Config.Brewing.Moonshine.Mash.Required['4'].label, -- Menu text
            ['moonshinemashheadericon'] = 'fa-solid fa-fire-burner', -- Menu icon
            ['vodkamashheader'] = 'Vodka Mash', -- Menu header 
            ['vodkamashheadertext'] = 'Required:</p>1x '..Config.Brewing.Vodka.Mash.Required['1'].label..'</p>'..Config.Brewing.Vodka.Mash.Required['2'].amount..'x '..Config.Brewing.Vodka.Mash.Required['2'].label..'</p>'..Config.Brewing.Vodka.Mash.Required['3'].amount..'x '..Config.Brewing.Vodka.Mash.Required['3'].label..'</p>'..Config.Brewing.Vodka.Mash.Required['4'].amount..'x '..Config.Brewing.Vodka.Mash.Required['4'].label, -- Menu text
            ['vodkamashheadericon'] = 'fa-solid fa-fire-burner', -- Menu icon
            ['fermentheader'] = 'Ferment Alcohol', -- Menu header 
            ['fermentheadertext'] = 'Ferment your alcohol here!', -- Menu text
            ['fermentheadericon'] = 'fa-solid fa-bottle-droplet', -- Menu icon
            ['moonshinefermheader'] = 'Ferment Moonshine', -- Menu header 
            ['moonshinefermheadertext'] = 'Required:</p>'..Config.Brewing.Moonshine.Ferment.Required['1'].amount..'x '..Config.Brewing.Moonshine.Ferment.Required['1'].label..'</p>'..Config.Brewing.Moonshine.Ferment.Required['2'].amount..'x '..Config.Brewing.Moonshine.Ferment.Required['2'].label, -- Menu text
            ['moonshinefermheadericon'] = 'fa-solid fa-fire-burner', -- Menu icon
            ['vodkafermheader'] = 'Ferment Vodka', -- Menu header 
            ['vodkafermheadertext'] = 'Required:</p>'..Config.Brewing.Vodka.Ferment.Required['1'].amount..'x '..Config.Brewing.Vodka.Ferment.Required['1'].label..'</p>'..Config.Brewing.Vodka.Ferment.Required['2'].amount..'x '..Config.Brewing.Vodka.Ferment.Required['2'].label, -- Menu text
            ['vodkafermheadericon'] = 'fa-solid fa-fire-burner', -- Menu icon
            ['distillheader'] = 'Distill Fermented Alcohol', -- Menu header 
            ['distillheadertext'] = 'Distill your fermented alcohol here!', -- Menu text
            ['distillheadericon'] = 'fa-solid fa-bottle-droplet', -- Menu icon
            ['moonshinedistheader'] = 'Distill Moonshine', -- Menu header 
            ['moonshinedistheadertext'] = 'Required:</p>1x '..Config.Brewing.Moonshine.Distill.Required['1'].label..'</p>'..Config.Brewing.Moonshine.Distill.Required['2'].amount..'x '..Config.Brewing.Moonshine.Distill.Required['2'].label, -- Menu text
            ['moonshinedistheadericon'] = 'fa-solid fa-fire-burner', -- Menu icon
            ['vodkadistheader'] = 'Distill Vodka', -- Menu header 
            ['vodkadistheadertext'] = 'Required:</p>1x '..Config.Brewing.Vodka.Distill.Required['1'].label..'</p>'..Config.Brewing.Vodka.Distill.Required['2'].amount..'x '..Config.Brewing.Vodka.Distill.Required['2'].label, -- Menu text
            ['vodkadistheadericon'] = 'fa-solid fa-fire-burner', -- Menu icon
            ['level'] = 'You have no idea what to do here.. Gain some more experience first..', -- Notification
            ['nobucket'] = 'You dont have anything to put your mix into..', -- Notification
            ['wrongitems'] = 'You dont have the correct items check your pockets..', -- Notification
            ['mashxp'] = 'You prepared a mash mix and earned a little experience in the process!', -- Notification
            ['mashnoxp'] = 'You prepared a mash mix!', -- Notification
            ['fermxp'] = 'You fermented some alcohol and earned a little experience in the process!', -- Notification
            ['fermnoxp'] = 'You fermented some alcohol!', -- Notification
            ['nobottle'] = 'You dont have anything to bottle your alcohol into..', -- Notification
            ['enoughbottle'] = 'You dont have enough bottles with you..', -- Notification
            ['prepmash'] = 'Preparing Mash..', -- Progressbar
            ['waitmash'] = 'Waiting For Mash..', -- Progressbar
            ['prepferm'] = 'Pouring Mash Into Barrel..', -- Progressbar
            ['waitferm'] = 'Waiting For Alcohol To Ferment..', -- Progressbar
            ['distill'] = 'Distilling Alcohol..', -- Progressbar
            ['bottle'] = 'Bottling Alcohol..', -- Progressbar
        }
    },
    Shared = {
        ['returnmenu'] = 'Return', -- Menu header
		['returnmenuicon'] = 'fa-solid fa-backward', -- Menu header icon
        ['exitmenu'] = 'Exit', -- Menu header
		['exitmenuicon'] = 'fa-solid fa-circle-xmark', -- Menu header icon
        ['cancelled'] = 'Action cancelled..', -- Notification
        ['noinvent'] = 'Looks like your pockets are full..', -- Notification
        ['outrange'] = 'Looks like you are too far away..', -- Notification
        ['isbusy'] = 'You are already doing something..', -- Notification
    }
}