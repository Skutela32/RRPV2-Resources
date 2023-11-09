fx_version 'adamant'
game 'gta5'
lua54 'yes'

description 'DonSamuele Casino System'

shared_scripts {
    '@ox_lib/init.lua', --UNCOMMENT ONLY IF MenuType = 'OX'
    'config/*.lua',
    'default_maps.lua',
    'shared/shared.lua'
}

client_scripts {
    'client/needed.lua',
    'bridge/client/*.lua',
    'client/RageUI/RageUI.lua',
    'client/RageUI/Menu.lua',
    'client/RageUI/MenuController.lua',
    'client/RageUI/components/*.lua',
    'client/RageUI/elements/*.lua',
    'client/RageUI/items/*.lua',
    'client/utils.lua',
    'client/*.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/needed.lua',
    'bridge/server/*.lua',
    'server/utils.lua',
    'webhooks.lua',
    'server/*.lua'
}

escrow_ignore {
    'bridge/client/*.lua',
    'bridge/server/*.lua',
    'config/*.lua',
    'webhooks.lua',
    'default_maps.lua'
}

dependencies {
    '/server:4752',
    '/onesync',
    '/gameBuild:2060'
}
dependency '/assetpacks'