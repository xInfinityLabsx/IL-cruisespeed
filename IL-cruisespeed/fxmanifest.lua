--[[ 
██╗███╗░░██╗███████╗██╗███╗░░██╗██╗████████╗██╗░░░██╗  ██╗░░░░░░█████╗░██████╗░░██████╗
██║████╗░██║██╔════╝██║████╗░██║██║╚══██╔══╝╚██╗░██╔╝  ██║░░░░░██╔══██╗██╔══██╗██╔════╝
██║██╔██╗██║█████╗░░██║██╔██╗██║██║░░░██║░░░░╚████╔╝░  ██║░░░░░███████║██████╦╝╚█████╗░
██║██║╚████║██╔══╝░░██║██║╚████║██║░░░██║░░░░░╚██╔╝░░  ██║░░░░░██╔══██║██╔══██╗░╚═══██╗
██║██║░╚███║██║░░░░░██║██║░╚███║██║░░░██║░░░░░░██║░░░  ███████╗██║░░██║██████╦╝██████╔╝
╚═╝╚═╝░░╚══╝╚═╝░░░░░╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░░░░╚═╝░░░  ╚══════╝╚═╝░░╚═╝╚═════╝░╚═════╝░
 ]]

 fx_version "cerulean"
 game "gta5"
 lua54 "yes"
 
 author "Infinity Labs"
 description "IL-cruisespeed"
 version "1.0.0"
 
 
 shared_scripts {
     'config.lua',
 }
 
 server_scripts {
     'server/main.lua',
 }
 
 client_scripts {
     'client/main.lua',
 }
 
 dependencies {
     'qb-core'
 }