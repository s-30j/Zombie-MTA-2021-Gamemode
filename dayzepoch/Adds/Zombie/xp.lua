local accSys = exports["e_login"]
local miscSys = exports["misc"]


addEvent ( "onZombieGetsKilled", true )
addEventHandler ( "onZombieGetsKilled", root,
function ( theKiller ,currentWeaponID )
	local PointePlayer = getElementData(accSys:getPlayerAcc(theKiller), "Exp")
	local Point = tonumber(PointePlayer) + 1
	setElementData(accSys:getPlayerAcc(theKiller), "Exp", tonumber(Point))
    setElementData(theKiller, "Exp",Point)

	setElementData(theKiller, "humanity", getElementData(theKiller, "humanity") + math.random(40, 50));

	
	if getElementData(theKiller, "Missions1") == true then
		local PointePlayer = getElementData(theKiller, "Missions1Kill")
		local Point = tonumber(PointePlayer) + 1
		setElementData(theKiller, "Missions1Kill",Point)
		
		outputChatBox("#00ff00 "..getElementData(theKiller, "Missions1Kill").." / 30 Kill Zombie", theKiller, 255, 255, 0,true)

		if getElementData(theKiller, "Missions1Kill") > 29 then
			outputChatBox("#00ff00 Missions Kamel Shod", theKiller, 255, 255, 0,true)
			outputChatBox("#00ff00 +40 Exp", theKiller, 255, 255, 0,true)
			setElementData(theKiller, "Missions1", nil)
			setElementData(theKiller, "Missions1Kill", 0 )
			triggerClientEvent("PlayDaryaft", theKiller, theKiller)
			setElementData(accSys:getPlayerAcc(theKiller), "c1", 1)
			
			
			local PointePlayer = getElementData(accSys:getPlayerAcc(theKiller), "Exp")
			local Point = tonumber(PointePlayer) + 40
			setElementData(accSys:getPlayerAcc(theKiller), "Exp", tonumber(Point))
			setElementData(theKiller, "Exp",Point)
		else
			--outputChatBox("#ff0000 No", theKiller, 255, 255, 0,true)
		end
	else
		--outputChatBox("#ff0000No", theKiller, 255, 255, 0,true)
	end

			if getElementData(theKiller, "Missions3") == true then

				if (currentWeaponID == 8) then
					local PointePlayer2 = getElementData(theKiller, "Missions3kill")
					local Point2 = tonumber(PointePlayer2) + 1
					setElementData(theKiller, "Missions3kill",Point2)
					
					outputChatBox("#00ff00 "..getElementData(theKiller, "Missions3kill").." / 10 Kill Zombie", theKiller, 255, 255, 0,true)

					if getElementData(theKiller, "Missions3kill") > 9 then
						outputChatBox("#00ff00 Missions Kamel Shod", theKiller, 255, 255, 0,true)
						outputChatBox("#00ff00 +20 Exp", theKiller, 255, 255, 0,true)
						setElementData(theKiller, "Missions3", nil)
						setElementData(theKiller, "Missions3kill", 0 )
						triggerClientEvent("PlayDaryaft", theKiller, theKiller)
						setElementData(accSys:getPlayerAcc(theKiller), "c1", 1)
						
						
						local PointePlayer2 = getElementData(accSys:getPlayerAcc(theKiller), "Exp")
						local Point2 = tonumber(PointePlayer2) + 10
						setElementData(accSys:getPlayerAcc(theKiller), "Exp", tonumber(Point2))
						setElementData(theKiller, "Exp",Point2)
					else
						--outputChatBox("#ff0000 No", theKiller, 255, 255, 0,true)
					end
				--else
					outputChatBox("#ff0000 No", theKiller, 255, 255, 0,true)
				end
			else
				--outputChatBox("#ff0000No", theKiller, 255, 255, 0,true)
			end

	








end)


addCommandHandler("AteSt",function()
	triggerClientEvent ( root, "TamrinShowPanel", root)
end)