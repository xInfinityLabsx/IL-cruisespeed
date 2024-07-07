--[[ 
██╗███╗░░██╗███████╗██╗███╗░░██╗██╗████████╗██╗░░░██╗  ██╗░░░░░░█████╗░██████╗░░██████╗
██║████╗░██║██╔════╝██║████╗░██║██║╚══██╔══╝╚██╗░██╔╝  ██║░░░░░██╔══██╗██╔══██╗██╔════╝
██║██╔██╗██║█████╗░░██║██╔██╗██║██║░░░██║░░░░╚████╔╝░  ██║░░░░░███████║██████╦╝╚█████╗░
██║██║╚████║██╔══╝░░██║██║╚████║██║░░░██║░░░░░╚██╔╝░░  ██║░░░░░██╔══██║██╔══██╗░╚═══██╗
██║██║░╚███║██║░░░░░██║██║░╚███║██║░░░██║░░░░░░██║░░░  ███████╗██║░░██║██████╦╝██████╔╝
╚═╝╚═╝░░╚══╝╚═╝░░░░░╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░░░░╚═╝░░░  ╚══════╝╚═╝░░╚═╝╚═════╝░╚═════╝░
 ]]

local QBCore = exports['qb-core']:GetCoreObject()
local isSpeedSet = false

RegisterCommand(Config.LimitCommand, function (source, args, raw)
    local vehicle = GetVehiclePedIsIn(PlayerPedId()) -- works
    local vehicleName = GetEntityArchetypeName(vehicle) -- works
    local TopSpeed = tonumber(args[1]) -- Works

    -- Check if input is under the Set Limit in the Config
    if TopSpeed > Config.TopSpeedLimit then
        QBCore.Functions.Notify('Speed is too high', 'error', 5000)

    else
        QBCore.Functions.Notify('Speed has been set', 'success', 5000)
    end

    -- Check if Player is in a Vehicle and driver seat
    if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then 

        if TopSpeed <= Config.TopSpeedLimit then
            setSpeed(vehicle, TopSpeed)
        end

        else
            QBCore.Functions.Notify('You need to be in driver seat', 'error', 5000)

        end
        
end);


function setSpeed(vehicle, speed)
	local vehicleClass = GetVehicleClass(vehicle)

	if (vehicleClass ~= 16) or (vehicleClass ~= 15) then
            if Config.SpeedType == 'mph' then
                speed = (speed-1) / 2.23694
            else
                speed = (speed-1) / 3.6
            end

	end

	SetVehicleMaxSpeed(vehicle, speed)
	isSpeedSet = true
end

