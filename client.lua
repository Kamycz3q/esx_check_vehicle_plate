
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

function rejka()
	local ped = GetPlayerPed(-1)
	local pojazd = GetVehiclePedIsIn(ped)
	local rejestracja_pojazdu = GetVehicleNumberPlateText(pojazd)
	local tekst1 = (Config.NotifycationText)
	ESX.ShowNotification(tekst1..rejestracja_pojazdu)
end

RegisterCommand("rejestracja", rejka, false)