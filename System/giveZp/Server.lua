local accSys = exports["e_login"]

setTimer (function(w)
	for k, v in ipairs(getElementsByType("player")) do
		if getElementData(v, "loggedIn") == true then
				local ConnectTime = getElementData(accSys:getPlayerAcc(v), "ZPTime")
				local BedeConnectTime = tonumber(ConnectTime) + 3
				setElementData(accSys:getPlayerAcc(v), "ZPTime", tonumber(BedeConnectTime))
			
			--> Resid Be 42 Daghighe Time 0 She <--
			if getElementData(v, "loggedIn") == true then
				local ConnectTime = getElementData(accSys:getPlayerAcc(v), "ZPTime")
				if tonumber(ConnectTime) >= 15 then
					setElementData(accSys:getPlayerAcc(v), "ZPTime", 0)
				end
			end
			if getElementData(v, "loggedIn") == true then
				if tonumber(ConnectTime) == 14 then
					outputChatBox("#ff0000!", v, 191, 192, 194, true)
					local tedad = 2
					local ZpPlayer = getElementData(accSys:getPlayerAcc(v), "ZP")
					setElementData(accSys:getPlayerAcc(v), "ZP", tonumber(ZpPlayer) + tonumber(tedad))
				end
			end
		end
	end
end, 200000, 0)
