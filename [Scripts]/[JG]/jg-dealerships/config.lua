Config = {}

Config.Locale = "en"
Config.NumberAndDateFormat = "en-GB"
Config.Currency = "GBP"
Config.SpeedUnit = "mph"
Config.Logging = false
Config.PlateFormat = "1AA111AA" -- 1 = number, A = letter (max 8 characters)

Config.Framework = "QBCore"  -- or "ESX"
Config.FuelSystem = "none" -- or "cdn-fuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "none"
Config.VehicleKeys = "qb-vehiclekeys" -- or "qb-vehiclekeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "none"
Config.Notifications = "default" -- or "okokNotify", "ox_lib", "ps-ui"

Config.DrawText = "jg-textui" -- or "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"
Config.OpenShowroomPrompt = "[E] Open Showroom"
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = "[E] View in Showroom"
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = "[E] Dealership Management"
Config.OpenManagementKeyBind = 38
Config.SellVehiclePrompt = "[E] Sell Vehicle"
Config.SellVehicleKeyBind = 38

Config.FinancePayments = 12
Config.FinanceDownPayment = 0.40 -- 0.1 means 10%
Config.FinanceInterest = 0.2 -- 0.1 means 10%
Config.FinancePaymentInterval = 4 -- in hours
Config.FinancePaymentFailedHoursUntilRepo = 0.5 -- in hours
Config.MaxFinancedVehiclesPerPlayer = 1

Config.TestDrivePlate = "RRPUK"
Config.TestDriveTimeSeconds = 45

Config.DisplayVehiclesPlate = "RRPUK"
Config.DealerPurchasePrice = 0.9 -- 0.8 = Dealers pay 80% of vehicle price
Config.VehicleOrderTime = 60 -- in mins

Config.Categories = {
  albany = "Albany",
  annis = "Annis",
  benefactor = "Benefactor",
  bf = "BF",
  brute = "Brute",
  bravado = "Bravado",
  coil = "Coil",
  canis = "Canis",
  cheval = "Cheval",
  declasse = "Declasse",
  dundreary = "Dundreary",
  dewbauchee = "Dewbauchee",
  dinka = "Dinka",
  enus = "Enus",
  emperor = "Emperor",
  maxwell = "Maxwell",
  pfister = "Pfister",
  overflod = "Overflod",
  gallivanter = "Gallivanter",
  imponte = "Imponte",
  invetero = "Invetero",
  pfister = "Grotti",
  hijak = "Hijak",
  karin = "Karin",
  lampadati = "Lampadati",
  lcc = "LCC",
  maibatsu = "Maibatsu",
  nagasaki = "Nagasaki",
  ocelot = "Ocelot",
  obey = "Obey",
  ubermacht = "Ubermacht",
  pegassi = "Pegassi",
  principe = "Principe",
  rune = "Rune",
  shitzu = "Shitzu",
  truffade = "Truffade",
  vulcar = "Vulcar",
  vapid = "Vapid",
  weeny = "Weeny",
  western = "Western",
  progen = "Progen",
  speedophile = "Speedophile",
  willard = "Willard",
  wmc = "WMC",
  zirconium = "Zirconium",
  dono = "Donation Vehicles"
}

Config.DealershipLocations = {
  ["pdm"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(-55.99, -1096.59, 26.42),
    openManagement = vector3(-30.43, -1106.84, 26.42),
    purchaseSpawn = vector4(-13.68, -1092.31, 26.67, 159.82),
    testDriveSpawn = vector4(-49.77, -1110.83, 26.44, 75.94),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"albany", "annis", "benefactor", "bf", "brute", "bravado", "coil", "canis", "cheval", "declasse", "dundreary", "dewbauchee", "dinka", "enus", "emperor", "maxwell", "pfister", "overflod", "gallivanter", "imponte", "invetero", "grotti", "hijak", "karin", "lampadati", "maibatsu", "nagasaki", "ocelot", "obey", "ubermacht", "pegassi", "principe", "rune", "shitzu", "truffade", "vulcar", "vapid", "weeny", "progen", "willard", "zirconium"},
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6
    },

    -- New config items in v1.1
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    sellVehicle = vector3(-27.89, -1082.1, 26.64),
    enableFinance = true,
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
    disableShowroomPurchase = false,
    job = "cardealer", -- Owned dealerships only
    directSaleDistance = 50,
  },
  ["boats"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(-739.55, -1333.75, 1.6),
    openManagement = vector3(-731.37, -1310.35, 5.0),
    purchaseSpawn = vector4(-714.42, -1340.01, -0.18, 139.38),
    testDriveSpawn = vector4(-964.43, -3358.34, 13.34, 60.24),
    sellVehicle = vector4(-714.42, -1340.01, -0.18, 139.38),
    camera = {
      name = "Sea",
      coords = vector4(-808.28, -1491.19, -0.47, 113.53),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"dinka", "lampadati", "nagasaki", "pegassi", "shitzu", "speedophile"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    hideBlip = false,
    blip = {
      id = 410,
      color = 2,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["truck"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(1214.37, -3204.53, 6.03),
    openManagement = vector3(1184.45, -3179.27, 7.1),
    purchaseSpawn = vector4(1196.75, -3205.31, 6.0, 91.12),
    testDriveSpawn = vector4(-964.43, -3358.34, 13.34, 60.24),
    sellVehicle = vector4(1196.75, -3205.31, 6.0, 91.12),
    camera = {
      name = "Truck",
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {7.5, 12.0, 15.0, 12.0}
    },
    categories = {"brute"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 477,
      color = 2,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["bikes"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(1203.45, -3115.2, 5.54),
    openManagement = vector3(1208.72, -3115.13, 5.54),
    purchaseSpawn = vector4(-1.68, -1.31, 2.67, 1.82),
    testDriveSpawn = vector4(-964.43, -3358.34, 13.34, 60.24),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"dinka", "lcc", "maibatsu", "nagasaki", "pegassi", "principe", "shitzu", "western", "wmc"},
    enableTestDrive = true,
    hideBlip = true,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6
    },

    -- New config items in v1.1
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    sellVehicle = vector3(-27.89, -1082.1, 26.64),
    enableFinance = false,
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
    disableShowroomPurchase = true,
    job = "cardealer", -- Owned dealerships only
    directSaleDistance = 50,
  },
  ["dono"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = vector3(1203.45, -3115.2, 5.54),
    openManagement = vector3(1208.72, -3115.13, 5.54),
    purchaseSpawn = vector4(-1.68, -1.31, 2.67, 1.82),
    testDriveSpawn = vector4(-964.43, -3358.34, 13.34, 60.24),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"dono"},
    enableTestDrive = true,
    hideBlip = true,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6
    },

    -- New config items in v1.1
    enableSellVehicle = false, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    sellVehicle = vector3(-27.89, -1082.1, 26.64),
    enableFinance = false,
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
    disableShowroomPurchase = true,
    job = "cardealer", -- Owned dealerships only
    directSaleDistance = 50,
  },
}

-- Discord Webhooks
Config.WebhookTestDrive = ""
Config.WebhookPurchase = ""
Config.WebhookFinance = ""
Config.WebhookDealership = ""
Config.WebhookAdmin = ""
