addEventHandler("onResourceStart", resourceRoot,
function()
	for k, hame_Playera	in ipairs (getElementsByType("player")) do	
		if getElementData(hame_Playera, "loggedIn") == true then
			redirectPlayer(hame_Playera, "5.63.10.11", 22003) 
		end
	end
end)

function joinShod()
	redirectPlayer(source, "5.63.10.11", 22003) 
end
addEventHandler("onPlayerJoin",getRootElement(),joinShod)
