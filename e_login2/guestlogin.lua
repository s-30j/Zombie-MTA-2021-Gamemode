function denyPlayer(oldNick,newNick)
	cancelEvent()
end
addEventHandler("onPlayerChangeNick",getRootElement(),denyPlayer)

local ids = {}

addEventHandler("onPlayerJoin", root, function()
	for i=3,900000 do 
        if not ids[i] then 
			ids[i] = i
            setPlayerName(source,"User-Lobby@"..i)
			setElementData(source, "Level", "Guest")
            break 
        end
    end 
end)