--[[
	##########################################################################
	##                                                                      ##
	##        Project: 'Silent Hill' - resource for MTA: San Andreas        ##
	##                                                                      ##
	##########################################################################
	[C] Copyright 2013-2014, Falke
]]

function replaceModel() 
  txd = engineLoadTXD("skin/skin1.txd", 170)
  engineImportTXD(txd, 170)
  dff = engineLoadDFF("skin/skin1.dff", 170 )
  engineReplaceModel(dff, 170)
  txd = engineLoadTXD("skin/skin2.txd", 171)
  engineImportTXD(txd, 171)
  dff = engineLoadDFF("skin/skin2.dff", 171 )
  engineReplaceModel(dff, 171)
  txd = engineLoadTXD("skin/skin3.txd", 172)
  engineImportTXD(txd, 172)
  dff = engineLoadDFF("skin/skin3.dff", 172 )
  engineReplaceModel(dff, 172)
  txd = engineLoadTXD("skin/skin4.txd", 173)
  engineImportTXD(txd, 173)
  dff = engineLoadDFF("skin/skin4.dff", 173 )
  engineReplaceModel(dff, 173)
  txd = engineLoadTXD("skin/skin5.txd", 174)
  engineImportTXD(txd, 174)
  dff = engineLoadDFF("skin/skin5.dff", 174 )
  engineReplaceModel(dff, 174)
  txd = engineLoadTXD("skin/skin6.txd", 175)
  engineImportTXD(txd, 175)
  dff = engineLoadDFF("skin/skin6.dff", 175 )
  engineReplaceModel(dff, 175)
  txd = engineLoadTXD("skin/skin7.txd", 176)
  engineImportTXD(txd, 176)
  dff = engineLoadDFF("skin/skin7.dff", 176 )
  engineReplaceModel(dff, 176)

  txd = engineLoadTXD("skin/katana.txd", 338)
  engineImportTXD(txd, 338)
  dff = engineLoadDFF("skin/katana.dff", 338 )
  engineReplaceModel(dff, 338)
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)

addCommandHandler ( "reloadskin", replaceModel )


local cFunc = {}
local cSetting = {}

cFunc["Dog_atack"] = function(_, wep, bodypart)
	if(wep == 10) then
	setElementPosition ( source, -2116.24, -2409, 31.4 )
	setPedAnimation(source, "CRACK", "crckidle2", 5000, false, true, false)
	triggerServerEvent ( "SHmonsters", root )
        playSound ( "siren.mp3" )
	end
end
addEventHandler("onClientPlayerDamage", getRootElement(),cFunc["Dog_atack"])

cFunc["AlessaPower"] = function(_, wep, bodypart)
local weaponType = getPedWeapon ( getLocalPlayer() )
	if(wep == weaponType) then
     		triggerServerEvent ( "AlessaAtack", root ) 
                end
	end
addEventHandler("onClientPedDamage", getRootElement(),cFunc["AlessaPower"])


--
local maxDist = 30
function hunterNameTag()
local hunters = getElementsByType ( "ped",getRootElement(),true )
local Px,Py,Pz = getCameraMatrix( )
    for theKey,theHunter in ipairs(hunters) do
		if (isElement(theHunter)) then
		local Zx,Zy,Zz = getElementPosition( theHunter )
		local zhx,zhy,zhz = getPedBonePosition(theHunter,6)
			if (getDistanceBetweenPoints3D(Px, Py, Pz, Zx, Zy, Zz) < maxDist ) then
				if (getElementData (theHunter, "Alessa") == true) then
				    local sxx,syy = getScreenFromWorldPosition(zhx,zhy,zhz+0.3)
					local currentDistance = getDistanceBetweenPoints3D(Px, Py, Pz, Zx, Zy, Zz)
					--local zombieHealth = getElementHealth(theHunter)
					local maxHP = exports.extra_health:getElementExtraHealth(theHunter)
					local currentHealth = getElementData(theHunter, "currenthealth")
					if sxx and getElementHealth(theHunter) > 0 then
					sx,sy = sxx-60,syy-10
					dxDrawRectangle(sx+5,sy+25,131.0/maxHP*currentHealth,12.0,tocolor(255,0,0,200),false) -- health
					dxDrawRectangle(sx,sy,146.0,46.0,tocolor(0,0,0,0),false) --  background
					dxDrawRectangle(sx+5,sy+25,131.0,12.0,tocolor(0,0,0,100),false) -- bg 
						end
					end
				end
			end
end
end
addEventHandler("onClientRender", root, hunterNameTag)
-----------------------------------------------------

renderedFrames = 0
fps = 1
addEventHandler("onClientRender", getRootElement(),
	function()
		renderedFrames = renderedFrames + 1
	end
)
setTimer(
	function()
		fps = renderedFrames
		renderedFrames = 0
	end
, 1000, 0)

zones = { "Angel Pine", "Whetstone" }
function isLocalPlayerInLeatherfaceArea()
	local x, y, z = getElementPosition(getLocalPlayer())
	local inZone = false
	for i, zone in ipairs(zones) do
		if getZoneName(x, y, z) == zone then
			inZone = true
		end
	end
	if inZone == true then
		return true
	else
		return false
	end
end
addEvent("onClientPlayerLeatherfaceAreaEnter", true)
addEvent("onClientPlayerLeatherfaceAreaLeave", true)
addEvent("onClientWeatherChangeRequest", true)
addEvent("clientSyncMyTime", true)
addEventHandler("onClientWeatherChangeRequest", getLocalPlayer(),
	function(weatherID)
		setWeather(weatherID)
	end
)
addEventHandler("onClientPlayerLeatherfaceAreaEnter", getLocalPlayer(),
	function()
		setWeather(9)
		triggerServerEvent("syncMyTime", getLocalPlayer())
	end
)
addEventHandler("clientSyncMyTime", getLocalPlayer(),
	function(hour, minute)
		setTime(hour, minute)
	end
)
wasInLeatherfaceArea = false
addEventHandler("onClientRender", getRootElement(),
	function()
		if isLocalPlayerInLeatherfaceArea() and wasInLeatherfaceArea == false then
			triggerEvent("onClientPlayerLeatherfaceAreaEnter", getLocalPlayer())
			triggerServerEvent("onPlayerLeatherfaceAreaEnter", getLocalPlayer())
			wasInLeatherfaceArea = true
		elseif isLocalPlayerInLeatherfaceArea() == false and wasInLeatherfaceArea == true then
			triggerEvent("onClientPlayerLeatherfaceAreaLeave", getLocalPlayer())
			triggerServerEvent("onPlayerLeatherfaceAreaLeave", getLocalPlayer())
			wasInLeatherfaceArea = false
		end
	end
)
function isLeatherfaceAtmosphere()
	local h, m = getTime()
	if h > 20 then
		return true
	elseif h < 6 then
		return true
	else
		return false
	end
end


addEvent("onClientScreamPlay", true)
addEventHandler("onClientScreamPlay", getRootElement(),
	function(sound)
		if isLocalPlayerInLeatherfaceArea() and isLeatherfaceAtmosphere() == false then
			local soundElement = playSound(sound)
			setSoundEffectEnabled(soundElement, "reverb", true)
			setSoundVolume(soundElement, 0.100)
		end
	end
)