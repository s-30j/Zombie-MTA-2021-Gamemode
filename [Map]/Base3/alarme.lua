RestricLocation = {}
TeleportLocation = {}
EnabledAlarm = true
ColCuboid = false

--------------------------------------- CONFIGS --------------------------------------------

RestricLocation["location1"] = {2497.84765625 ,1004.5185546875 ,10.8203125} -- Local 1
RestricLocation["location2"] = {2534.494140625 ,961.771484375 ,32.00316619873} -- Local 2
TeleportLocation = {2446.9326171875 ,943.4599609375 ,10.8203} -- Local de TP
GroupName = "Map4" -- Nome da Gang ou Grupo ACL
GroupNameBy = 2 -- 1 para Gang, e 2 para ACL
MsgInvasao = ""
EnableVehicleGodMode = true -- Habilitar
HabilitarAdmin = false -- Todos admins vao poder entrar na base
GodMode = false -- Ao entrar na área protegida, habilita GodMode
NaoAtirar = false -- Ao entrar na área protegida, não podera atirar


function sendMsg(iplayer,msg)
	outputChatBox ( msg, iplayer, 255, 0, 0, true )
  end
  
  function EnterPlace ( theElement )
	  if getElementData(theElement, "logedin") then
		  if getElementData(theElement, "loggedIn") then
			  local veh = getPedOccupiedVehicle(theElement)
			  local accName = getAccountName(getPlayerAccount(theElement))
			  if HabilitarAdmin == true then
				  if ( isObjectInACLGroup ("user."..accName, aclGetGroup ( "Admin" ) ) ) then
				  return
				  end
			  end
			  if (getElementType ( theElement ) == "player") and (PlayerHaveLevel (theElement) == false) then
				  sendMsg(theElement,MsgInvasao)
				  if veh then
				  setElementPosition( veh, TeleportLocation[1], TeleportLocation[2], TeleportLocation[3])
				  else
				  setElementPosition( theElement, TeleportLocation[1], TeleportLocation[2], TeleportLocation[3])
				  end
				  sendMsgOwners(theElement)
			  -- elseif getElementType ( theElement ) == "vehicle" then
			  -- SetVehicleGodMode(theElement,true)
			  end
		  end
	  end
  end
  
  function ExitPlace ( theElement )
	if GodMode == true then
	  setElementData(theElement,"blood",12000)
	end
	if NaoAtirar == true then
	toggleControl(theElement, "fire", true)
	toggleControl(theElement, "vehicle_fire", true)
	toggleControl(theElement, "vehicle_secondary_fire", true)
	toggleControl(theElement, "aim_weapon", true)
	end
	if getElementType ( theElement ) == "vehicle" then
	  SetVehicleGodMode(theElement,false)
	end
  end
  
  function PlayerHaveLevel( PlayerID )
	if GroupNameBy == 1 then
	  if ( getElementData ( PlayerID , "gang" ) == GroupName ) then
		if GodMode == true then
		  setElementData(PlayerID,"blood",999999999999999)
		end
		if NaoAtirar == true then
		  toggleControl (PlayerID, "fire", false)
		  toggleControl (PlayerID, "vehicle_fire", false)
		  toggleControl (PlayerID, "vehicle_secondary_fire", false)
		  toggleControl (PlayerID, "aim_weapon", false)
		end
		return true
	  else
		return false
	  end
	else
	  local accName = getAccountName ( getPlayerAccount ( PlayerID ) )
	  if ( isObjectInACLGroup ("user."..accName, aclGetGroup ( GroupName ) ) ) then
		if GodMode == true then
		  setElementData(PlayerID,"blood",999999999999999)
		end
		if NaoAtirar == true then
		  toggleControl (PlayerID, "fire", false)
		  toggleControl (PlayerID, "vehicle_fire", false)
		  toggleControl (PlayerID, "vehicle_secondary_fire", false)
		  toggleControl (PlayerID, "aim_weapon", false)
		end
		return true
	  else
		return false
	  end
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