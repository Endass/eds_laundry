game "gta5"
fx_version "cerulean"

author "Endas"
description "Basic Laundering script"
version "1.0.0"

lua54 'yes'

-- files {
--   "*",
-- }

client_script {
  "client.lua"
}

server_script {
  -- '@oxmysql/lib/MySQL.lua',
  "server.lua"
}

-- shared_script '@es_extended/imports.lua'
shared_scripts {
  '@ox_lib/init.lua',
  '@es_extended/imports.lua',
  'config.lua'
}