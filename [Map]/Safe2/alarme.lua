RestricLocation = {}
TeleportLocation = {}
EnabledAlarm = true
ColCuboid = false

--------------------------------------- CONFIGS --------------------------------------------


RestricLocation["location1"] = {   6057.9501953125 ,5836.5966796875 ,-20.3054253757   } -- Local 1
RestricLocation["location2"] = {    5779.4775390625 ,6208.2119140625 ,0.63189214468002  } -- Local 2
TeleportLocation = {   703.765625 ,-2726.287109375 ,-41.594779968262   } -- Local de TP
GroupName = "" -- Nome da Gang ou Grupo ACL
GroupNameBy = 2 -- 1 para Gang, e 2 para ACL
MsgInvasao = ""
EnableVehicleGodMode = true -- Habilitar
HabilitarAdmin = false -- Todos admins vao poder entrar na base
GodMode = false -- Ao entrar na área protegida, habilita GodMode
NaoAtirar = false -- Ao entrar na área protegida, não podera atirar


function EnterPlace ( theElement )

  if (getElementData(theElement, "zombie") == true) then
	setElementPosition( theElement, TeleportLocation[1], TeleportLocation[2], TeleportLocation[3])
	killPed(theElement);
	destroyElement(theElement);
  end
end


function ResourceStart( )
	LoadLocations()
	CreateCollision()
end
addEventHandler( "onResourceStart", getResourceRootElement( getThisResource() ),ResourceStart)

function LoadLocations()
	local RX, RY, RZ, WRX, WRX, WRX
	if(RestricLocation["location1"][1] > RestricLocation["location2"][1]) then
		RestricLocation["maxx"] = RestricLocation["location1"][1]
		RestricLocation["minx"] = RestricLocation["location2"][1]
	else
		RestricLocation["maxx"] = RestricLocation["location2"][1]
		RestricLocation["minx"] = RestricLocation["location1"][1]
	end
	if(RestricLocation["location1"][2] > RestricLocation["location2"][2]) then
		RestricLocation["maxy"] = RestricLocation["location1"][2]
		RestricLocation["miny"] = RestricLocation["location2"][2]
	else
		RestricLocation["maxy"] = RestricLocation["location2"][2]
		RestricLocation["miny"] = RestricLocation["location1"][2]
	end
	if(RestricLocation["location1"][3] > RestricLocation["location2"][3]) then
		RestricLocation["maxz"] = RestricLocation["location1"][3]
		RestricLocation["minz"] = RestricLocation["location2"][3]
	else
		RestricLocation["maxz"] = RestricLocation["location2"][3]
		RestricLocation["minz"] = RestricLocation["location1"][3]
	end
end

function CreateCollision()
	RX = RestricLocation["minx"]
	WRX = RestricLocation["maxx"] - RestricLocation["minx"]
	RY = RestricLocation["miny"]
	WRY = RestricLocation["maxy"] - RestricLocation["miny"]
	RZ = RestricLocation["minz"]
	WRZ = RestricLocation["maxz"] - RestricLocation["minz"]
	ColCuboid = createColCuboid ( RX, RY, RZ, WRX, WRY, WRZ )
	if ColCuboid then
		addEventHandler ( "onColShapeHit", ColCuboid, EnterPlace )
		addEventHandler ( "onColShapeLeave", ColCuboid, ExitPlace )
	else
		--outputDebugString("Erro, verifique: location1 e location2")
	end
end

function ResourceStop( )
	destroyElement ( ColCuboid )
end
addEventHandler( "onResourceStop", getResourceRootElement( getThisResource() ),ResourceStop)

function sendMsgOwners( PlayerID )
	local connectedPlayers = getElementsByType ( "player" )
	for i, aPlayer in ipairs(connectedPlayers) do
		if(PlayerHaveLevel (aPlayer) == true) then
			sendMsg(aPlayer,"" ..getPlayerName ( PlayerID ) .." Omad To Base!!")
		end
	end
end

function SetVehicleGodMode( VehicleID, godEoD )
	if EnableVehicleGodMode == true then
		setElementData(VehicleID, "godmode", godEoD)
		setVehicleDamageProof (VehicleID, godEoD )
	end
end