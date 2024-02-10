local accSys = exports["e_login"]

function statsetkon(root)
	local goldesh = getElementData(accSys:getPlayerAcc(root), "ZP")
	triggerClientEvent("upstatss", root, root, goldesh)
end
addEvent("PanelUpdAteBeshe",true)
addEventHandler("PanelUpdAteBeshe", root, statsetkon)



function Bede1(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 79 then
		local 	weapon6 = getElementData(thePlayer, "weapon6")
		local	weapon66 = 1
		setElementData(thePlayer, "weapon6", tonumber(weapon6) + tonumber(weapon66))
		local 	mag4 = getElementData(thePlayer, "mag4")
		local	mag44 = 30
		setElementData(thePlayer, "mag4", tonumber(mag4) + tonumber(mag44))
		outputChatBox("#46C2EB Shoma Aks-Gold Ba 80 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 80
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede1",true)
addEventHandler("Bede1", root, Bede1)
function Bede2(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 69 then
		local 	weapon10 = getElementData(thePlayer, "weapon10")
		local	weapon100 = 1
		setElementData(thePlayer, "weapon10", tonumber(weapon10) + tonumber(weapon100))
		local 	mag4 = getElementData(thePlayer, "mag4")
		local	mag44 = 30
		setElementData(thePlayer, "mag4", tonumber(mag4) + tonumber(mag44))
		outputChatBox("#46C2EB Shoma AK-107 Ba 70 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 70
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede2",true)
addEventHandler("Bede2", root, Bede2)
function Bede3(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 74 then
		local 	weapon9 = getElementData(thePlayer, "weapon9")
		local	weapon99 = 1
		setElementData(thePlayer, "weapon9", tonumber(weapon9) + tonumber(weapon99))
		local 	mag4 = getElementData(thePlayer, "mag4")
		local	mag44 = 30
		setElementData(thePlayer, "mag4", tonumber(mag4) + tonumber(mag44))
		outputChatBox("#46C2EB Shoma AKS-74U Ba 75 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 75
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede3",true)
addEventHandler("Bede3", root, Bede3)
function Bede4(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 64 then
		local 	weapon11 = getElementData(thePlayer, "weapon11")
		local	weapon111 = 1
		setElementData(thePlayer, "weapon11", tonumber(weapon11) + tonumber(weapon111))
		local 	mag5 = getElementData(thePlayer, "mag5")
		local	mag55 = 30
		setElementData(thePlayer, "mag5", tonumber(mag5) + tonumber(mag55))
		outputChatBox("#46C2EB Shoma AKS-74U Ba 65 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 65
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede4",true)
addEventHandler("Bede4", root, Bede4)
function Bede5(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 69 then
		local 	weapon13 = getElementData(thePlayer, "weapon13")
		local	weapon133 = 1
		setElementData(thePlayer, "weapon13", tonumber(weapon13) + tonumber(weapon133))
		local 	mag6 = getElementData(thePlayer, "mag6")
		local	mag66 = 50
		setElementData(thePlayer, "mag6", tonumber(mag6) + tonumber(mag66))
		outputChatBox("#46C2EB Shoma RPK Ba 70 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +50 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 70
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede5",true)
addEventHandler("Bede5", root, Bede5)
function Bede6(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 79 then
		local 	weapon12 = getElementData(thePlayer, "weapon12")
		local	weapon122 = 1
		setElementData(thePlayer, "weapon12", tonumber(weapon12) + tonumber(weapon122))
		local 	mag6 = getElementData(thePlayer, "mag6")
		local	mag66 = 50
		setElementData(thePlayer, "mag6", tonumber(mag6) + tonumber(mag66))
		outputChatBox("#46C2EB Shoma MK 48 CCO Ba 80 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +50 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 80
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede6",true)
addEventHandler("Bede6", root, Bede6)
function Bede7(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 69 then
		local 	weapon14 = getElementData(thePlayer, "weapon14")
		local	weapon144 = 1
		setElementData(thePlayer, "weapon14", tonumber(weapon14) + tonumber(weapon144))
		local 	mag4 = getElementData(thePlayer, "mag4")
		local	mag44 = 35
		setElementData(thePlayer, "mag4", tonumber(mag4) + tonumber(mag44))
		outputChatBox("#46C2EB Shoma SA-58V ACOG Ba 70 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +35 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 70
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede7",true)
addEventHandler("Bede7", root, Bede7)
function Bede8(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 49 then
		local 	weapon18 = getElementData(thePlayer, "weapon18")
		local	weapon188 = 1
		setElementData(thePlayer, "weapon18", tonumber(weapon18) + tonumber(weapon188))
		local 	mag3 = getElementData(thePlayer, "mag3")
		local	mag33 = 30
		setElementData(thePlayer, "mag3", tonumber(mag3) + tonumber(mag33))
		outputChatBox("#46C2EB Shoma MP5A5 Ba 50 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 50
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede8",true)
addEventHandler("Bede8", root, Bede8)
function Bede9(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 39 then
		local 	weapon20 = getElementData(thePlayer, "weapon20")
		local	weapon200 = 1
		setElementData(thePlayer, "weapon20", tonumber(weapon20) + tonumber(weapon200))
		local 	mag3 = getElementData(thePlayer, "mag3")
		local	mag33 = 30
		setElementData(thePlayer, "mag3", tonumber(mag3) + tonumber(mag33))
		outputChatBox("#46C2EB Shoma Micro UZI Ba 40 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 40
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede9",true)
addEventHandler("Bede9", root, Bede9)
function Bede10(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 29 then
		local 	weapon7 = getElementData(thePlayer, "weapon7")
		local	weapon77 = 1
		setElementData(thePlayer, "weapon7", tonumber(weapon7) + tonumber(weapon77))
		local 	mag7 = getElementData(thePlayer, "mag7")
		local	mag77 = 12
		setElementData(thePlayer, "mag7", tonumber(mag7) + tonumber(mag77))
		outputChatBox("#46C2EB Shoma Winchester 1866 Ba 30 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +12 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 30
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede10",true)
addEventHandler("Bede10", root, Bede10)
function Bede12(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 36 then
		local 	weapon8 = getElementData(thePlayer, "weapon8")
		local	weapon88 = 1
		setElementData(thePlayer, "weapon8", tonumber(weapon8) + tonumber(weapon88))
		local 	mag9 = getElementData(thePlayer, "mag9")
		local	mag99 = 6
		setElementData(thePlayer, "mag9", tonumber(mag9) + tonumber(mag99))
		outputChatBox("#46C2EB Shoma Crossbow Ba 37 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +6 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 37
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede12",true)
addEventHandler("Bede12", root, Bede12)
function Bede13(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 99 then
		local 	weapon5 = getElementData(thePlayer, "weapon5")
		local	weapon55 = 1
		setElementData(thePlayer, "weapon5", tonumber(weapon5) + tonumber(weapon55))
		local 	mag8 = getElementData(thePlayer, "mag8")
		local	mag88 = 10
		setElementData(thePlayer, "mag8", tonumber(mag8) + tonumber(mag88))
		outputChatBox("#46C2EB Shoma M24 Ba 100 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +10 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 100
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede13",true)
addEventHandler("Bede13", root, Bede13)
function Bede14(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 149 then
		local 	weapon4 = getElementData(thePlayer, "weapon4")
		local	weapon44 = 1
		setElementData(thePlayer, "weapon4", tonumber(weapon4) + tonumber(weapon44))
		local 	mag8 = getElementData(thePlayer, "mag8")
		local	mag88 = 10
		setElementData(thePlayer, "mag8", tonumber(mag8) + tonumber(mag88))
		outputChatBox("#46C2EB Shoma SVD Dragunov Camo Ba 150 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +10 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 150
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede14",true)
addEventHandler("Bede14", root, Bede14)
function Bede15(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 159 then
		local 	weapon3 = getElementData(thePlayer, "weapon3")
		local	weapon33 = 1
		setElementData(thePlayer, "weapon3", tonumber(weapon3) + tonumber(weapon33))
		local 	mag8 = getElementData(thePlayer, "mag8")
		local	mag88 = 10
		setElementData(thePlayer, "mag8", tonumber(mag8) + tonumber(mag88))
		outputChatBox("#46C2EB Shoma CZ 550 Ba 150 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +10 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 160
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede15",true)
addEventHandler("Bede15", root, Bede15)
function Bede16(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 299 then
		local 	weapon2 = getElementData(thePlayer, "weapon2")
		local	weapon22 = 1
		setElementData(thePlayer, "weapon2", tonumber(weapon2) + tonumber(weapon22))
		local 	mag10 = getElementData(thePlayer, "mag10")
		local	mag100 = 10
		setElementData(thePlayer, "mag10", tonumber(mag10) + tonumber(mag100))
		outputChatBox("#46C2EB Shoma DMR Ba 200 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +10 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 200
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede16",true)
addEventHandler("Bede16", root, Bede16)
function Bede17(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 499 then
		local 	weapon1 = getElementData(thePlayer, "weapon1")
		local	weapon11 = 1
		setElementData(thePlayer, "weapon1", tonumber(weapon1) + tonumber(weapon11))
		local 	mag10 = getElementData(thePlayer, "mag10")
		local	mag100 = 10
		setElementData(thePlayer, "mag10", tonumber(mag10) + tonumber(mag100))
		outputChatBox("#46C2EB Shoma VKS Ba 500 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +10 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 500
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Bede17",true)
addEventHandler("Bede17", root, Bede17)
function Ammo1(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 3 then
		local 	mag9 = getElementData(thePlayer, "mag9")
		local	mag99 = 2
		setElementData(thePlayer, "mag9", tonumber(mag9) + tonumber(mag99))
		outputChatBox("#46C2EB Shoma Bolt Ba 4 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +2 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 4
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo1",true)
addEventHandler("Ammo1", root, Ammo1)
function Ammo2(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 14 then
		local 	mag6 = getElementData(thePlayer, "mag6")
		local	mag66 = 100
		setElementData(thePlayer, "mag6", tonumber(mag6) + tonumber(mag66))
		outputChatBox("#46C2EB Shoma 5_56Box Mag Ba 15 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +100 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 15
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo2",true)
addEventHandler("Ammo2", root, Ammo2)
function Ammo3(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 1 then
		local 	mag1 = getElementData(thePlayer, "mag1")
		local	mag11 = 7
		setElementData(thePlayer, "mag1", tonumber(mag1) + tonumber(mag11))
		outputChatBox("#46C2EB Shoma _45ACP Mag Ba 2 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +7 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 2
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo3",true)
addEventHandler("Ammo3", root, Ammo3)
function Ammo4(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 4 then
		local 	mag2 = getElementData(thePlayer, "mag2")
		local	mag22 = 7
		setElementData(thePlayer, "mag2", tonumber(mag2) + tonumber(mag22))
		outputChatBox("#46C2EB Shoma _45ACP Clip Ba 5 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +7 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 5
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo4",true)
addEventHandler("Ammo4", root, Ammo4)
function Ammo5(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 4 then
		local 	mag3 = getElementData(thePlayer, "mag3")
		local	mag33 = 20
		setElementData(thePlayer, "mag3", tonumber(mag3) + tonumber(mag33))
		outputChatBox("#46C2EB Shoma 5_45x39 Mag Ba 5 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +20 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 5
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo5",true)
addEventHandler("Ammo5", root, Ammo5)
function Ammo6(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 4 then
		local 	mag5 = getElementData(thePlayer, "mag5")
		local	mag55 = 30
		setElementData(thePlayer, "mag5", tonumber(mag5) + tonumber(mag55))
		outputChatBox("#46C2EB Shoma 7_62x39 Mag Ba 5 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 5
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo6",true)
addEventHandler("Ammo6", root, Ammo6)
function Ammo7(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 7 then
		local 	mag4 = getElementData(thePlayer, "mag4")
		local	mag44 = 30
		setElementData(thePlayer, "mag4", tonumber(mag4) + tonumber(mag44))
		outputChatBox("#46C2EB Shoma 7_62 Mag Ba 8 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +30 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 8
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo7",true)
addEventHandler("Ammo7", root, Ammo7)
function Ammo8(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 2 then
		local 	mag7 = getElementData(thePlayer, "mag7")
		local	mag77 = 7
		setElementData(thePlayer, "mag7", tonumber(mag7) + tonumber(mag77))
		outputChatBox("#46C2EB Shoma _10 Bullets Ba 3 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +7 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 3
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo8",true)
addEventHandler("Ammo8", root, Ammo8)
function Ammo9(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 6 then
		local 	mag8 = getElementData(thePlayer, "mag8")
		local	mag88 = 10
		setElementData(thePlayer, "mag8", tonumber(mag8) + tonumber(mag88))
		outputChatBox("#46C2EB Shoma _300 Bullets Ba 7 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +10 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 7
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo9",true)
addEventHandler("Ammo9", root, Ammo9)
function Ammo10(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 9 then
		local 	mag10 = getElementData(thePlayer, "mag10")
		local	mag100 = 10
		setElementData(thePlayer, "mag10", tonumber(mag10) + tonumber(mag100))
		outputChatBox("#46C2EB Shoma _303 Bullets Ba 10 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +10 Mag", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 10
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Ammo10",true)
addEventHandler("Ammo10", root, Ammo10)






function item1(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 149 then
		local 	item7 = getElementData(thePlayer, "item7")
		local	item77 = 2
		setElementData(thePlayer, "item7", tonumber(item7) + tonumber(item77))
		outputChatBox("#46C2EB Shoma C4 Ba 150 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +2 C4", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)

		local tedad = 150
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("item1",true)
addEventHandler("item1", root, item1)

function item2(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 11 then
		local 	item3 = getElementData(thePlayer, "item3")
		local	item33 = 1
		setElementData(thePlayer, "item3", tonumber(item3) + tonumber(item33))
		outputChatBox("#46C2EB Shoma tent Ba 12 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +1 tent", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)

		local tedad = 12
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("item2",true)
addEventHandler("item2", root, item2)


function item3(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 89 then
		local 	item4 = getElementData(thePlayer, "item4")
		local	item44 = 1
		setElementData(thePlayer, "item4", tonumber(item4) + tonumber(item44))
		outputChatBox("#46C2EB Shoma Safe Ba 90 ZP Kharidid", thePlayer, 255, 255, 0,true)
		outputChatBox("#46C2EB +1 Safe", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)

		local tedad = 90
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("item3",true)
addEventHandler("item3", root, item3)
















function BedeV1(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 489 then
		local id = 487
		local slots = 100
		local tires = 0
		local engine = 1
		local rotor = 1
		local tankparts = 1
		local scrap = 1
		local fuel = 60
		local x,y,z = getElementPosition(thePlayer)
		local rx,ry,rz = getElementRotation(thePlayer)
		local veh = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,veh);
		setElementData(vehCol,"parent",veh);
		setElementData(veh,"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(veh,"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( thePlayer, veh )
		end,100,1)
	
		outputChatBox("#46C2EB Shoma Heli MH6J Ba 490 ZP Kharidid", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 490
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("BedeV1",true)
addEventHandler("BedeV1", root, BedeV1)

function BedeV2(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 499 then
		local id = 497
		local slots = 100
		local tires = 0
		local engine = 1
		local rotor = 1
		local tankparts = 1
		local scrap = 1
		local fuel = 60
		local x,y,z = getElementPosition(thePlayer)
		local rx,ry,rz = getElementRotation(thePlayer)
		local veh = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,veh);
		setElementData(vehCol,"parent",veh);
		setElementData(veh,"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(veh,"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( thePlayer, veh )
		end,100,1)
	
		outputChatBox("#46C2EB Shoma Heli AH6J Ba 500 ZP Kharidid", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 500
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("BedeV2",true)
addEventHandler("BedeV2", root, BedeV2)


function BedeV3(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 180 then
		local id = 468
		local slots = 100
		local tires = 2
		local engine = 1
		local rotor = 0
		local tankparts = 1
		local scrap = 1
		local fuel = 30
		local x,y,z = getElementPosition(thePlayer)
		local rx,ry,rz = getElementRotation(thePlayer)
		local veh = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,veh);
		setElementData(vehCol,"parent",veh);
		setElementData(veh,"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(veh,"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( thePlayer, veh )
		end,100,1)
	
		outputChatBox("#46C2EB Shoma Motor Ba 180 ZP Kharidid", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 180
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("BedeV3",true)
addEventHandler("BedeV3", root, BedeV3)

function BedeV4(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 199 then
		local id = 579
		local slots = 100
		local tires = 4
		local engine = 1
		local rotor = 0
		local tankparts = 1
		local scrap = 1
		local fuel = 40
		local x,y,z = getElementPosition(thePlayer)
		local rx,ry,rz = getElementRotation(thePlayer)
		local veh = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,veh);
		setElementData(vehCol,"parent",veh);
		setElementData(veh,"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(veh,"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( thePlayer, veh )
		end,100,1)
	
		outputChatBox("#46C2EB Shoma UAZ Ba 200 ZP Kharidid", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 200
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("BedeV4",true)
addEventHandler("BedeV4", root, BedeV4)

function BedeV5(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 349 then
		local id = 490
		local slots = 100
		local tires = 4
		local engine = 1
		local rotor = 0
		local tankparts = 1
		local scrap = 1
		local fuel = 40
		local x,y,z = getElementPosition(thePlayer)
		local rx,ry,rz = getElementRotation(thePlayer)
		local veh = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,veh);
		setElementData(vehCol,"parent",veh);
		setElementData(veh,"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(veh,"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( thePlayer, veh )
		end,100,1)
	
		outputChatBox("#46C2EB Shoma FBI Ba 350 ZP Kharidid", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 350
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("BedeV5",true)
addEventHandler("BedeV5", root, BedeV5)

function BedeV6(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "ZP")) > 279 then
		local id = 422
		local slots = 100
		local tires = 4
		local engine = 1
		local rotor = 0
		local tankparts = 1
		local scrap = 1
		local fuel = 70
		local x,y,z = getElementPosition(thePlayer)
		local rx,ry,rz = getElementRotation(thePlayer)
		local veh = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,veh);
		setElementData(vehCol,"parent",veh);
		setElementData(veh,"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(veh,"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( thePlayer, veh )
		end,100,1)
	
		outputChatBox("#46C2EB Shoma Bobcat Ba 280 ZP Kharidid", thePlayer, 255, 255, 0,true)
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
		local tedad = 280
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) - tonumber(tedad))
	else
		outputChatBox("#ff0000 Shoma ZP Nadarid", thePlayer, 255, 255, 0,true)
	end
end
addEvent("BedeV6",true)
addEventHandler("BedeV6", root, BedeV6)
























addCommandHandler("sSs20S",
function(thePlayer)
		local tedad = 500
		local ZpPlayer = getElementData(accSys:getPlayerAcc(thePlayer), "ZP")
		setElementData(accSys:getPlayerAcc(thePlayer), "ZP", tonumber(ZpPlayer) + tonumber(tedad))
		triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
end)