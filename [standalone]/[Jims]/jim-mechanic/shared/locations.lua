Config.Locations = Config.Locations or {}

Config.Locations[#Config.Locations+1] = { --[[ GABZ ALTA STREET BENNYS ]]--
	Enabled = true,
	job = "mechanic",
	zones = {
		vec2(-263.99075317382, -1349.6701660156),
		vec2(-263.5015258789, -1298.9702148438),
		vec2(-229.94024658204, -1299.089477539),
		vec2(-229.81985473632, -1291.589477539),
		vec2(-216.73846435546, -1288.9470214844),
		vec2(-193.63221740722, -1294.155883789),
		vec2(-174.24346923828, -1293.1431884766),
		vec2(-151.77659606934, -1300.6693115234),
		vec2(-151.88639831542, -1311.1921386718),
		vec2(-177.41833496094, -1311.566772461),
		vec2(-177.5919342041, -1351.1942138672)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(-239.71, -1315.16, 30.89, 8.89), w = 3.6, d = 0.8, },
	},
	store = {
		{ coords = vec4(-232.19, -1316.23, 30.89, 335.11), w = 3.60, d = 0.8 },
	},
	crafting = {
		{ coords = vec4(-203.17, -1337.46, 30.92, 187.18), w = 5.8, d = 5.5 },
	},
	clockin = {
		{ coords = vec4(-195.55, -1316.46, 0.2, 181.72), prop = false },
	},
	manualRepair = {
		{ coords = vec4(-213.78, -1333.98, 30.89, 359.96), prop = true, },
	},
	carLift = {
        { coords = vec4(-201.85, -1319.65, 31.3, 19.36), use = true },
        { coords = vec4(-221.27, -1318.71, 31.3, 352.67), use = true },
    },
	garage = {
		spawn = vec4(-182.74, -1317.61, 0.63, 357.23),
		out = vec4(-190.62, -1311.57, 0.3, 0.0),
		list = { "towtruck" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/b/be/BennysOriginalMotorWorks-GTAO-Logo.png",
		{ coords = vec4(-192.21, -1316.34, 0.10, 285.83), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-211.55, -1324.55, 30.9),
		label = "Bennys Original Motorworks",
		color = 1,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 16711680,
	}
}
