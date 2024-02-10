boss = true
local boss = true

createTeam ( "Silent Hill", 0, 0, 0 )
local SHteam = getTeamFromName ( "Silent Hill" )

zones = { "Angel Pine", "Whetstone" }

function isElementInLeatherfaceZone(element)
	local x, y, z = getElementPosition(element)
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
function isLeatherfaceAtmosphere()
	local h, m = getTime()
	if h > 5 then
		return true
	elseif h < 4 then
		return true
	else
		return false
	end
end
addEvent("onPlayerLeatherfaceAreaEnter", true)
addEvent("onPlayerLeatherfaceAreaLeave", true)
addEvent("syncMyTime", true)
addEvent("onGlendaleSpawn", true)
addEventHandler("onGlendaleSpawn", getRootElement(),
	function(x, y, z)
		--[[local glendale = createVehicle(getVehicleModelFromName("Glendale Damaged"), x, y, z + 10)
		local px, py, pz = getElementPosition(source)
		local rotZ = findRotation(x, y, px, py)
		setElementRotation(glendale, 0, 0, rotZ)
		setVehicleEngineState(glendale, true)
		setVehicleLocked(glendale, true)
		setTimer(
			function()
				if isElement(glendale) then
					blowVehicle(glendale)
					local x, y, z = getElementPosition(glendale)
					createExplosion(x, y, z, 7)
					destroyElement(glendale)
				end
			end
		, 20000, 1)]]
	end
)
addEventHandler("syncMyTime", getRootElement(),
	function()
		local h, m = getTime()
		triggerClientEvent("clientSyncMyTime", source, h, m)
	end
)
addEventHandler("onPlayerLeatherfaceAreaLeave", getRootElement(),
	function()
		local weather = getWeather()
		triggerClientEvent("onClientWeatherChangeRequest", source, weather)
	end
)
addEvent("onScreamPlay", true)
setTimer(
	function()
	end
, 25000, 0)





function findRotation(x1,y1,x2,y2)
 
  local t = -math.deg(math.atan2(x2-x1,y2-y1))
  if t < 0 then t = t + 360 end;
  return t;
 
end
function getPointFromDistanceRotation(x, y, dist, angle)
 
    local a = math.rad(90 - angle);
 
    local dx = math.cos(a) * dist;
    local dy = math.sin(a) * dist;
 
    return x+dx, y+dy;
 
end
Alessa = nil
function getPlayerNearestToPosition(x, y, z)
	local nearestPlayer = nil
	local nearestDistance = nil
	for i, players in ipairs(getElementsByType("player")) do
		local px, py, pz = getElementPosition(players)
		local distance = getDistanceBetweenPoints3D(px, py, pz, x, y, z)
		if nearestPlayer == nil then
			nearestPlayer = players
			nearestDistance = distance
		elseif distance < nearestDistance then
			nearestDistance = distance
			nearestPlayer = players
		end
	end
	if nearestPlayer == nil then
		return false
	else
		return nearestPlayer
	end
end

setTimer(
	function()
			local x, y, z = getElementPosition(RealAlessa)
			local player = getPlayerNearestToPosition(x, y, z)
			if player then
				local px, py, pz = getElementPosition(player)
				if getDistanceBetweenPoints3D(x, y, z, px, py, pz) < 150 then
					if isElementInWater(RealAlessa) then
					setPedAnimation(RealAlessa, "CRACK", "crckidle4", -1, true, true, false)
					exports.extra_health:setElementExtraHealth ( RealAlessa, 5000 )
					end
					local rotZ = findRotation(x, y, px, py)
					setPedRotation(RealAlessa, rotZ)
					if getDistanceBetweenPoints3D(px, py, pz, x, y, z) < 10 then
						local health = getElementHealth(player)
						if health < 5 or health == 5 then
							setElementHealth(player, 0)
							local leX, leY, leZ = getElementPosition(RealAlessa)
					setPedAnimation(RealAlessa, "CRACK", "crckidle4", -1, true, true, false)
					exports.extra_health:setElementExtraHealth ( RealAlessa, 5000 )
							createExplosion(leX, leY, leZ, 7)
						else
							setElementHealth(player, health - 2)
						end
					end
				else
			setPedAnimation(RealAlessa, "CRACK", "crckidle4", -1, true, true, false)
			exports.extra_health:setElementExtraHealth ( RealAlessa, 5000 )
				end
			end
		end
, 10, 0)




    function AlessaBoss( )
	local localPed = exports [ "slothBot" ]:spawnBot (  -2237.0375976562 ,1882.4169921875 ,2  , 270,  math.random ( 300, 303 ), 0, 0, SHteam, 0,         "chasing", true )
	setElementModel ( localPed, 170 )
	setElementData(localPed, "Wolf_1", true);
		setElementData(localPed, "blood", 990000);
		local health = exports.extra_health:setElementExtraHealth ( localPed, 1 )
		setPedAnimation(localPed, "CRACK", "crckidle4", -1, true, true, false)
		setElementData(localPed, "type", "RealAlessa")
		setPedStat(localPed, 24, 1000)
		RealAlessa = localPed
        setElementData(localPed, "currenthealth", exports.extra_health:getElementExtraHealth(RealAlessa))
        setElementData(localPed, "Alessa", true)
	end
