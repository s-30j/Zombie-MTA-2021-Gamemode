--[[floor1RevengeR = createMarker (  994.3671875 ,1464.1123046875 ,10.012990188599 , "cylinder", 1, 200,80,200 )
floor2RevengeR = createMarker (  994.3671875 ,1464.1123046875 ,18.512990188599 , "cylinder", 1, 255,0,0 )

addCommandHandler("y",
function (thePlayer, command)
	local name = getPlayerName(thePlayer)
	local account = getAccountName(getPlayerAccount(thePlayer))
	if isObjectInACLGroup("user."..account,aclGetGroup("Map15")) then
		local x,y,z = getElementPosition(thePlayer)
		if getDistanceBetweenPoints3D(x,y,z,994.3671875 ,1464.1123046875 ,10.01299018859) < 1.1 then
				setElementPosition(thePlayer, 994.3671875 ,1464.1123046875 ,18.81299018858)
				setElementInterior(thePlayer, 0)
				setElementDimension(thePlayer, 0)
			outputChatBox("Shoma Dar Tabaghe (2) Hastid!", thePlayer, 0,255,0)
		elseif getDistanceBetweenPoints3D(x,y,z,994.3671875 ,1464.1123046875 ,18.51299018859) < 1.1 then
					setElementPosition(thePlayer, 994.3671875 ,1464.1123046875 ,10.81299018859 )
					setElementInterior(thePlayer, 0)
					setElementDimension(thePlayer, 0)
				outputChatBox("Shoma Dar Tabaghe (1) Hastid!", thePlayer, 0,255,0)
		else
			outputChatBox("#ff0000Baraye Inkar Bayad Dar Asansor Bashid!", thePlayer, 255, 255, 255, true)
		end
	else
	--	outputChatBox("#ff0000In Dar Baraye Afrad'e In Khane Mibashad!", thePlayer, 255, 255, 255, true)
	end
end)



floor1RevengeR2 = createMarker ( -560.271484375 ,2585.58984375 ,52.81562, "cylinder", 1, 200,80,200 )
floor2RevengeR2 = createMarker ( -560.271484375 ,2585.58984375 ,60.51562, "cylinder", 1, 255,0,0 )

addCommandHandler("y",
function (thePlayer, command)
	local name = getPlayerName(thePlayer)
	local account = getAccountName(getPlayerAccount(thePlayer))
	if isObjectInACLGroup("user."..account,aclGetGroup("Map8")) then
		local x,y,z = getElementPosition(thePlayer)
		if getDistanceBetweenPoints3D(x,y,z,-560.271484375 ,2585.58984375 ,53.51562) < 1.2 then
			local theVehicle = getPedOccupiedVehicle ( thePlayer )
				setElementPosition(thePlayer, -560.271484375 ,2585.58984375 ,60.51562)
				setElementInterior(thePlayer, 0)
				setElementDimension(thePlayer, 0)
			outputChatBox("Shoma Dar Tabaghe (2) Hastid!", thePlayer, 0,255,0)
		elseif getDistanceBetweenPoints3D(x,y,z,-560.271484375 ,2585.58984375 ,60.51562) < 1.2 then
				local theVehicle = getPedOccupiedVehicle ( thePlayer )
					setElementPosition(thePlayer, -560.271484375 ,2585.58984375 ,53.51562 )
					setElementInterior(thePlayer, 0)
					setElementDimension(thePlayer, 0)
				outputChatBox("Shoma Dar Tabaghe (1) Hastid!", thePlayer, 0,255,0)
		else
			outputChatBox("#ff0000Baraye Inkar Bayad Dar Asansor Bashid!", thePlayer, 255, 255, 255, true)
		end
	else
	--	outputChatBox("#ff0000In Dar Baraye Afrad'e In Khane Mibashad!", thePlayer, 255, 255, 255, true)
	end
end)
]]



--[[

floor1RevengeR = createMarker (  994.3671875 ,1464.1123046875 ,10.012990188599 , "cylinder", 1, 200,80,200 )
floor2RevengeR = createMarker (  994.3671875 ,1464.1123046875 ,18.012990188599 , "cylinder", 1, 255,0,0 )

addCommandHandler("y",
function (thePlayer, command)
	local name = getPlayerName(thePlayer)
	local account = getAccountName(getPlayerAccount(thePlayer))
	if isObjectInACLGroup("user."..account,aclGetGroup("Map15")) then
		local x,y,z = getElementPosition(thePlayer)
		if getDistanceBetweenPoints3D(x,y,z,2517.125 ,1000.07 ,10) < 4 then
			local theVehicle = getPedOccupiedVehicle ( thePlayer )
			if isPedInVehicle (thePlayer) then
				setElementPosition ( theVehicle, 2517.125 ,1000.07 ,18)
				setElementInterior( theVehicle, 0)
				setElementDimension( theVehicle, 0)
			else
				setElementPosition(thePlayer, 2517.125 ,1000.07 ,18)
				setElementInterior(thePlayer, 0)
				setElementDimension(thePlayer, 0)
			end
			outputChatBox("Shoma Dar Tabaghe (2) Hastid!", thePlayer, 0,255,0)
		elseif getDistanceBetweenPoints3D(x,y,z,2517.125 ,1000.07 ,18) < 4 then
				local theVehicle = getPedOccupiedVehicle ( thePlayer )
				if isPedInVehicle (thePlayer) then
					setElementPosition ( theVehicle, 2517.125 ,1000.07 ,11)
					setElementInterior( theVehicle, 0)
					setElementDimension( theVehicle, 0)
				else
					setElementPosition(thePlayer, 2517.125 ,1000.07 ,11 )
					setElementInterior(thePlayer, 0)
					setElementDimension(thePlayer, 0)
				end
				outputChatBox("Shoma Dar Tabaghe (1) Hastid!", thePlayer, 0,255,0)
		else
			outputChatBox("#ff0000Baraye Inkar Bayad Dar Asansor Bashid!", thePlayer, 255, 255, 255, true)
		end
	else
	--	outputChatBox("#ff0000In Dar Baraye Afrad'e In Khane Mibashad!", thePlayer, 255, 255, 255, true)
	end
end)

]]