fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

author 'RexShack#3041'
description 'rsg-lootcrate'
version '1.0.0'

client_scripts {
    'client/client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

shared_scripts {
    '@rsg-core/shared/locale.lua',
    'locales/en.lua', -- preferred language
    'config.lua'
}

dependency 'rsg-core'

lua54 'yes'
