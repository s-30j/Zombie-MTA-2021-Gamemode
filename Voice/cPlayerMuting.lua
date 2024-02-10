local DATA_NAME = "voice:chatting"
local xmlCache = {}

local VOICE_IDLE = {
	type = "image",
	src = ":images/voice.png",
	color = tocolor(255,255,255,64),
	width = 20,
	height = 20,
}

local VOICE_CHATTING = {
	type = "image",
	src = ":images/voice.png",
	color = tocolor(255,255,255,255),
	width = 20,
	height = 20,
}

local VOICE_MUTED = {
	type = "image",
	src = ":images/voice_muted.png",
	color = tocolor(255,255,255,255),
	width = 20,
	height = 20,
}


addEventHandler ( "onClientPlayerVoiceStart", root,
	function()
		if globalMuted[source] then
			cancelEvent()
			return
		end
		
		setElementData ( source, DATA_NAME, VOICE_CHATTING, false )
	end
)

addEventHandler ( "onClientPlayerVoiceStop", root,
	function()
		setElementData ( source, DATA_NAME, VOICE_IDLE, false )
	end
)

--Mute a remote player for the local player only.  It informs the server as an optimization, so speech is never sent.
function setPlayerVoiceMuted ( player, muted, synchronise )
	if not checkValidPlayer ( player ) then return false end
	if player == localPlayer then return false end
	
	if muted and not globalMuted[player] then
		globalMuted[player] = true
		addMutedToXML ( player )
		setElementData ( player, DATA_NAME, VOICE_MUTED, false )
		if synchronise ~= false then 
			triggerServerEvent ( "voice_mutePlayerForPlayer", player )
		end
	elseif not muted and globalMuted[player] then
		globalMuted[player] = nil
		removeMutedFromXML ( player )
		setElementData ( player, DATA_NAME, VOICE_IDLE, false )
		if synchronise ~= false then 
			triggerServerEvent ( "voice_unmutePlayerForPlayer", player )
		end
	end
	return false
end

function isPlayerVoiceMuted ( player )
	if not checkValidPlayer ( player ) then return false end
	return not not globalMuted[player]
end

local notf = exports["notf"]
--Muting commands
addCommandHandler ( "mutevoice",
	function ( cmd, playerName )
	if exports["integration"]:isPlayerTrialAdmin(localPlayer) then
		if not playerName then
			notf:addNotification( "Syntax: /mutevoice <PlayerName>", "info")
			return
		end
	
		local player = getPlayerFromName ( playerName ) 
		if not player then
			notf:addNotification ( "[ERROR]: Player  '"..playerName.."'   Vojud Nadarad!", "error" )
			return
		end
		
		if isPlayerVoiceMuted ( player ) then
			notf:addNotification ( "[Warning]: Player '"..playerName.."' Mute Ast!", "warning" )
			return	
		end
		
		if player == localPlayer then
			notf:addNotification ( "[ERROR]: Khodeto Nemituni Mute Koni!", "error" )
			return			
		end
		
		setPlayerVoiceMuted ( player, true )
		notf:addNotification ( "[DONE]: Player '"..playerName.."' Mute Shod!", "success" )
		end
	end
)

--Muting commands
addCommandHandler ( "unmutevoice",
	function ( cmd, playerName )
	if exports["integration"]:isPlayerTrialAdmin(localPlayer) then

		if not playerName then
			notf:addNotification( "Syntax: /unmutevoice <PlayerName>", "info")
			return
		end
	
		local player = getPlayerFromName ( playerName ) 
		if not player then
			notf:addNotification ( "[ERROR]: Player  '"..playerName.."'  Vojud Nadarad!", "error" )
			return
		end
		
		if not isPlayerVoiceMuted ( player ) then
			notf:addNotification ( "[Warning]: Player '"..playerName.."' Mute Nist!", "warning" )
			return	
		end
		
		setPlayerVoiceMuted ( player, false )
		notf:addNotification ( "[DONE]: Player '"..playerName.."' Unmute Shod!", "success" )
		end
	end
)

--Player muting XML parsing
function cacheMutedFromXML ()
	local file = xmlLoadFile ( "mutedlist.xml" )
	if not file then return end
	
	local nodes = xmlNodeGetChildren ( file )
	for i,node in ipairs(nodes) do
		local name = xmlNodeGetAttribute ( node, "name" ) 
		if name then
			xmlCache[name] = true
		end
	end

	xmlUnloadFile(file)
end

function addMutedToXML ( player )
	if not isElement(player) then return end
	if xmlCache[getPlayerName(player)] then return end
	local name = getPlayerName ( player )
	
	local file = xmlLoadFile ( "mutedlist.xml" )
	file = file or xmlCreateFile ( "mutedlist.xml", "mutedlist" )
	
	local node = xmlCreateChild ( file, "mute" )
	xmlNodeSetAttribute ( node, "name", name )
	
	xmlSaveFile(file)
	xmlUnloadFile(file)
	
	xmlCache[name] = true
end

function removeMutedFromXML ( player )
	if not isElement(player) then return end
	local name = getPlayerName ( player )
	
	local file = xmlLoadFile ( "mutedlist.xml" )
	if not file then return end
	
	local nodes = xmlNodeGetChildren ( file )
	for i,node in ipairs(nodes) do
		if xmlNodeGetAttribute ( node, "name" ) == name then
			xmlDestroyNode ( node )
			break
		end
	end
	
	xmlSaveFile(file)
	xmlUnloadFile(file)
	
	xmlCache[name] = nil
end

-- Functions for backward compatibility only
-- DO NOT USE THESE AS THEY WILL BE REMOVED IN A LITTLE WHILE --
function isPlayerMuted ( player )			return isPlayerVoiceMuted ( player ) end
function setPlayerMuted ( player, muted )	return setPlayerVoiceMuted ( player, muted ) end

isVoiceEnabled = isVoiceEnabled or function() return getElementData(resourceRoot,"voice_enabled") end
-- DO NOT USE THESE AS THEY WILL BE REMOVED IN A LITTLE WHILE --
