--[[addCommandHandler("getpos",
	function ( thePlayer, command )
		local x, y, z = getElementPosition(thePlayer)
		outputChatBox("#FF3341Mokhtasat: ("..x.." ,"..y.." ,"..z..")", thePlayer, 150, 150 , 150,true)
	end	
)

addEvent("KillPSelect", true);

local San_Fierro = {
    { -2875 ,946.123046875 ,43.9140625 },
    { -2826.7587890625 ,-470.6123046875 ,8.1772556304932 },
    { -1255.9443359375 ,-581.2421875 ,14.148437 },
    { -1663.9716796875 ,1292.611328125 ,7.039062 },
    { -2664.638671875 ,1236.3212890625 ,55.57812 },
}

local Red_County = {
  { -19.4150390625 ,-515.9169921875 ,4.536582946777 },
  { -210.9755859375 ,253.5830078125 ,12.15428543090 },
  { 252.5517578125 ,-153.1484375 ,1.5703220367432 },
  { 1327.5625 ,316.9609375 ,19.54689025878 },
  { 160.330078125 ,147.2802734375 ,2.118571281433 },
  {2578.943359375 ,200.7744140625 ,56.29553222656},

} 

local los_santos = {
	{ 199.458984375 ,-1143.9443359375 ,61.83777618408 },
	{ 2654.3046875 ,-1004.326171875 ,86.401763916016 },
	{ 2965.6396484375 ,-2142.232421875 ,1.863704204559 },
	{ 2106.373046875 ,-2733.6591796875 ,7.7431654930115 },
	{ 1383.1416015625 ,-2748.0869140625 ,3.905693769455 },
	{ 154.328125 ,-1898.662109375 ,3.769643783569 },
    {-130.19320678711 ,-1658.6936035156 ,1.927464962005 }, 
}

local Bone_County = {
    { 316.462890625 ,1014.259765625 ,29.95897293090 },
	{ 693.4716796875 ,1949.3818359375 ,5.543162345886 },
	{-131.916015625 ,2500.408203125 ,19.87838745117},
	{504.849609375 ,1764.1171875 ,31.084056854248},

}

local Las_Venruras = {
    { 1001.166015625 ,2717.16015625 ,10.820312 },
	{2894.71484375 ,2112.1630859375 ,10.820312},
	{2493.078125 ,823.5205078125 ,7.7971248626709},
	{1438.5673828125 ,745.67578125 ,10.820312},
	{1314.9755859375 ,1281.0126953125 ,10.8203125},
	{901.3291015625 ,1379.2236328125 ,14.32087326049},
	{2092.1005859375 ,1699.376953125 ,10.820312},
}

local Filnt_County = {
    { 16.984375 ,-2647.1689453125 ,40.4667549133 },
	{-548.8369140625 ,-1518.70703125 ,9.223400115966},
	{-768.8984375 ,-779.5068359375 ,154.6771392822},
	{-842.314453125 ,-1553.0380859375 ,128.400192260},
}

local Whetstone = {
	{-2403.6396484375 ,-2183.1650390625 ,33.289062},
	{-1405.0390625 ,-2216.4990234375 ,28.3085479736},
	{-2164.3505859375 ,-2042.1591796875 ,91.7900619506},
	{-1958.564453125 ,-1784.9404296875 ,32.20514678955},
}


addEvent("SpawnSelected1",true)
addEventHandler("SpawnSelected1", root,
function ( thePlayer )
	local RandomSpawn = math.random(1,5)
		--setElementPosition ( thePlayer, San_Fierro[RandomSpawn][1] , San_Fierro[RandomSpawn][2] , San_Fierro[RandomSpawn][3] )
		--setElementInterior ( thePlayer, 0 )
		--setElementDimension ( thePlayer, 0 )

		local x,y,z = unpack(San_Fierro[math.random(#San_Fierro)]);
		local skin = 287;
		spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
		setCameraTarget(thePlayer, thePlayer);
		fadeCamera(thePlayer, true);
		setPedHeadless(thePlayer,false);
		local playerCol = createColSphere(x, y, z, 1.5);
		setElementData(thePlayer, "playerCol", playerCol);
		attachElements(playerCol, thePlayer, 0, 0, 0);
		setElementData(playerCol, "parent", thePlayer);
		setElementData(playerCol, "player", true);
		setAccountData(getPlayerAccount(thePlayer), "isDead", false);
		setElementData(thePlayer, "isDead", false);
		setElementData(thePlayer, "logedin", true);
		setElementData(thePlayer, "skin", skin);
		for _,v in ipairs(playerDataTable) do
			if (v[1] ~= "skin" and v[1] ~= "radiochannel" and v[1] ~= "gpschannel") then
				setElementData(thePlayer, v[1], v[2]);
			end
		end
		setElementData(thePlayer, "weapon25", 1);
		setElementData(thePlayer, "mag1", 30);
		setElementData(thePlayer, "toolbelt2", 1);
		setElementData(thePlayer, "toolbelt1", 1);
		setElementData(thePlayer, "MAX_Slots", 12);
		setElementData(thePlayer, "logedin", true);
		setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
		setElementData(thePlayer, "spawnedzombies", 0);
		showhelp(thePlayer,true);
end)

addEvent("SpawnSelected2",true)
addEventHandler("SpawnSelected2", root,
function ( thePlayer )
	--local RandomSpawn = math.random(1,5)
	--	setElementPosition ( thePlayer, Red_County[RandomSpawn][1] , Red_County[RandomSpawn][2] , Red_County[RandomSpawn][3] )
	--	setElementInterior ( thePlayer, 0 )
	--	setElementDimension ( thePlayer, 0 )

	local x,y,z = unpack(Red_County[math.random(#Red_County)]);
		local skin = 287;
		spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
		setCameraTarget(thePlayer, thePlayer);
		fadeCamera(thePlayer, true);
		setPedHeadless(thePlayer,false);
		local playerCol = createColSphere(x, y, z, 1.5);
		setElementData(thePlayer, "playerCol", playerCol);
		attachElements(playerCol, thePlayer, 0, 0, 0);
		setElementData(playerCol, "parent", thePlayer);
		setElementData(playerCol, "player", true);
		setAccountData(getPlayerAccount(thePlayer), "isDead", false);
		setElementData(thePlayer, "isDead", false);
		setElementData(thePlayer, "logedin", true);
		setElementData(thePlayer, "skin", skin);
		for _,v in ipairs(playerDataTable) do
			if (v[1] ~= "skin" and v[1] ~= "radiochannel" and v[1] ~= "gpschannel") then
				setElementData(thePlayer, v[1], v[2]);
			end
		end
		setElementData(thePlayer, "weapon25", 1);
		setElementData(thePlayer, "mag1", 30);
		setElementData(thePlayer, "toolbelt2", 1);
		setElementData(thePlayer, "toolbelt1", 1);
		setElementData(thePlayer, "MAX_Slots", 12);
		setElementData(thePlayer, "logedin", true);
		setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
		setElementData(thePlayer, "spawnedzombies", 0);
		showhelp(thePlayer,true);
end)

addEvent("SpawnSelected3",true)
addEventHandler("SpawnSelected3", root,
function ( thePlayer )
	--local RandomSpawn = math.random(1,6)
	--	setElementPosition ( thePlayer, los_santos[RandomSpawn][1] , los_santos[RandomSpawn][2] , los_santos[RandomSpawn][3] )
	---	setElementInterior ( thePlayer, 0 )
	--	setElementDimension ( thePlayer, 0 )

	local x,y,z = unpack(los_santos[math.random(#los_santos)]);
		local skin = 287;
		spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
		setCameraTarget(thePlayer, thePlayer);
		fadeCamera(thePlayer, true);
		setPedHeadless(thePlayer,false);
		local playerCol = createColSphere(x, y, z, 1.5);
		setElementData(thePlayer, "playerCol", playerCol);
		attachElements(playerCol, thePlayer, 0, 0, 0);
		setElementData(playerCol, "parent", thePlayer);
		setElementData(playerCol, "player", true);
		setAccountData(getPlayerAccount(thePlayer), "isDead", false);
		setElementData(thePlayer, "isDead", false);
		setElementData(thePlayer, "logedin", true);
		setElementData(thePlayer, "skin", skin);
		for _,v in ipairs(playerDataTable) do
			if (v[1] ~= "skin" and v[1] ~= "radiochannel" and v[1] ~= "gpschannel") then
				setElementData(thePlayer, v[1], v[2]);
			end
		end
		setElementData(thePlayer, "weapon25", 1);
		setElementData(thePlayer, "mag1", 30);
		setElementData(thePlayer, "toolbelt2", 1);
		setElementData(thePlayer, "toolbelt1", 1);
		setElementData(thePlayer, "MAX_Slots", 12);
		setElementData(thePlayer, "logedin", true);
		setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
		setElementData(thePlayer, "spawnedzombies", 0);
		showhelp(thePlayer,true);
end)


addEvent("SpawnSelected4",true)
addEventHandler("SpawnSelected4", root,
function ( thePlayer )
	--local RandomSpawn = math.random(1,4)
	--	setElementPosition ( thePlayer, Bone_County[RandomSpawn][1] , Bone_County[RandomSpawn][2] , Bone_County[RandomSpawn][3] )
	--	setElementInterior ( thePlayer, 0 )
	--	setElementDimension ( thePlayer, 0 )

	local x,y,z = unpack(Bone_County[math.random(#Bone_County)]);
		local skin = 287;
		spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
		setCameraTarget(thePlayer, thePlayer);
		fadeCamera(thePlayer, true);
		setPedHeadless(thePlayer,false);
		local playerCol = createColSphere(x, y, z, 1.5);
		setElementData(thePlayer, "playerCol", playerCol);
		attachElements(playerCol, thePlayer, 0, 0, 0);
		setElementData(playerCol, "parent", thePlayer);
		setElementData(playerCol, "player", true);
		setAccountData(getPlayerAccount(thePlayer), "isDead", false);
		setElementData(thePlayer, "isDead", false);
		setElementData(thePlayer, "logedin", true);
		setElementData(thePlayer, "skin", skin);
		for _,v in ipairs(playerDataTable) do
			if (v[1] ~= "skin" and v[1] ~= "radiochannel" and v[1] ~= "gpschannel") then
				setElementData(thePlayer, v[1], v[2]);
			end
		end
		setElementData(thePlayer, "weapon25", 1);
		setElementData(thePlayer, "mag1", 30);
		setElementData(thePlayer, "toolbelt2", 1);
		setElementData(thePlayer, "toolbelt1", 1);
		setElementData(thePlayer, "MAX_Slots", 12);
		setElementData(thePlayer, "logedin", true);
		setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
		setElementData(thePlayer, "spawnedzombies", 0);
		showhelp(thePlayer,true);
end)

addEvent("SpawnSelected5",true)
addEventHandler("SpawnSelected5", root,
function ( thePlayer )
	--local RandomSpawn = math.random(1,7)
	--	setElementPosition ( thePlayer, Las_Venruras[RandomSpawn][1] , Las_Venruras[RandomSpawn][2] , Las_Venruras[RandomSpawn][3] )
	--	setElementInterior ( thePlayer, 0 )
	--	setElementDimension ( thePlayer, 0 )

		local x,y,z = unpack(Las_Venruras[math.random(#Las_Venruras)]);
		local skin = 287;
		spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
		setCameraTarget(thePlayer, thePlayer);
		fadeCamera(thePlayer, true);
		setPedHeadless(thePlayer,false);
		local playerCol = createColSphere(x, y, z, 1.5);
		setElementData(thePlayer, "playerCol", playerCol);
		attachElements(playerCol, thePlayer, 0, 0, 0);
		setElementData(playerCol, "parent", thePlayer);
		setElementData(playerCol, "player", true);
		setAccountData(getPlayerAccount(thePlayer), "isDead", false);
		setElementData(thePlayer, "isDead", false);
		setElementData(thePlayer, "logedin", true);
		setElementData(thePlayer, "skin", skin);
		for _,v in ipairs(playerDataTable) do
			if (v[1] ~= "skin" and v[1] ~= "radiochannel" and v[1] ~= "gpschannel") then
				setElementData(thePlayer, v[1], v[2]);
			end
		end
		setElementData(thePlayer, "weapon25", 1);
		setElementData(thePlayer, "mag1", 30);
		setElementData(thePlayer, "toolbelt2", 1);
		setElementData(thePlayer, "toolbelt1", 1);
		setElementData(thePlayer, "MAX_Slots", 12);
		setElementData(thePlayer, "logedin", true);
		setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
		setElementData(thePlayer, "spawnedzombies", 0);
		showhelp(thePlayer,true);
end)

addEvent("SpawnSelected6",true)
addEventHandler("SpawnSelected6", root,
function ( thePlayer )
	--local RandomSpawn = math.random(1,4)
	--	setElementPosition ( thePlayer, Filnt_County[RandomSpawn][1] , Filnt_County[RandomSpawn][2] , Filnt_County[RandomSpawn][3] )
	--	setElementInterior ( thePlayer, 0 )
	--	setElementDimension ( thePlayer, 0 )

	local x,y,z = unpack(Filnt_County[math.random(#Filnt_County)]);
		local skin = 287;
		spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
		setCameraTarget(thePlayer, thePlayer);
		fadeCamera(thePlayer, true);
		setPedHeadless(thePlayer,false);
		local playerCol = createColSphere(x, y, z, 1.5);
		setElementData(thePlayer, "playerCol", playerCol);
		attachElements(playerCol, thePlayer, 0, 0, 0);
		setElementData(playerCol, "parent", thePlayer);
		setElementData(playerCol, "player", true);
		setAccountData(getPlayerAccount(thePlayer), "isDead", false);
		setElementData(thePlayer, "isDead", false);
		setElementData(thePlayer, "logedin", true);
		setElementData(thePlayer, "skin", skin);
		for _,v in ipairs(playerDataTable) do
			if (v[1] ~= "skin" and v[1] ~= "radiochannel" and v[1] ~= "gpschannel") then
				setElementData(thePlayer, v[1], v[2]);
			end
		end
		setElementData(thePlayer, "weapon25", 1);
		setElementData(thePlayer, "mag1", 30);
		setElementData(thePlayer, "toolbelt2", 1);
		setElementData(thePlayer, "toolbelt1", 1);
		setElementData(thePlayer, "MAX_Slots", 12);
		setElementData(thePlayer, "logedin", true);
		setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
		setElementData(thePlayer, "spawnedzombies", 0);
		showhelp(thePlayer,true);
end)

addEvent("SpawnSelected7",true)
addEventHandler("SpawnSelected7", root,
function ( thePlayer )
	--local RandomSpawn = math.random(1,4)
	--	setElementPosition ( thePlayer, Whetstone[RandomSpawn][1] , Whetstone[RandomSpawn][2] , Whetstone[RandomSpawn][3] )
	--	setElementInterior ( thePlayer, 0 )
	--	setElementDimension ( thePlayer, 0 )

	local x,y,z = unpack(Whetstone[math.random(#Whetstone)]);
		local skin = 287;
		spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
		setCameraTarget(thePlayer, thePlayer);
		fadeCamera(thePlayer, true);
		setPedHeadless(thePlayer,false);
		local playerCol = createColSphere(x, y, z, 1.5);
		setElementData(thePlayer, "playerCol", playerCol);
		attachElements(playerCol, thePlayer, 0, 0, 0);
		setElementData(playerCol, "parent", thePlayer);
		setElementData(playerCol, "player", true);
		setAccountData(getPlayerAccount(thePlayer), "isDead", false);
		setElementData(thePlayer, "isDead", false);
		setElementData(thePlayer, "logedin", true);
		setElementData(thePlayer, "skin", skin);
		for _,v in ipairs(playerDataTable) do
			if (v[1] ~= "skin" and v[1] ~= "radiochannel" and v[1] ~= "gpschannel") then
				setElementData(thePlayer, v[1], v[2]);
			end
		end
		setElementData(thePlayer, "weapon25", 1);
		setElementData(thePlayer, "mag1", 30);
		setElementData(thePlayer, "toolbelt2", 1);
		setElementData(thePlayer, "toolbelt1", 1);
		setElementData(thePlayer, "MAX_Slots", 12);
		setElementData(thePlayer, "logedin", true);
		setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
		setElementData(thePlayer, "spawnedzombies", 0);
		showhelp(thePlayer,true);
end)

]]














--[[
setTimer(function(player)
	if getElementData(player, "logedin") then
		local LevelSystem = getElementData(accSys:getPlayerAcc(player), "Level")
		setElementData(player, "Level",LevelSystem)
	end
end,1000,0)]]




--[[
	
setTimer(function (root)
	local levelesh = getElementData(accSys:getPlayerAcc(root), "Level")
	triggerClientEvent("BiaToServer", root, root, levelesh)
	statsetkon()
end,100,0)


function statsetkon(root)
	--local levelesh = getElementData(accSys:getPlayerAcc(root), "pLevel")
	local levelesh = getElementData(accSys:getPlayerAcc(root), "Level") -- For Name --

	triggerClientEvent("upstats", root, root, levelesh)
end

]]






