addEventHandler("onResourceStart", resourceRoot, AlessaBoss) 



addEvent("ResstartBot", true)
addEventHandler ( "ResstartBot", root,
function ( )
	setTimer(function()
	local localPed = exports [ "slothBot" ]:spawnBot (  -9999.0375976562 ,1882.4169921875 ,2  , 270,  math.random ( 300, 303 ), 0, 0, SHteam, 0,         "chasing", true )
		setElementModel ( localPed, 170 )
		setElementData(localPed, "Wolf_1", true);
		setElementData(localPed, "blood", 990000);
		local health = exports.extra_health:setElementExtraHealth ( localPed, 1 )
		setPedAnimation(localPed, "CRACK", "crckidle4", -1, true, true, false)
		setElementData(localPed, "type", "RealAlessa")
		setPedStat(localPed, 24, 1000)
		RealAlessa = localPed
        setElementData(localPed, "currenthealth", exports.extra_health:getElementExtraHealth(RealAlessa))
        setElementData(localPed, "Alessa", true)
	end,1,1)
end)



addEvent("AlessaAtack", true)
addEventHandler ( "AlessaAtack", root,
    function ( )
	local Health = exports.extra_health:getElementExtraHealth(RealAlessa)
	local leX, leY, leZ = getElementPosition(RealAlessa)
	setPedAnimation(RealAlessa, "ped", "WALK_old", -1, true, true, false)
	setPedOnFire(RealAlessa,true)
--[[
	if Health < 4500 or Health == 4500 then
		local AMonster = exports [ "slothBot" ]:spawnBot ( leX+2, leY, leZ, 270,  math.random ( 300, 303 ), 0, 0, SHteam, 0,         "chasing", true )
     		setElementModel ( AMonster, 171 )
	if Health < 4450 or Health == 4450 then
	destroyElement(AMonster)

	if Health < 4000 or Health == 4000 then
		local AMonster = exports [ "slothBot" ]:spawnBot ( leX+2, leY, leZ, 270,  math.random ( 300, 303 ), 0, 0, SHteam, 0,         "chasing", true )
     		setElementModel ( AMonster, 171 )
	if Health < 3935 or Health == 3935 then
	destroyElement(AMonster)

	if Health < 3200 or Health == 3200 then
		local AMonster = exports [ "slothBot" ]:spawnBot ( leX+2, leY, leZ, 270,  math.random ( 300, 303 ), 0, 0, SHteam, 0,         "chasing", true )
     		setElementModel ( AMonster, 171 )
	if Health < 3090 or Health == 3090 then
	destroyElement(AMonster)

	if Health < 2500 or Health == 2500 then
		local AMonster = exports [ "slothBot" ]:spawnBot ( leX+2, leY, leZ, 270,  math.random ( 300, 303 ), 0, 0, SHteam, 0,         "chasing", true )
     		setElementModel ( AMonster, 171 )
	if Health < 2300 or Health == 2300 then
	destroyElement(AMonster)

local shskins= math.random ( 172, 176 )
	if Health < 1200 or Health == 1200 then
		local AMonster = exports [ "slothBot" ]:spawnBot ( leX+2, leY, leZ, 270,  math.random ( 300, 303 ), 0, 0, SHteam, 0,         "chasing", true )
     		setElementModel ( AMonster, shskins )
	if Health < 1000 or Health == 1000 then
	destroyElement(AMonster)

	if Health < 500 or Health == 500 then
		local AMonster = exports [ "slothBot" ]:spawnBot ( leX+2, leY+1, leZ, 270,  math.random ( 300, 303 ), 0, 0, SHteam, 8,         "chasing", true )
     		setElementModel ( AMonster, 170 )
	if Health < 200 or Health == 200 then
	destroyElement(AMonster)
end
end
end
end
end
end
end
end
end
end
end
end]]
end
)


addEvent("SHmonsters", true)
addEventHandler ( "SHmonsters", root,
	function ()

end
)