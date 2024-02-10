local accSys = exports["e_login"]

local ped5898897 = createPed(100,  1063.290234375 ,-323.21875 ,73.9921875  )
setElementFrozen(ped5898897, true)
setPedRotation(ped5898897,120)
setTimer(function()
setPedAnimation(ped5898897,"ped","endchat_03",-1,true, false, false, false)
end,2000,0)



addEventHandler("onResourceStart", resourceRoot,
function()
	for k, hame_Playera	in ipairs (getElementsByType("player")) do	
		if getElementData(hame_Playera, "loggedIn") == true then
			setElementData(hame_Playera, "Missions1", nil)
			setElementData(hame_Playera, "Missions2", nil)
			setElementData(hame_Playera, "Missions3", nil)
		end
	end
end)

function joinShod()
	setElementData(source, "Missions1", nil)
	setElementData(source, "Missions2", nil)
	setElementData(source, "Missions3", nil)
end
addEventHandler("onPlayerJoin",getRootElement(),joinShod)






function Startmms1(thePlayer)
	if getElementData(thePlayer, "Missions1") == nil then
		if getElementData(accSys:getPlayerAcc(thePlayer), "c1") == 0 then
			outputChatBox("#00ff00 Alan Ta 5 Daghighe Zaman Dari Ta 30 Zombie Bokoshi", thePlayer, 255, 255, 0,true)
			setElementData(thePlayer, "Missions1", true)
			setElementData(thePlayer, "Missions1Kill", 0 )
			triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)
			setTimer(function()
				if getElementData(thePlayer, "Missions1") == true then
					if getElementData(accSys:getPlayerAcc(thePlayer), "c1") == 0 then
						setElementData(thePlayer, "Missions1", nil)
						outputChatBox("#ff0000 Zaman Missions Tamom Shod", thePlayer, 255, 255, 0,true)
					end
				end
			end,300000,1)
		else
			outputChatBox("#ff0000 Shoma In Missions Ro Kamel Kardid", thePlayer, 255, 255, 0,true)
		end
	else
		outputChatBox("#ff0000 ??? To Alan Missions  Faal Dari", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Startmms1",true)
addEventHandler("Startmms1", root, Startmms1)



function Startmms2(thePlayer)
	if getElementData(thePlayer, "Missions2") == nil then
		if getElementData(accSys:getPlayerAcc(thePlayer), "c2") == 0 then
			outputChatBox("#00ff00 Shoma Bayad 4 Ta Soda Bokhorid", thePlayer, 255, 255, 0,true)
			setElementData(thePlayer, "Missions2", true)
			setElementData(thePlayer, "Missions2Tedad", 0 )
			triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)



		else
			outputChatBox("#ff0000 Shoma In Missions Ro Kamel Kardid", thePlayer, 255, 255, 0,true)
		end
	else
		outputChatBox("#ff0000 ??? To Alan Missions  Faal Dari", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Startmms2",true)
addEventHandler("Startmms2", root, Startmms2)


function Startmms3(thePlayer)
	if getElementData(thePlayer, "Missions3") == nil then
		if getElementData(accSys:getPlayerAcc(thePlayer), "c3") == 0 then
			outputChatBox("#00ff00 Shoma Bayad 10 Zombie Ba #ff0000 Tabar #00ff00 Bokoshid", thePlayer, 255, 255, 0,true)
			setElementData(thePlayer, "Missions3", true)
			setElementData(thePlayer, "Missions3kill", 0 )
			triggerClientEvent("PlayDaryaft", thePlayer, thePlayer)


			
		else
			outputChatBox("#ff0000 Shoma In Missions Ro Kamel Kardid", thePlayer, 255, 255, 0,true)
		end
	else
		outputChatBox("#ff0000 ??? To Alan Missions  Faal Dari", thePlayer, 255, 255, 0,true)
	end
end
addEvent("Startmms3",true)
addEventHandler("Startmms3", root, Startmms3)