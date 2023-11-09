Config = {}

Config.FuelExport = 'cdn-fuel'

Config.Locations = {
    vehicle = {
        coords = vector4(109.9739, -1088.61, 28.302, 345.64),
        pedhash = `a_m_y_business_03`,
        spawnpoint = vector4(111.4223, -1081.24, 29.192, 340.0),
    },

    vrental2 = {
        coords = vector4(-493.13, -689.78, 32.21, 211.86),
        pedhash = `s_m_o_busker_01`,
        spawnpoint = vector4(-484.57, -668.74, 32.61, 270.34),
    },

    aircraft = {
        coords = vector4(-1686.57, -3149.22, 12.99, 240.88),
        pedhash = `s_m_y_airworker`,
        spawnpoint = vector4(-1673.4, -3158.47, 13.99, 331.49),
    },

    boat = {
        coords = vector4(-1799.56, -1224.99, 0.59, 320.14),
        pedhash = `mp_m_boatstaff_01`,
        spawnpoint = vector4(-1798.87, -1232.71, -0.47, 141.7),
    },
}

Config.Blips = {
    {title= Lang:t("info.land_veh"), colour= 50, id= 56, x= 111.0112, y= -1088.67, z= 29.302},
    {title= Lang:t("info.air_veh"), colour= 32, id= 578, x= -1673.39, y= -3158.45, z= 13.99},
    {title= Lang:t("info.sea_veh"), colour= 42, id= 410, x= -753.55, y= -1512.24, z= 5.02}, 
}

Config.Vehicles = {
    land = {
        [1] = {
            model = 'futo',
            money = 25,
        },
        [2] = {
            model = 'bison',
            money = 25,
        },
        [3] = {
            model = 'sanchez',
            money = 750,
        },
    },
    air = {
        [1] = {
            model = 'seasparrow',
            money = 150000,
        },
        [2] = {
            model = 'frogger2',
            money = 90500,
        },
        [3] = {
            model = 'swift',
            money = 201000,
        },
    },
    vrental2 = {
        [1] = {
            model = 'bmx',
            money = 20,
        },
        [2] = {
            model = 'futo',
            money = 120,
        },
        [3] = {
            model = 'asbo',
            money = 130,
        },
        [4] = {
            model = 'panto',
            money = 170,
        },
    },
    sea = {
        [1] = {
            model = 'seashark3',
            money = 25,
        },
        [2] = {
            model = 'dinghy3',
            money = 25,
        },
        [3] = {
            model = 'longfin',
            money = 100,
        },
    }
}