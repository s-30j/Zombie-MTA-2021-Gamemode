spawnLocations = {
{1882.5,-2537.1001,13.2},
{2566.6001,-644.29999,136.39999},
{1119.89941,-2142.39941,70},
{1941.90002,-533,18.8},
{810.90002,-772,79.9},
{208.2,-1545.5,30.9},
{-447.29999,-2494.30005,117.1},
{354.7998,-2072.69922,10.4},
{-1826.90002,-2641.3999,54.9},
{-1234.5,-2323.19922,18.6},
{-2600.30005,-2756.6001,2.7},
{-2242,-1739,479.60001},
{-1970.90002,-539.40002,35},
{-1480.40002,145.5,18.4},
{-1422.40002,1492.69995,6.8},
{-802.5,2442.69995,159.60001},
{788.20001,890,19.1},
{350.59961,2436.7998,17.1},
{1716,1619.30005,13.2},
{2333.80005,1261.19995,67.1},
{2619.30005,2721.5,36.2},
{2871.2998,134.39941,9.8},
{1342,2138.1001,10.7},
{169.7,-324.70001,9.2},
{542.59961,242.09961,15.1},
{-1083.19995,-1090.40002,128.89999},
{-2215.8999,2315.1001,7.2},
{-969.90002,1347,35.8},
{-2046.09998,2941.69995,60.2},
{186,651.5,1.7},
{2311.80005,-8,32.2},
}

lootItems = {
{"FN FAL",50},
{"M4A1",50},
{"M16A2",50},
{"G36C",50},
{"DMR",50},
{"M24",50},
{"KSVK",50},
{"M249 SAW",50},
{"PKM",30},
{"Mk 48 Mod 0",30},
{"Medic Kit",50},
{"Painkiller",50},
{"Morphine",50},
{"Bandage",50},
{"Toolbox",50},
{"Steel Sheet",50},
{"MP5SD6",50}, 
{"Desert Eagle",50},
{"Coyote Backpack",50},
{"British Backpack",80},
{"Czech Backpack",30}, 
{"Ghillie Helmet",45},
{"Helmet",45},
{"Balanced Vest",45},
{"Balistic Vest",45},
}

function math.percentChance(percent,repeatTime)
  local hits = 0
  for i = 1,repeatTime do
	local number = math.random(1,1000)/10
	if number <= percent then
	  hits = hits+1
	end
  end
  return hits
end

respawnAirdropTimer = false
function spawnAirdrop(player)
  if isElement(player) and not isObjectInACLGroup("user."..getAccountName(getPlayerAccount(player)),aclGetGroup("Admin"))then
	return
  end
  if isElement(productq) then
	destroyElement(productq)
  end
  if isElement(avialColq) then
	destroyElement(avialColq)
  end
  if isElement(blipq) then
	destroyElement(blipq)
  end
  if isTimer(respawnAirdropTimer)then
	killTimer(respawnAirdropTimer)
  end
  respawnAirdropTimer = setTimer(spawnAirdrop,1800000,1)
  local item_id = math.random(1,#spawnLocations)
  x,y,z = spawnLocations[item_id][1],spawnLocations[item_id][2],spawnLocations[item_id][3]-0.16
  local location = getZoneName(x,y,z)
  local city = getZoneName(x,y,z,true)
  outputChatBox("#FF7F00[ATENÇÃO] #8B2323 AIRDROP CAIU EM: #FFFF00 "..tostring(city).." #FFFFFF | #FFFF00"..tostring(location).." #8B2323 E FOI MARCADO NO MAPA.",getRootElement(),255,255,255,true)
  xpsq,ypsq,zpsq = x,y,z+7,3
  xpvq,ypvq,zpvq = x-48,y-16,z+37
  xsbq,ysbq,zsbq = x-48,y-16,z+41
  xssq,yssq,zssq = x-528,y+2,z+141
  xsdq,ysdq,zsdq = x+528,y+2,z+141
  --blipq = createBlip(x,y,z,5)
  local blipq = createRadarArea(x-25,y-225,100,100,0,255,0,100,root)
  aviaNavaq = createObject(1683,xssq,yssq,zssq,0,0,0)
  moveObject(aviaNavaq,8000,xsbq,ysbq,zsbq)
  setTimer(function()
	parasProdq = createObject(2903,xpvq,ypvq,zpvq,0,0,0)
	moveObject(aviaNavaq,8000,xsdq,ysdq,zsdq)
	moveObject(parasProdq,15000,xpsq,ypsq,zpsq)
	triggerClientEvent("playAirdropSound",getRootElement())
  end,8000,1)
  setTimer(destroyElement,16100,1,aviaNavaq)
  setTimer(function()
	destroyElement(parasProdq)
	productq = createObject(2919,x,y,z,0,0,0)
	setElementFrozen(productq,true)
	avialColq = createColSphere(x,y,z,2)
	attachElements(avialColq,productq,0,0,0)
	setElementData(avialColq,"parent",object)
	setElementData(avialColq,"hospitalbox",true)
	setElementData(avialColq,"MAX_Slots",0)
	for i,item in pairs(lootItems)do
	  local value =  math.percentChance(item[2],1)
	  if value >= 1 then
		setElementData(avialColq,item[1],value)
		local ammoData,weapID = getWeaponAmmoType(item[1],true)
		if ammoData then
		  local minBullets,maxBullets = math.floor(getAmmoPlus(ammoData)/3),getAmmoPlus(ammoData)*2
		  local ammoQuantity = math.random(minBullets,maxBullets)
		  setElementData(avialColq,ammoData,ammoQuantity)
		end
	  end
	end
  end,23100,1)
end
spawnAirdrop()
addCommandHandler("spawnairdrop",spawnAirdrop)

addCommandHandler("removeairdrop",function(player)
  if not isObjectInACLGroup("user."..getAccountName(getPlayerAccount(player)),aclGetGroup("Admin"))then
	return
  end
  if isElement(productq) then
	destroyElement(productq)
  end
  if isElement(avialColq) then
	destroyElement(avialColq)
  end
  if isElement(blipq) then
	destroyElement(blipq)
  end
  if isTimer(respawnAirdropTimer)then
	killTimer(respawnAirdropTimer)
  end
end)