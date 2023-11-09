local type = {money=1,item=2,weapon=3} -- no touchey, thank you
Config = {}

Config.claimed = "~g~You claimed your daily reward"
Config.rewards = {
    {
        type = type.money,
        value = 1000
    },
    {
        type = type.money,
        value = 2000
    },
    {
        type = type.money,
        value = 3000
    },
    {
        type = type.money,
        Value = 4000
    }
}

Config.random_rewards_enabled = false
Config.random_rewards = {
    {
        chance = 90, -- this can be any whole number (higher = better chance)
        {
            type = type.money,
            value = 1000
        },
        {
            type = type.money,
            value = 2000
        },
        {
            type = type.money,
            value = 1500
        }
    },
    {
        chance = 10,
        {
            type = type.money,
            value = 5000
        },
        {
            type = type.money,
            value = 5000
        }
    }
}