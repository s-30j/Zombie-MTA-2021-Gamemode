local accSys = exports["e_login"]
local miscSys = exports["misc"]


addCommandHandler("getpos",
function ( thePlayer, command )
	local x, y, z = getElementPosition(thePlayer)
	local getpos = getElementPosition(thePlayer)
	outputChatBox("#FF3341Mokhtasat: ("..x.." ,"..y.." ,"..z..")", thePlayer, 150, 150 , 150,true)
	triggerClientEvent("GetposMige", root, root," "..x.." ,"..y.." ,"..z.." ")
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
		if thePlayer then
			local x,y,z = unpack(San_Fierro[math.random(#San_Fierro)]);
			local skin = 287;
			spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(thePlayer, thePlayer);
			fadeCamera(thePlayer, true);
			setPedHeadless(thePlayer,false);
			setAccountData(getPlayerAccount(thePlayer), "isDead", false);
			setElementData(thePlayer, "isDead", false);
			setElementData(thePlayer, "skin", skin);
			setElementData(thePlayer,"zombieskilled",0);
			setElementData(thePlayer,"humanity",0);
			setElementData(thePlayer,"helmet","");
			setElementData(thePlayer,"vest","");
			setElementData(thePlayer,"currentweapon_1","");
			setElementData(thePlayer,"currentweapon_2","");
			setElementData(thePlayer,"currentweapon_3","");
			setElementData(thePlayer, "alivetime", 0);
			setElementData(thePlayer, "weapon1", 0);
			setElementData(thePlayer, "weapon2", 0);
			setElementData(thePlayer, "weapon3", 0);
			setElementData(thePlayer, "weapon4", 0);
			setElementData(thePlayer, "weapon5", 0);
			setElementData(thePlayer, "weapon6", 0);
			setElementData(thePlayer, "weapon7", 0);
			setElementData(thePlayer, "weapon8", 0);
			setElementData(thePlayer, "weapon9", 0);
			setElementData(thePlayer, "weapon10", 0);
			setElementData(thePlayer, "weapon11", 0);
			setElementData(thePlayer, "weapon12", 0);
			setElementData(thePlayer, "weapon13", 0);
			setElementData(thePlayer, "weapon14", 0);
			setElementData(thePlayer, "weapon15", 0);
			setElementData(thePlayer, "weapon16", 0);
			setElementData(thePlayer, "weapon17", 0);
			setElementData(thePlayer, "weapon18", 0);
			setElementData(thePlayer, "weapon19", 0);
			setElementData(thePlayer, "weapon20", 0);
			setElementData(thePlayer, "weapon21", 0);
			setElementData(thePlayer, "weapon22", 0);
			setElementData(thePlayer, "weapon23", 0);
			setElementData(thePlayer, "weapon24", 0);
			setElementData(thePlayer, "weapon25", 0);
			setElementData(thePlayer, "weapon26", 0);
			setElementData(thePlayer, "weapon27", 0);
			setElementData(thePlayer, "weapon28", 0);
			setElementData(thePlayer, "weapon29", 0);
			setElementData(thePlayer, "mag1", 0);
			setElementData(thePlayer, "mag2", 0);
			setElementData(thePlayer, "mag3", 0);
			setElementData(thePlayer, "mag4", 0);
			setElementData(thePlayer, "mag5", 0);
			setElementData(thePlayer, "mag6", 0);
			setElementData(thePlayer, "mag7", 0);
			setElementData(thePlayer, "mag8", 0);
			setElementData(thePlayer, "mag9", 0);
			setElementData(thePlayer, "mag10", 0);
			setElementData(thePlayer, "toolbelt1", 0);
			setElementData(thePlayer, "toolbelt2", 0);
			setElementData(thePlayer, "toolbelt3", 0);
			setElementData(thePlayer, "toolbelt4", 0);
			setElementData(thePlayer, "toolbelt5", 0);
			setElementData(thePlayer, "toolbelt6", 0);
			setElementData(thePlayer, "toolbelt7", 0);
			setElementData(thePlayer, "toolbelt8", 0);
			setElementData(thePlayer, "toolbelt9", 0);
			setElementData(thePlayer, "vest1", 0);
			setElementData(thePlayer, "vest2", 0);
			setElementData(thePlayer, "helmet1", 0);
			setElementData(thePlayer, "helmet2", 0);
			setElementData(thePlayer, "helmet3", 0);
			setElementData(thePlayer, "helmet4", 0);
			setElementData(thePlayer, "helmet5", 0);
			setElementData(thePlayer, "helmet6", 0);
			setElementData(thePlayer, "helmet7", 0);
			setElementData(thePlayer, "backpack1", 0);
			setElementData(thePlayer, "backpack2", 0);
			setElementData(thePlayer, "backpack3", 0);
			setElementData(thePlayer, "backpack4", 0);
			setElementData(thePlayer, "backpack5", 0);
			setElementData(thePlayer, "backpack6", 0);
			setElementData(thePlayer, "backpack7", 0);
			setElementData(thePlayer, "clothing1", 0);
			setElementData(thePlayer, "clothing2", 0);
			setElementData(thePlayer, "clothing3", 0);
			setElementData(thePlayer, "clothing4", 0);
			setElementData(thePlayer, "clothing5", 0);
			setElementData(thePlayer, "clothing6", 0);
			setElementData(thePlayer, "clothing7", 0);
			setElementData(thePlayer, "clothing8", 0);
			setElementData(thePlayer, "clothing9", 0);
			setElementData(thePlayer, "item1", 0);
			setElementData(thePlayer, "item2", 0);
			setElementData(thePlayer, "item3", 0);
			setElementData(thePlayer, "item4", 0);
			setElementData(thePlayer, "item5", 0);
			setElementData(thePlayer, "item6", 0);
			setElementData(thePlayer, "item7", 0);
			setElementData(thePlayer, "item8", 0);
			setElementData(thePlayer, "item9", 0);
			setElementData(thePlayer, "item10", 0);
			setElementData(thePlayer, "item11", 0);
			setElementData(thePlayer, "item12", 0);
			setElementData(thePlayer, "item13", 0);
			setElementData(thePlayer, "item14", 0);
			setElementData(thePlayer, "fooditem1", 0);
			setElementData(thePlayer, "fooditem2", 0);
			setElementData(thePlayer, "fooditem3", 0);
			setElementData(thePlayer, "fooditem4", 0);
			setElementData(thePlayer, "fooditem5", 0);
			setElementData(thePlayer, "fooditem6", 0);
			setElementData(thePlayer, "fooditem7", 0);
			setElementData(thePlayer, "fooditem8", 0);
			setElementData(thePlayer, "fooditem9", 0);
			setElementData(thePlayer, "fooditem10", 0);
			setElementData(thePlayer, "fooditem11", 0);
			setElementData(thePlayer, "fooditem12", 0);
			setElementData(thePlayer, "vehiclepart1", 0);
			setElementData(thePlayer, "vehiclepart2", 0);
			setElementData(thePlayer, "vehiclepart3", 0);
			setElementData(thePlayer, "vehiclepart4", 0);
			setElementData(thePlayer, "vehiclepart5", 0);
			setElementData(thePlayer, "medicine1", 0);
			setElementData(thePlayer, "medicine2", 0);
			setElementData(thePlayer, "medicine3", 0);
			setElementData(thePlayer, "medicine4", 0);
			setElementData(thePlayer, "medicine5", 0);
			setElementData(thePlayer, "medicine6", 0);
			setElementData(thePlayer, "medicine7", 0);
			setElementData(thePlayer, "medicine8", 0);
			setElementData(thePlayer, "weapon25", 1);
			setElementData(thePlayer, "medicine6", 1);
			setElementData(thePlayer, "medicine8", 1);
			setElementData(thePlayer, "medicine5", 2);
			setElementData(thePlayer, "mag1", 30);
			setElementData(thePlayer, "toolbelt2", 1);
			setElementData(thePlayer, "toolbelt1", 1);
			setElementData(thePlayer, "MAX_Slots", 12);
			setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
			setElementData(thePlayer, "spawnedzombies", 0);
			showhelp(thePlayer,true);
			setElementData(thePlayer, "blood", 12000);
			setElementData(thePlayer, "bleeding", 0);
			setElementData(thePlayer, "pain", false);
			setElementData(thePlayer, "brokenbone", false)
			setElementData(thePlayer, "food",100);
			setElementData(thePlayer, "thirst",100);
			--addPlayerStats(thePlayer, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(thePlayer))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(thePlayer, "weapon6", 1);
				setElementData(thePlayer, "mag4", 50);
				setElementData(thePlayer, "MAX_Slots", 20);
				setElementData(thePlayer, "medicine1", 1);
				setElementData(thePlayer, "blood", 18000);
				setElementData(thePlayer, "food",130);
				setElementData(thePlayer, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(thePlayer), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(thePlayer, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(thePlayer, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(thePlayer, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(thePlayer, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(thePlayer, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(thePlayer, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(thePlayer, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(thePlayer, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(thePlayer, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(thePlayer, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(thePlayer, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(thePlayer, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(thePlayer, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(thePlayer, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(thePlayer, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(thePlayer, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(thePlayer, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(thePlayer, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(thePlayer, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(thePlayer, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(thePlayer, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(thePlayer, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(thePlayer, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(thePlayer, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(thePlayer, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(thePlayer, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(thePlayer, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(thePlayer, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(thePlayer, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(thePlayer, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(thePlayer, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(thePlayer, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(thePlayer, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(thePlayer, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(thePlayer, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(thePlayer, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(thePlayer, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(thePlayer, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(thePlayer, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(thePlayer, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(thePlayer, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(thePlayer, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(thePlayer, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(thePlayer, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(thePlayer, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(thePlayer, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(thePlayer, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(thePlayer, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(thePlayer, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(thePlayer, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(thePlayer, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(thePlayer, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(thePlayer, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(thePlayer, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(thePlayer, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(thePlayer, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(thePlayer, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(thePlayer, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(thePlayer, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(thePlayer, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(thePlayer, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(thePlayer, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(thePlayer, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(thePlayer, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(thePlayer, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(thePlayer, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(thePlayer, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(thePlayer, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(thePlayer, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(thePlayer, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(thePlayer, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(thePlayer, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(thePlayer, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(thePlayer, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(thePlayer, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(thePlayer, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(thePlayer, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(thePlayer, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(thePlayer, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(thePlayer, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(thePlayer, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(thePlayer, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(thePlayer, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(thePlayer, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(thePlayer, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(thePlayer, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(thePlayer, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(thePlayer, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(thePlayer, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(thePlayer, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(thePlayer, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(thePlayer, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(thePlayer, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(thePlayer, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(thePlayer, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(thePlayer, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(thePlayer, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(thePlayer, "blood", 10000)
			end

		end
end)

addEvent("SpawnSelected2",true)
addEventHandler("SpawnSelected2", root,
function ( thePlayer )
	local x,y,z = unpack(Red_County[math.random(#Red_County)]);
	local skin = 287;
			spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(thePlayer, thePlayer);
			fadeCamera(thePlayer, true);
			setPedHeadless(thePlayer,false);
			setAccountData(getPlayerAccount(thePlayer), "isDead", false);
			setElementData(thePlayer, "isDead", false);
			setElementData(thePlayer, "skin", skin);
			setElementData(thePlayer,"zombieskilled",0);
			setElementData(thePlayer,"humanity",0);
			setElementData(thePlayer,"helmet","");
			setElementData(thePlayer,"vest","");
			setElementData(thePlayer,"currentweapon_1","");
			setElementData(thePlayer,"currentweapon_2","");
			setElementData(thePlayer,"currentweapon_3","");
			setElementData(thePlayer, "alivetime", 0);
			setElementData(thePlayer, "weapon1", 0);
			setElementData(thePlayer, "weapon2", 0);
			setElementData(thePlayer, "weapon3", 0);
			setElementData(thePlayer, "weapon4", 0);
			setElementData(thePlayer, "weapon5", 0);
			setElementData(thePlayer, "weapon6", 0);
			setElementData(thePlayer, "weapon7", 0);
			setElementData(thePlayer, "weapon8", 0);
			setElementData(thePlayer, "weapon9", 0);
			setElementData(thePlayer, "weapon10", 0);
			setElementData(thePlayer, "weapon11", 0);
			setElementData(thePlayer, "weapon12", 0);
			setElementData(thePlayer, "weapon13", 0);
			setElementData(thePlayer, "weapon14", 0);
			setElementData(thePlayer, "weapon15", 0);
			setElementData(thePlayer, "weapon16", 0);
			setElementData(thePlayer, "weapon17", 0);
			setElementData(thePlayer, "weapon18", 0);
			setElementData(thePlayer, "weapon19", 0);
			setElementData(thePlayer, "weapon20", 0);
			setElementData(thePlayer, "weapon21", 0);
			setElementData(thePlayer, "weapon22", 0);
			setElementData(thePlayer, "weapon23", 0);
			setElementData(thePlayer, "weapon24", 0);
			setElementData(thePlayer, "weapon25", 0);
			setElementData(thePlayer, "weapon26", 0);
			setElementData(thePlayer, "weapon27", 0);
			setElementData(thePlayer, "weapon28", 0);
			setElementData(thePlayer, "weapon29", 0);
			setElementData(thePlayer, "mag1", 0);
			setElementData(thePlayer, "mag2", 0);
			setElementData(thePlayer, "mag3", 0);
			setElementData(thePlayer, "mag4", 0);
			setElementData(thePlayer, "mag5", 0);
			setElementData(thePlayer, "mag6", 0);
			setElementData(thePlayer, "mag7", 0);
			setElementData(thePlayer, "mag8", 0);
			setElementData(thePlayer, "mag9", 0);
			setElementData(thePlayer, "mag10", 0);
			setElementData(thePlayer, "toolbelt1", 0);
			setElementData(thePlayer, "toolbelt2", 0);
			setElementData(thePlayer, "toolbelt3", 0);
			setElementData(thePlayer, "toolbelt4", 0);
			setElementData(thePlayer, "toolbelt5", 0);
			setElementData(thePlayer, "toolbelt6", 0);
			setElementData(thePlayer, "toolbelt7", 0);
			setElementData(thePlayer, "toolbelt8", 0);
			setElementData(thePlayer, "toolbelt9", 0);
			setElementData(thePlayer, "vest1", 0);
			setElementData(thePlayer, "vest2", 0);
			setElementData(thePlayer, "helmet1", 0);
			setElementData(thePlayer, "helmet2", 0);
			setElementData(thePlayer, "helmet3", 0);
			setElementData(thePlayer, "helmet4", 0);
			setElementData(thePlayer, "helmet5", 0);
			setElementData(thePlayer, "helmet6", 0);
			setElementData(thePlayer, "helmet7", 0);
			setElementData(thePlayer, "backpack1", 0);
			setElementData(thePlayer, "backpack2", 0);
			setElementData(thePlayer, "backpack3", 0);
			setElementData(thePlayer, "backpack4", 0);
			setElementData(thePlayer, "backpack5", 0);
			setElementData(thePlayer, "backpack6", 0);
			setElementData(thePlayer, "backpack7", 0);
			setElementData(thePlayer, "clothing1", 0);
			setElementData(thePlayer, "clothing2", 0);
			setElementData(thePlayer, "clothing3", 0);
			setElementData(thePlayer, "clothing4", 0);
			setElementData(thePlayer, "clothing5", 0);
			setElementData(thePlayer, "clothing6", 0);
			setElementData(thePlayer, "clothing7", 0);
			setElementData(thePlayer, "clothing8", 0);
			setElementData(thePlayer, "clothing9", 0);
			setElementData(thePlayer, "item1", 0);
			setElementData(thePlayer, "item2", 0);
			setElementData(thePlayer, "item3", 0);
			setElementData(thePlayer, "item4", 0);
			setElementData(thePlayer, "item5", 0);
			setElementData(thePlayer, "item6", 0);
			setElementData(thePlayer, "item7", 0);
			setElementData(thePlayer, "item8", 0);
			setElementData(thePlayer, "item9", 0);
			setElementData(thePlayer, "item10", 0);
			setElementData(thePlayer, "item11", 0);
			setElementData(thePlayer, "item12", 0);
			setElementData(thePlayer, "item13", 0);
			setElementData(thePlayer, "item14", 0);
			setElementData(thePlayer, "fooditem1", 0);
			setElementData(thePlayer, "fooditem2", 0);
			setElementData(thePlayer, "fooditem3", 0);
			setElementData(thePlayer, "fooditem4", 0);
			setElementData(thePlayer, "fooditem5", 0);
			setElementData(thePlayer, "fooditem6", 0);
			setElementData(thePlayer, "fooditem7", 0);
			setElementData(thePlayer, "fooditem8", 0);
			setElementData(thePlayer, "fooditem9", 0);
			setElementData(thePlayer, "fooditem10", 0);
			setElementData(thePlayer, "fooditem11", 0);
			setElementData(thePlayer, "fooditem12", 0);
			setElementData(thePlayer, "vehiclepart1", 0);
			setElementData(thePlayer, "vehiclepart2", 0);
			setElementData(thePlayer, "vehiclepart3", 0);
			setElementData(thePlayer, "vehiclepart4", 0);
			setElementData(thePlayer, "vehiclepart5", 0);
			setElementData(thePlayer, "medicine1", 0);
			setElementData(thePlayer, "medicine2", 0);
			setElementData(thePlayer, "medicine3", 0);
			setElementData(thePlayer, "medicine4", 0);
			setElementData(thePlayer, "medicine5", 0);
			setElementData(thePlayer, "medicine6", 0);
			setElementData(thePlayer, "medicine7", 0);
			setElementData(thePlayer, "medicine8", 0);
			setElementData(thePlayer, "weapon25", 1);
			setElementData(thePlayer, "medicine6", 1);
			setElementData(thePlayer, "medicine8", 1);
			setElementData(thePlayer, "medicine5", 2);
			setElementData(thePlayer, "mag1", 30);
			setElementData(thePlayer, "toolbelt2", 1);
			setElementData(thePlayer, "toolbelt1", 1);
			setElementData(thePlayer, "MAX_Slots", 12);
			setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
			setElementData(thePlayer, "spawnedzombies", 0);
			showhelp(thePlayer,true);
			setElementData(thePlayer, "blood", 12000);
			setElementData(thePlayer, "bleeding", 0);
			setElementData(thePlayer, "pain", false);
			setElementData(thePlayer, "brokenbone", false)
			setElementData(thePlayer, "food",100);
			setElementData(thePlayer, "thirst",100);
			--addPlayerStats(thePlayer, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(thePlayer))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(thePlayer, "weapon6", 1);
				setElementData(thePlayer, "mag4", 50);
				setElementData(thePlayer, "MAX_Slots", 20);
				setElementData(thePlayer, "medicine1", 1);
				setElementData(thePlayer, "blood", 18000);
				setElementData(thePlayer, "food",130);
				setElementData(thePlayer, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(thePlayer), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(thePlayer, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(thePlayer, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(thePlayer, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(thePlayer, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(thePlayer, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(thePlayer, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(thePlayer, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(thePlayer, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(thePlayer, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(thePlayer, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(thePlayer, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(thePlayer, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(thePlayer, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(thePlayer, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(thePlayer, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(thePlayer, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(thePlayer, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(thePlayer, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(thePlayer, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(thePlayer, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(thePlayer, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(thePlayer, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(thePlayer, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(thePlayer, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(thePlayer, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(thePlayer, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(thePlayer, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(thePlayer, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(thePlayer, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(thePlayer, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(thePlayer, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(thePlayer, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(thePlayer, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(thePlayer, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(thePlayer, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(thePlayer, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(thePlayer, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(thePlayer, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(thePlayer, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(thePlayer, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(thePlayer, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(thePlayer, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(thePlayer, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(thePlayer, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(thePlayer, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(thePlayer, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(thePlayer, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(thePlayer, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(thePlayer, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(thePlayer, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(thePlayer, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(thePlayer, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(thePlayer, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(thePlayer, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(thePlayer, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(thePlayer, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(thePlayer, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(thePlayer, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(thePlayer, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(thePlayer, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(thePlayer, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(thePlayer, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(thePlayer, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(thePlayer, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(thePlayer, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(thePlayer, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(thePlayer, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(thePlayer, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(thePlayer, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(thePlayer, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(thePlayer, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(thePlayer, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(thePlayer, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(thePlayer, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(thePlayer, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(thePlayer, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(thePlayer, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(thePlayer, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(thePlayer, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(thePlayer, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(thePlayer, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(thePlayer, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(thePlayer, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(thePlayer, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(thePlayer, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(thePlayer, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(thePlayer, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(thePlayer, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(thePlayer, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(thePlayer, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(thePlayer, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(thePlayer, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(thePlayer, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(thePlayer, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(thePlayer, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(thePlayer, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(thePlayer, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(thePlayer, "blood", 10000)
			end

end)

addEvent("SpawnSelected3",true)
addEventHandler("SpawnSelected3", root,
function ( thePlayer )
	local x,y,z = unpack(los_santos[math.random(#los_santos)]);
	local skin = 287;
			spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(thePlayer, thePlayer);
			fadeCamera(thePlayer, true);
			setPedHeadless(thePlayer,false);
			setAccountData(getPlayerAccount(thePlayer), "isDead", false);
			setElementData(thePlayer, "isDead", false);
			setElementData(thePlayer, "skin", skin);
			setElementData(thePlayer,"zombieskilled",0);
			setElementData(thePlayer,"humanity",0);
			setElementData(thePlayer,"helmet","");
			setElementData(thePlayer,"vest","");
			setElementData(thePlayer,"currentweapon_1","");
			setElementData(thePlayer,"currentweapon_2","");
			setElementData(thePlayer,"currentweapon_3","");
			setElementData(thePlayer, "alivetime", 0);
			setElementData(thePlayer, "weapon1", 0);
			setElementData(thePlayer, "weapon2", 0);
			setElementData(thePlayer, "weapon3", 0);
			setElementData(thePlayer, "weapon4", 0);
			setElementData(thePlayer, "weapon5", 0);
			setElementData(thePlayer, "weapon6", 0);
			setElementData(thePlayer, "weapon7", 0);
			setElementData(thePlayer, "weapon8", 0);
			setElementData(thePlayer, "weapon9", 0);
			setElementData(thePlayer, "weapon10", 0);
			setElementData(thePlayer, "weapon11", 0);
			setElementData(thePlayer, "weapon12", 0);
			setElementData(thePlayer, "weapon13", 0);
			setElementData(thePlayer, "weapon14", 0);
			setElementData(thePlayer, "weapon15", 0);
			setElementData(thePlayer, "weapon16", 0);
			setElementData(thePlayer, "weapon17", 0);
			setElementData(thePlayer, "weapon18", 0);
			setElementData(thePlayer, "weapon19", 0);
			setElementData(thePlayer, "weapon20", 0);
			setElementData(thePlayer, "weapon21", 0);
			setElementData(thePlayer, "weapon22", 0);
			setElementData(thePlayer, "weapon23", 0);
			setElementData(thePlayer, "weapon24", 0);
			setElementData(thePlayer, "weapon25", 0);
			setElementData(thePlayer, "weapon26", 0);
			setElementData(thePlayer, "weapon27", 0);
			setElementData(thePlayer, "weapon28", 0);
			setElementData(thePlayer, "weapon29", 0);
			setElementData(thePlayer, "mag1", 0);
			setElementData(thePlayer, "mag2", 0);
			setElementData(thePlayer, "mag3", 0);
			setElementData(thePlayer, "mag4", 0);
			setElementData(thePlayer, "mag5", 0);
			setElementData(thePlayer, "mag6", 0);
			setElementData(thePlayer, "mag7", 0);
			setElementData(thePlayer, "mag8", 0);
			setElementData(thePlayer, "mag9", 0);
			setElementData(thePlayer, "mag10", 0);
			setElementData(thePlayer, "toolbelt1", 0);
			setElementData(thePlayer, "toolbelt2", 0);
			setElementData(thePlayer, "toolbelt3", 0);
			setElementData(thePlayer, "toolbelt4", 0);
			setElementData(thePlayer, "toolbelt5", 0);
			setElementData(thePlayer, "toolbelt6", 0);
			setElementData(thePlayer, "toolbelt7", 0);
			setElementData(thePlayer, "toolbelt8", 0);
			setElementData(thePlayer, "toolbelt9", 0);
			setElementData(thePlayer, "vest1", 0);
			setElementData(thePlayer, "vest2", 0);
			setElementData(thePlayer, "helmet1", 0);
			setElementData(thePlayer, "helmet2", 0);
			setElementData(thePlayer, "helmet3", 0);
			setElementData(thePlayer, "helmet4", 0);
			setElementData(thePlayer, "helmet5", 0);
			setElementData(thePlayer, "helmet6", 0);
			setElementData(thePlayer, "helmet7", 0);
			setElementData(thePlayer, "backpack1", 0);
			setElementData(thePlayer, "backpack2", 0);
			setElementData(thePlayer, "backpack3", 0);
			setElementData(thePlayer, "backpack4", 0);
			setElementData(thePlayer, "backpack5", 0);
			setElementData(thePlayer, "backpack6", 0);
			setElementData(thePlayer, "backpack7", 0);
			setElementData(thePlayer, "clothing1", 0);
			setElementData(thePlayer, "clothing2", 0);
			setElementData(thePlayer, "clothing3", 0);
			setElementData(thePlayer, "clothing4", 0);
			setElementData(thePlayer, "clothing5", 0);
			setElementData(thePlayer, "clothing6", 0);
			setElementData(thePlayer, "clothing7", 0);
			setElementData(thePlayer, "clothing8", 0);
			setElementData(thePlayer, "clothing9", 0);
			setElementData(thePlayer, "item1", 0);
			setElementData(thePlayer, "item2", 0);
			setElementData(thePlayer, "item3", 0);
			setElementData(thePlayer, "item4", 0);
			setElementData(thePlayer, "item5", 0);
			setElementData(thePlayer, "item6", 0);
			setElementData(thePlayer, "item7", 0);
			setElementData(thePlayer, "item8", 0);
			setElementData(thePlayer, "item9", 0);
			setElementData(thePlayer, "item10", 0);
			setElementData(thePlayer, "item11", 0);
			setElementData(thePlayer, "item12", 0);
			setElementData(thePlayer, "item13", 0);
			setElementData(thePlayer, "item14", 0);
			setElementData(thePlayer, "fooditem1", 0);
			setElementData(thePlayer, "fooditem2", 0);
			setElementData(thePlayer, "fooditem3", 0);
			setElementData(thePlayer, "fooditem4", 0);
			setElementData(thePlayer, "fooditem5", 0);
			setElementData(thePlayer, "fooditem6", 0);
			setElementData(thePlayer, "fooditem7", 0);
			setElementData(thePlayer, "fooditem8", 0);
			setElementData(thePlayer, "fooditem9", 0);
			setElementData(thePlayer, "fooditem10", 0);
			setElementData(thePlayer, "fooditem11", 0);
			setElementData(thePlayer, "fooditem12", 0);
			setElementData(thePlayer, "vehiclepart1", 0);
			setElementData(thePlayer, "vehiclepart2", 0);
			setElementData(thePlayer, "vehiclepart3", 0);
			setElementData(thePlayer, "vehiclepart4", 0);
			setElementData(thePlayer, "vehiclepart5", 0);
			setElementData(thePlayer, "medicine1", 0);
			setElementData(thePlayer, "medicine2", 0);
			setElementData(thePlayer, "medicine3", 0);
			setElementData(thePlayer, "medicine4", 0);
			setElementData(thePlayer, "medicine5", 0);
			setElementData(thePlayer, "medicine6", 0);
			setElementData(thePlayer, "medicine7", 0);
			setElementData(thePlayer, "medicine8", 0);
			setElementData(thePlayer, "weapon25", 1);
			setElementData(thePlayer, "medicine6", 1);
			setElementData(thePlayer, "medicine8", 1);
			setElementData(thePlayer, "medicine5", 2);
			setElementData(thePlayer, "mag1", 30);
			setElementData(thePlayer, "toolbelt2", 1);
			setElementData(thePlayer, "toolbelt1", 1);
			setElementData(thePlayer, "MAX_Slots", 12);
			setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
			setElementData(thePlayer, "spawnedzombies", 0);
			showhelp(thePlayer,true);
			setElementData(thePlayer, "blood", 12000);
			setElementData(thePlayer, "bleeding", 0);
			setElementData(thePlayer, "pain", false);
			setElementData(thePlayer, "brokenbone", false)
			setElementData(thePlayer, "food",100);
			setElementData(thePlayer, "thirst",100);
			--addPlayerStats(thePlayer, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(thePlayer))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(thePlayer, "weapon6", 1);
				setElementData(thePlayer, "mag4", 50);
				setElementData(thePlayer, "MAX_Slots", 20);
				setElementData(thePlayer, "medicine1", 1);
				setElementData(thePlayer, "blood", 18000);
				setElementData(thePlayer, "food",130);
				setElementData(thePlayer, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(thePlayer), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(thePlayer, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(thePlayer, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(thePlayer, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(thePlayer, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(thePlayer, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(thePlayer, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(thePlayer, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(thePlayer, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(thePlayer, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(thePlayer, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(thePlayer, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(thePlayer, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(thePlayer, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(thePlayer, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(thePlayer, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(thePlayer, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(thePlayer, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(thePlayer, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(thePlayer, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(thePlayer, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(thePlayer, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(thePlayer, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(thePlayer, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(thePlayer, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(thePlayer, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(thePlayer, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(thePlayer, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(thePlayer, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(thePlayer, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(thePlayer, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(thePlayer, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(thePlayer, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(thePlayer, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(thePlayer, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(thePlayer, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(thePlayer, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(thePlayer, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(thePlayer, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(thePlayer, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(thePlayer, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(thePlayer, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(thePlayer, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(thePlayer, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(thePlayer, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(thePlayer, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(thePlayer, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(thePlayer, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(thePlayer, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(thePlayer, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(thePlayer, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(thePlayer, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(thePlayer, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(thePlayer, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(thePlayer, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(thePlayer, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(thePlayer, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(thePlayer, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(thePlayer, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(thePlayer, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(thePlayer, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(thePlayer, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(thePlayer, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(thePlayer, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(thePlayer, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(thePlayer, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(thePlayer, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(thePlayer, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(thePlayer, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(thePlayer, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(thePlayer, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(thePlayer, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(thePlayer, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(thePlayer, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(thePlayer, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(thePlayer, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(thePlayer, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(thePlayer, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(thePlayer, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(thePlayer, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(thePlayer, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(thePlayer, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(thePlayer, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(thePlayer, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(thePlayer, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(thePlayer, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(thePlayer, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(thePlayer, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(thePlayer, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(thePlayer, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(thePlayer, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(thePlayer, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(thePlayer, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(thePlayer, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(thePlayer, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(thePlayer, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(thePlayer, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(thePlayer, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(thePlayer, "blood", 10000)
			end

end)


addEvent("SpawnSelected4",true)
addEventHandler("SpawnSelected4", root,
function ( thePlayer )
		local x,y,z = unpack(Bone_County[math.random(#Bone_County)]);
		local skin = 287;
			spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(thePlayer, thePlayer);
			fadeCamera(thePlayer, true);
			setPedHeadless(thePlayer,false);
			setAccountData(getPlayerAccount(thePlayer), "isDead", false);
			setElementData(thePlayer, "isDead", false);
			setElementData(thePlayer, "skin", skin);
			setElementData(thePlayer,"zombieskilled",0);
			setElementData(thePlayer,"humanity",0);
			setElementData(thePlayer,"helmet","");
			setElementData(thePlayer,"vest","");
			setElementData(thePlayer,"currentweapon_1","");
			setElementData(thePlayer,"currentweapon_2","");
			setElementData(thePlayer,"currentweapon_3","");
			setElementData(thePlayer, "alivetime", 0);
			setElementData(thePlayer, "weapon1", 0);
			setElementData(thePlayer, "weapon2", 0);
			setElementData(thePlayer, "weapon3", 0);
			setElementData(thePlayer, "weapon4", 0);
			setElementData(thePlayer, "weapon5", 0);
			setElementData(thePlayer, "weapon6", 0);
			setElementData(thePlayer, "weapon7", 0);
			setElementData(thePlayer, "weapon8", 0);
			setElementData(thePlayer, "weapon9", 0);
			setElementData(thePlayer, "weapon10", 0);
			setElementData(thePlayer, "weapon11", 0);
			setElementData(thePlayer, "weapon12", 0);
			setElementData(thePlayer, "weapon13", 0);
			setElementData(thePlayer, "weapon14", 0);
			setElementData(thePlayer, "weapon15", 0);
			setElementData(thePlayer, "weapon16", 0);
			setElementData(thePlayer, "weapon17", 0);
			setElementData(thePlayer, "weapon18", 0);
			setElementData(thePlayer, "weapon19", 0);
			setElementData(thePlayer, "weapon20", 0);
			setElementData(thePlayer, "weapon21", 0);
			setElementData(thePlayer, "weapon22", 0);
			setElementData(thePlayer, "weapon23", 0);
			setElementData(thePlayer, "weapon24", 0);
			setElementData(thePlayer, "weapon25", 0);
			setElementData(thePlayer, "weapon26", 0);
			setElementData(thePlayer, "weapon27", 0);
			setElementData(thePlayer, "weapon28", 0);
			setElementData(thePlayer, "weapon29", 0);
			setElementData(thePlayer, "mag1", 0);
			setElementData(thePlayer, "mag2", 0);
			setElementData(thePlayer, "mag3", 0);
			setElementData(thePlayer, "mag4", 0);
			setElementData(thePlayer, "mag5", 0);
			setElementData(thePlayer, "mag6", 0);
			setElementData(thePlayer, "mag7", 0);
			setElementData(thePlayer, "mag8", 0);
			setElementData(thePlayer, "mag9", 0);
			setElementData(thePlayer, "mag10", 0);
			setElementData(thePlayer, "toolbelt1", 0);
			setElementData(thePlayer, "toolbelt2", 0);
			setElementData(thePlayer, "toolbelt3", 0);
			setElementData(thePlayer, "toolbelt4", 0);
			setElementData(thePlayer, "toolbelt5", 0);
			setElementData(thePlayer, "toolbelt6", 0);
			setElementData(thePlayer, "toolbelt7", 0);
			setElementData(thePlayer, "toolbelt8", 0);
			setElementData(thePlayer, "toolbelt9", 0);
			setElementData(thePlayer, "vest1", 0);
			setElementData(thePlayer, "vest2", 0);
			setElementData(thePlayer, "helmet1", 0);
			setElementData(thePlayer, "helmet2", 0);
			setElementData(thePlayer, "helmet3", 0);
			setElementData(thePlayer, "helmet4", 0);
			setElementData(thePlayer, "helmet5", 0);
			setElementData(thePlayer, "helmet6", 0);
			setElementData(thePlayer, "helmet7", 0);
			setElementData(thePlayer, "backpack1", 0);
			setElementData(thePlayer, "backpack2", 0);
			setElementData(thePlayer, "backpack3", 0);
			setElementData(thePlayer, "backpack4", 0);
			setElementData(thePlayer, "backpack5", 0);
			setElementData(thePlayer, "backpack6", 0);
			setElementData(thePlayer, "backpack7", 0);
			setElementData(thePlayer, "clothing1", 0);
			setElementData(thePlayer, "clothing2", 0);
			setElementData(thePlayer, "clothing3", 0);
			setElementData(thePlayer, "clothing4", 0);
			setElementData(thePlayer, "clothing5", 0);
			setElementData(thePlayer, "clothing6", 0);
			setElementData(thePlayer, "clothing7", 0);
			setElementData(thePlayer, "clothing8", 0);
			setElementData(thePlayer, "clothing9", 0);
			setElementData(thePlayer, "item1", 0);
			setElementData(thePlayer, "item2", 0);
			setElementData(thePlayer, "item3", 0);
			setElementData(thePlayer, "item4", 0);
			setElementData(thePlayer, "item5", 0);
			setElementData(thePlayer, "item6", 0);
			setElementData(thePlayer, "item7", 0);
			setElementData(thePlayer, "item8", 0);
			setElementData(thePlayer, "item9", 0);
			setElementData(thePlayer, "item10", 0);
			setElementData(thePlayer, "item11", 0);
			setElementData(thePlayer, "item12", 0);
			setElementData(thePlayer, "item13", 0);
			setElementData(thePlayer, "item14", 0);
			setElementData(thePlayer, "fooditem1", 0);
			setElementData(thePlayer, "fooditem2", 0);
			setElementData(thePlayer, "fooditem3", 0);
			setElementData(thePlayer, "fooditem4", 0);
			setElementData(thePlayer, "fooditem5", 0);
			setElementData(thePlayer, "fooditem6", 0);
			setElementData(thePlayer, "fooditem7", 0);
			setElementData(thePlayer, "fooditem8", 0);
			setElementData(thePlayer, "fooditem9", 0);
			setElementData(thePlayer, "fooditem10", 0);
			setElementData(thePlayer, "fooditem11", 0);
			setElementData(thePlayer, "fooditem12", 0);
			setElementData(thePlayer, "vehiclepart1", 0);
			setElementData(thePlayer, "vehiclepart2", 0);
			setElementData(thePlayer, "vehiclepart3", 0);
			setElementData(thePlayer, "vehiclepart4", 0);
			setElementData(thePlayer, "vehiclepart5", 0);
			setElementData(thePlayer, "medicine1", 0);
			setElementData(thePlayer, "medicine2", 0);
			setElementData(thePlayer, "medicine3", 0);
			setElementData(thePlayer, "medicine4", 0);
			setElementData(thePlayer, "medicine5", 0);
			setElementData(thePlayer, "medicine6", 0);
			setElementData(thePlayer, "medicine7", 0);
			setElementData(thePlayer, "medicine8", 0);
			setElementData(thePlayer, "weapon25", 1);
			setElementData(thePlayer, "medicine6", 1);
			setElementData(thePlayer, "medicine8", 1);
			setElementData(thePlayer, "medicine5", 2);
			setElementData(thePlayer, "mag1", 30);
			setElementData(thePlayer, "toolbelt2", 1);
			setElementData(thePlayer, "toolbelt1", 1);
			setElementData(thePlayer, "MAX_Slots", 12);
			setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
			setElementData(thePlayer, "spawnedzombies", 0);
			showhelp(thePlayer,true);
			setElementData(thePlayer, "blood", 12000);
			setElementData(thePlayer, "bleeding", 0);
			setElementData(thePlayer, "pain", false);
			setElementData(thePlayer, "brokenbone", false)
			setElementData(thePlayer, "food",100);
			setElementData(thePlayer, "thirst",100);
			--addPlayerStats(thePlayer, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(thePlayer))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(thePlayer, "weapon6", 1);
				setElementData(thePlayer, "mag4", 50);
				setElementData(thePlayer, "MAX_Slots", 20);
				setElementData(thePlayer, "medicine1", 1);
				setElementData(thePlayer, "blood", 18000);
				setElementData(thePlayer, "food",130);
				setElementData(thePlayer, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(thePlayer), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(thePlayer, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(thePlayer, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(thePlayer, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(thePlayer, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(thePlayer, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(thePlayer, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(thePlayer, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(thePlayer, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(thePlayer, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(thePlayer, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(thePlayer, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(thePlayer, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(thePlayer, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(thePlayer, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(thePlayer, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(thePlayer, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(thePlayer, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(thePlayer, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(thePlayer, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(thePlayer, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(thePlayer, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(thePlayer, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(thePlayer, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(thePlayer, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(thePlayer, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(thePlayer, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(thePlayer, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(thePlayer, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(thePlayer, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(thePlayer, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(thePlayer, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(thePlayer, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(thePlayer, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(thePlayer, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(thePlayer, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(thePlayer, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(thePlayer, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(thePlayer, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(thePlayer, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(thePlayer, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(thePlayer, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(thePlayer, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(thePlayer, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(thePlayer, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(thePlayer, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(thePlayer, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(thePlayer, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(thePlayer, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(thePlayer, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(thePlayer, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(thePlayer, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(thePlayer, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(thePlayer, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(thePlayer, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(thePlayer, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(thePlayer, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(thePlayer, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(thePlayer, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(thePlayer, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(thePlayer, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(thePlayer, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(thePlayer, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(thePlayer, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(thePlayer, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(thePlayer, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(thePlayer, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(thePlayer, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(thePlayer, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(thePlayer, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(thePlayer, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(thePlayer, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(thePlayer, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(thePlayer, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(thePlayer, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(thePlayer, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(thePlayer, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(thePlayer, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(thePlayer, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(thePlayer, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(thePlayer, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(thePlayer, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(thePlayer, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(thePlayer, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(thePlayer, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(thePlayer, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(thePlayer, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(thePlayer, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(thePlayer, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(thePlayer, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(thePlayer, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(thePlayer, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(thePlayer, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(thePlayer, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(thePlayer, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(thePlayer, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(thePlayer, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(thePlayer, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(thePlayer, "blood", 10000)
			end
end)

addEvent("SpawnSelected5",true)
addEventHandler("SpawnSelected5", root,
function ( thePlayer )
		local x,y,z = unpack(Las_Venruras[math.random(#Las_Venruras)]);
		local skin = 287;
			spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(thePlayer, thePlayer);
			fadeCamera(thePlayer, true);
			setPedHeadless(thePlayer,false);
			setAccountData(getPlayerAccount(thePlayer), "isDead", false);
			setElementData(thePlayer, "isDead", false);
			setElementData(thePlayer, "skin", skin);
			setElementData(thePlayer,"zombieskilled",0);
			setElementData(thePlayer,"humanity",0);
			setElementData(thePlayer,"helmet","");
			setElementData(thePlayer,"vest","");
			setElementData(thePlayer,"currentweapon_1","");
			setElementData(thePlayer,"currentweapon_2","");
			setElementData(thePlayer,"currentweapon_3","");
			setElementData(thePlayer, "alivetime", 0);
			setElementData(thePlayer, "weapon1", 0);
			setElementData(thePlayer, "weapon2", 0);
			setElementData(thePlayer, "weapon3", 0);
			setElementData(thePlayer, "weapon4", 0);
			setElementData(thePlayer, "weapon5", 0);
			setElementData(thePlayer, "weapon6", 0);
			setElementData(thePlayer, "weapon7", 0);
			setElementData(thePlayer, "weapon8", 0);
			setElementData(thePlayer, "weapon9", 0);
			setElementData(thePlayer, "weapon10", 0);
			setElementData(thePlayer, "weapon11", 0);
			setElementData(thePlayer, "weapon12", 0);
			setElementData(thePlayer, "weapon13", 0);
			setElementData(thePlayer, "weapon14", 0);
			setElementData(thePlayer, "weapon15", 0);
			setElementData(thePlayer, "weapon16", 0);
			setElementData(thePlayer, "weapon17", 0);
			setElementData(thePlayer, "weapon18", 0);
			setElementData(thePlayer, "weapon19", 0);
			setElementData(thePlayer, "weapon20", 0);
			setElementData(thePlayer, "weapon21", 0);
			setElementData(thePlayer, "weapon22", 0);
			setElementData(thePlayer, "weapon23", 0);
			setElementData(thePlayer, "weapon24", 0);
			setElementData(thePlayer, "weapon25", 0);
			setElementData(thePlayer, "weapon26", 0);
			setElementData(thePlayer, "weapon27", 0);
			setElementData(thePlayer, "weapon28", 0);
			setElementData(thePlayer, "weapon29", 0);
			setElementData(thePlayer, "mag1", 0);
			setElementData(thePlayer, "mag2", 0);
			setElementData(thePlayer, "mag3", 0);
			setElementData(thePlayer, "mag4", 0);
			setElementData(thePlayer, "mag5", 0);
			setElementData(thePlayer, "mag6", 0);
			setElementData(thePlayer, "mag7", 0);
			setElementData(thePlayer, "mag8", 0);
			setElementData(thePlayer, "mag9", 0);
			setElementData(thePlayer, "mag10", 0);
			setElementData(thePlayer, "toolbelt1", 0);
			setElementData(thePlayer, "toolbelt2", 0);
			setElementData(thePlayer, "toolbelt3", 0);
			setElementData(thePlayer, "toolbelt4", 0);
			setElementData(thePlayer, "toolbelt5", 0);
			setElementData(thePlayer, "toolbelt6", 0);
			setElementData(thePlayer, "toolbelt7", 0);
			setElementData(thePlayer, "toolbelt8", 0);
			setElementData(thePlayer, "toolbelt9", 0);
			setElementData(thePlayer, "vest1", 0);
			setElementData(thePlayer, "vest2", 0);
			setElementData(thePlayer, "helmet1", 0);
			setElementData(thePlayer, "helmet2", 0);
			setElementData(thePlayer, "helmet3", 0);
			setElementData(thePlayer, "helmet4", 0);
			setElementData(thePlayer, "helmet5", 0);
			setElementData(thePlayer, "helmet6", 0);
			setElementData(thePlayer, "helmet7", 0);
			setElementData(thePlayer, "backpack1", 0);
			setElementData(thePlayer, "backpack2", 0);
			setElementData(thePlayer, "backpack3", 0);
			setElementData(thePlayer, "backpack4", 0);
			setElementData(thePlayer, "backpack5", 0);
			setElementData(thePlayer, "backpack6", 0);
			setElementData(thePlayer, "backpack7", 0);
			setElementData(thePlayer, "clothing1", 0);
			setElementData(thePlayer, "clothing2", 0);
			setElementData(thePlayer, "clothing3", 0);
			setElementData(thePlayer, "clothing4", 0);
			setElementData(thePlayer, "clothing5", 0);
			setElementData(thePlayer, "clothing6", 0);
			setElementData(thePlayer, "clothing7", 0);
			setElementData(thePlayer, "clothing8", 0);
			setElementData(thePlayer, "clothing9", 0);
			setElementData(thePlayer, "item1", 0);
			setElementData(thePlayer, "item2", 0);
			setElementData(thePlayer, "item3", 0);
			setElementData(thePlayer, "item4", 0);
			setElementData(thePlayer, "item5", 0);
			setElementData(thePlayer, "item6", 0);
			setElementData(thePlayer, "item7", 0);
			setElementData(thePlayer, "item8", 0);
			setElementData(thePlayer, "item9", 0);
			setElementData(thePlayer, "item10", 0);
			setElementData(thePlayer, "item11", 0);
			setElementData(thePlayer, "item12", 0);
			setElementData(thePlayer, "item13", 0);
			setElementData(thePlayer, "item14", 0);
			setElementData(thePlayer, "fooditem1", 0);
			setElementData(thePlayer, "fooditem2", 0);
			setElementData(thePlayer, "fooditem3", 0);
			setElementData(thePlayer, "fooditem4", 0);
			setElementData(thePlayer, "fooditem5", 0);
			setElementData(thePlayer, "fooditem6", 0);
			setElementData(thePlayer, "fooditem7", 0);
			setElementData(thePlayer, "fooditem8", 0);
			setElementData(thePlayer, "fooditem9", 0);
			setElementData(thePlayer, "fooditem10", 0);
			setElementData(thePlayer, "fooditem11", 0);
			setElementData(thePlayer, "fooditem12", 0);
			setElementData(thePlayer, "vehiclepart1", 0);
			setElementData(thePlayer, "vehiclepart2", 0);
			setElementData(thePlayer, "vehiclepart3", 0);
			setElementData(thePlayer, "vehiclepart4", 0);
			setElementData(thePlayer, "vehiclepart5", 0);
			setElementData(thePlayer, "medicine1", 0);
			setElementData(thePlayer, "medicine2", 0);
			setElementData(thePlayer, "medicine3", 0);
			setElementData(thePlayer, "medicine4", 0);
			setElementData(thePlayer, "medicine5", 0);
			setElementData(thePlayer, "medicine6", 0);
			setElementData(thePlayer, "medicine7", 0);
			setElementData(thePlayer, "medicine8", 0);
			setElementData(thePlayer, "weapon25", 1);
			setElementData(thePlayer, "medicine6", 1);
			setElementData(thePlayer, "medicine8", 1);
			setElementData(thePlayer, "medicine5", 2);
			setElementData(thePlayer, "mag1", 30);
			setElementData(thePlayer, "toolbelt2", 1);
			setElementData(thePlayer, "toolbelt1", 1);
			setElementData(thePlayer, "MAX_Slots", 12);
			setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
			setElementData(thePlayer, "spawnedzombies", 0);
			showhelp(thePlayer,true);
			setElementData(thePlayer, "blood", 12000);
			setElementData(thePlayer, "bleeding", 0);
			setElementData(thePlayer, "pain", false);
			setElementData(thePlayer, "brokenbone", false)
			setElementData(thePlayer, "food",100);
			setElementData(thePlayer, "thirst",100);
			--addPlayerStats(thePlayer, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(thePlayer))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(thePlayer, "weapon6", 1);
				setElementData(thePlayer, "mag4", 50);
				setElementData(thePlayer, "MAX_Slots", 20);
				setElementData(thePlayer, "medicine1", 1);
				setElementData(thePlayer, "blood", 18000);
				setElementData(thePlayer, "food",130);
				setElementData(thePlayer, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(thePlayer), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(thePlayer, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(thePlayer, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(thePlayer, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(thePlayer, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(thePlayer, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(thePlayer, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(thePlayer, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(thePlayer, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(thePlayer, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(thePlayer, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(thePlayer, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(thePlayer, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(thePlayer, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(thePlayer, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(thePlayer, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(thePlayer, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(thePlayer, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(thePlayer, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(thePlayer, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(thePlayer, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(thePlayer, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(thePlayer, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(thePlayer, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(thePlayer, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(thePlayer, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(thePlayer, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(thePlayer, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(thePlayer, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(thePlayer, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(thePlayer, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(thePlayer, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(thePlayer, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(thePlayer, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(thePlayer, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(thePlayer, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(thePlayer, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(thePlayer, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(thePlayer, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(thePlayer, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(thePlayer, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(thePlayer, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(thePlayer, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(thePlayer, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(thePlayer, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(thePlayer, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(thePlayer, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(thePlayer, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(thePlayer, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(thePlayer, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(thePlayer, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(thePlayer, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(thePlayer, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(thePlayer, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(thePlayer, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(thePlayer, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(thePlayer, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(thePlayer, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(thePlayer, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(thePlayer, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(thePlayer, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(thePlayer, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(thePlayer, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(thePlayer, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(thePlayer, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(thePlayer, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(thePlayer, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(thePlayer, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(thePlayer, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(thePlayer, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(thePlayer, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(thePlayer, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(thePlayer, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(thePlayer, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(thePlayer, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(thePlayer, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(thePlayer, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(thePlayer, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(thePlayer, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(thePlayer, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(thePlayer, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(thePlayer, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(thePlayer, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(thePlayer, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(thePlayer, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(thePlayer, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(thePlayer, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(thePlayer, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(thePlayer, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(thePlayer, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(thePlayer, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(thePlayer, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(thePlayer, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(thePlayer, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(thePlayer, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(thePlayer, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(thePlayer, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(thePlayer, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(thePlayer, "blood", 10000)
			end

end)

addEvent("SpawnSelected6",true)
addEventHandler("SpawnSelected6", root,
function ( thePlayer )
	local x,y,z = unpack(Filnt_County[math.random(#Filnt_County)]);
	local skin = 287;
			spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(thePlayer, thePlayer);
			fadeCamera(thePlayer, true);
			setPedHeadless(thePlayer,false);
			setAccountData(getPlayerAccount(thePlayer), "isDead", false);
			setElementData(thePlayer, "isDead", false);
			setElementData(thePlayer, "skin", skin);
			setElementData(thePlayer,"zombieskilled",0);
			setElementData(thePlayer,"humanity",0);
			setElementData(thePlayer,"helmet","");
			setElementData(thePlayer,"vest","");
			setElementData(thePlayer,"currentweapon_1","");
			setElementData(thePlayer,"currentweapon_2","");
			setElementData(thePlayer,"currentweapon_3","");
			setElementData(thePlayer, "alivetime", 0);
			setElementData(thePlayer, "weapon1", 0);
			setElementData(thePlayer, "weapon2", 0);
			setElementData(thePlayer, "weapon3", 0);
			setElementData(thePlayer, "weapon4", 0);
			setElementData(thePlayer, "weapon5", 0);
			setElementData(thePlayer, "weapon6", 0);
			setElementData(thePlayer, "weapon7", 0);
			setElementData(thePlayer, "weapon8", 0);
			setElementData(thePlayer, "weapon9", 0);
			setElementData(thePlayer, "weapon10", 0);
			setElementData(thePlayer, "weapon11", 0);
			setElementData(thePlayer, "weapon12", 0);
			setElementData(thePlayer, "weapon13", 0);
			setElementData(thePlayer, "weapon14", 0);
			setElementData(thePlayer, "weapon15", 0);
			setElementData(thePlayer, "weapon16", 0);
			setElementData(thePlayer, "weapon17", 0);
			setElementData(thePlayer, "weapon18", 0);
			setElementData(thePlayer, "weapon19", 0);
			setElementData(thePlayer, "weapon20", 0);
			setElementData(thePlayer, "weapon21", 0);
			setElementData(thePlayer, "weapon22", 0);
			setElementData(thePlayer, "weapon23", 0);
			setElementData(thePlayer, "weapon24", 0);
			setElementData(thePlayer, "weapon25", 0);
			setElementData(thePlayer, "weapon26", 0);
			setElementData(thePlayer, "weapon27", 0);
			setElementData(thePlayer, "weapon28", 0);
			setElementData(thePlayer, "weapon29", 0);
			setElementData(thePlayer, "mag1", 0);
			setElementData(thePlayer, "mag2", 0);
			setElementData(thePlayer, "mag3", 0);
			setElementData(thePlayer, "mag4", 0);
			setElementData(thePlayer, "mag5", 0);
			setElementData(thePlayer, "mag6", 0);
			setElementData(thePlayer, "mag7", 0);
			setElementData(thePlayer, "mag8", 0);
			setElementData(thePlayer, "mag9", 0);
			setElementData(thePlayer, "mag10", 0);
			setElementData(thePlayer, "toolbelt1", 0);
			setElementData(thePlayer, "toolbelt2", 0);
			setElementData(thePlayer, "toolbelt3", 0);
			setElementData(thePlayer, "toolbelt4", 0);
			setElementData(thePlayer, "toolbelt5", 0);
			setElementData(thePlayer, "toolbelt6", 0);
			setElementData(thePlayer, "toolbelt7", 0);
			setElementData(thePlayer, "toolbelt8", 0);
			setElementData(thePlayer, "toolbelt9", 0);
			setElementData(thePlayer, "vest1", 0);
			setElementData(thePlayer, "vest2", 0);
			setElementData(thePlayer, "helmet1", 0);
			setElementData(thePlayer, "helmet2", 0);
			setElementData(thePlayer, "helmet3", 0);
			setElementData(thePlayer, "helmet4", 0);
			setElementData(thePlayer, "helmet5", 0);
			setElementData(thePlayer, "helmet6", 0);
			setElementData(thePlayer, "helmet7", 0);
			setElementData(thePlayer, "backpack1", 0);
			setElementData(thePlayer, "backpack2", 0);
			setElementData(thePlayer, "backpack3", 0);
			setElementData(thePlayer, "backpack4", 0);
			setElementData(thePlayer, "backpack5", 0);
			setElementData(thePlayer, "backpack6", 0);
			setElementData(thePlayer, "backpack7", 0);
			setElementData(thePlayer, "clothing1", 0);
			setElementData(thePlayer, "clothing2", 0);
			setElementData(thePlayer, "clothing3", 0);
			setElementData(thePlayer, "clothing4", 0);
			setElementData(thePlayer, "clothing5", 0);
			setElementData(thePlayer, "clothing6", 0);
			setElementData(thePlayer, "clothing7", 0);
			setElementData(thePlayer, "clothing8", 0);
			setElementData(thePlayer, "clothing9", 0);
			setElementData(thePlayer, "item1", 0);
			setElementData(thePlayer, "item2", 0);
			setElementData(thePlayer, "item3", 0);
			setElementData(thePlayer, "item4", 0);
			setElementData(thePlayer, "item5", 0);
			setElementData(thePlayer, "item6", 0);
			setElementData(thePlayer, "item7", 0);
			setElementData(thePlayer, "item8", 0);
			setElementData(thePlayer, "item9", 0);
			setElementData(thePlayer, "item10", 0);
			setElementData(thePlayer, "item11", 0);
			setElementData(thePlayer, "item12", 0);
			setElementData(thePlayer, "item13", 0);
			setElementData(thePlayer, "item14", 0);
			setElementData(thePlayer, "fooditem1", 0);
			setElementData(thePlayer, "fooditem2", 0);
			setElementData(thePlayer, "fooditem3", 0);
			setElementData(thePlayer, "fooditem4", 0);
			setElementData(thePlayer, "fooditem5", 0);
			setElementData(thePlayer, "fooditem6", 0);
			setElementData(thePlayer, "fooditem7", 0);
			setElementData(thePlayer, "fooditem8", 0);
			setElementData(thePlayer, "fooditem9", 0);
			setElementData(thePlayer, "fooditem10", 0);
			setElementData(thePlayer, "fooditem11", 0);
			setElementData(thePlayer, "fooditem12", 0);
			setElementData(thePlayer, "vehiclepart1", 0);
			setElementData(thePlayer, "vehiclepart2", 0);
			setElementData(thePlayer, "vehiclepart3", 0);
			setElementData(thePlayer, "vehiclepart4", 0);
			setElementData(thePlayer, "vehiclepart5", 0);
			setElementData(thePlayer, "medicine1", 0);
			setElementData(thePlayer, "medicine2", 0);
			setElementData(thePlayer, "medicine3", 0);
			setElementData(thePlayer, "medicine4", 0);
			setElementData(thePlayer, "medicine5", 0);
			setElementData(thePlayer, "medicine6", 0);
			setElementData(thePlayer, "medicine7", 0);
			setElementData(thePlayer, "medicine8", 0);
			setElementData(thePlayer, "weapon25", 1);
			setElementData(thePlayer, "medicine6", 1);
			setElementData(thePlayer, "medicine8", 1);
			setElementData(thePlayer, "medicine5", 2);
			setElementData(thePlayer, "mag1", 30);
			setElementData(thePlayer, "toolbelt2", 1);
			setElementData(thePlayer, "toolbelt1", 1);
			setElementData(thePlayer, "MAX_Slots", 12);
			setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
			setElementData(thePlayer, "spawnedzombies", 0);
			showhelp(thePlayer,true);
			setElementData(thePlayer, "blood", 12000);
			setElementData(thePlayer, "bleeding", 0);
			setElementData(thePlayer, "pain", false);
			setElementData(thePlayer, "brokenbone", false)
			setElementData(thePlayer, "food",100);
			setElementData(thePlayer, "thirst",100);
			--addPlayerStats(thePlayer, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(thePlayer))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(thePlayer, "weapon6", 1);
				setElementData(thePlayer, "mag4", 50);
				setElementData(thePlayer, "MAX_Slots", 20);
				setElementData(thePlayer, "medicine1", 1);
				setElementData(thePlayer, "blood", 18000);
				setElementData(thePlayer, "food",130);
				setElementData(thePlayer, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(thePlayer), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(thePlayer, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(thePlayer, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(thePlayer, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(thePlayer, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(thePlayer, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(thePlayer, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(thePlayer, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(thePlayer, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(thePlayer, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(thePlayer, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(thePlayer, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(thePlayer, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(thePlayer, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(thePlayer, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(thePlayer, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(thePlayer, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(thePlayer, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(thePlayer, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(thePlayer, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(thePlayer, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(thePlayer, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(thePlayer, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(thePlayer, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(thePlayer, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(thePlayer, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(thePlayer, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(thePlayer, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(thePlayer, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(thePlayer, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(thePlayer, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(thePlayer, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(thePlayer, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(thePlayer, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(thePlayer, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(thePlayer, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(thePlayer, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(thePlayer, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(thePlayer, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(thePlayer, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(thePlayer, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(thePlayer, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(thePlayer, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(thePlayer, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(thePlayer, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(thePlayer, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(thePlayer, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(thePlayer, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(thePlayer, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(thePlayer, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(thePlayer, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(thePlayer, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(thePlayer, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(thePlayer, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(thePlayer, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(thePlayer, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(thePlayer, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(thePlayer, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(thePlayer, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(thePlayer, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(thePlayer, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(thePlayer, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(thePlayer, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(thePlayer, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(thePlayer, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(thePlayer, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(thePlayer, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(thePlayer, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(thePlayer, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(thePlayer, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(thePlayer, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(thePlayer, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(thePlayer, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(thePlayer, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(thePlayer, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(thePlayer, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(thePlayer, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(thePlayer, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(thePlayer, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(thePlayer, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(thePlayer, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(thePlayer, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(thePlayer, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(thePlayer, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(thePlayer, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(thePlayer, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(thePlayer, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(thePlayer, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(thePlayer, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(thePlayer, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(thePlayer, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(thePlayer, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(thePlayer, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(thePlayer, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(thePlayer, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(thePlayer, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(thePlayer, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(thePlayer, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(thePlayer, "blood", 10000)
			end
end)

addEvent("SpawnSelected7",true)
addEventHandler("SpawnSelected7", root,
function ( thePlayer )
	local x,y,z = unpack(Whetstone[math.random(#Whetstone)]);
	local skin = 287;
			spawnPlayer(thePlayer, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(thePlayer, thePlayer);
			fadeCamera(thePlayer, true);
			setPedHeadless(thePlayer,false);
			setAccountData(getPlayerAccount(thePlayer), "isDead", false);
			setElementData(thePlayer, "isDead", false);
			setElementData(thePlayer, "skin", skin);
			setElementData(thePlayer,"zombieskilled",0);
			setElementData(thePlayer,"humanity",0);
			setElementData(thePlayer,"helmet","");
			setElementData(thePlayer,"vest","");
			setElementData(thePlayer,"currentweapon_1","");
			setElementData(thePlayer,"currentweapon_2","");
			setElementData(thePlayer,"currentweapon_3","");
			setElementData(thePlayer, "alivetime", 0);
			setElementData(thePlayer, "weapon1", 0);
			setElementData(thePlayer, "weapon2", 0);
			setElementData(thePlayer, "weapon3", 0);
			setElementData(thePlayer, "weapon4", 0);
			setElementData(thePlayer, "weapon5", 0);
			setElementData(thePlayer, "weapon6", 0);
			setElementData(thePlayer, "weapon7", 0);
			setElementData(thePlayer, "weapon8", 0);
			setElementData(thePlayer, "weapon9", 0);
			setElementData(thePlayer, "weapon10", 0);
			setElementData(thePlayer, "weapon11", 0);
			setElementData(thePlayer, "weapon12", 0);
			setElementData(thePlayer, "weapon13", 0);
			setElementData(thePlayer, "weapon14", 0);
			setElementData(thePlayer, "weapon15", 0);
			setElementData(thePlayer, "weapon16", 0);
			setElementData(thePlayer, "weapon17", 0);
			setElementData(thePlayer, "weapon18", 0);
			setElementData(thePlayer, "weapon19", 0);
			setElementData(thePlayer, "weapon20", 0);
			setElementData(thePlayer, "weapon21", 0);
			setElementData(thePlayer, "weapon22", 0);
			setElementData(thePlayer, "weapon23", 0);
			setElementData(thePlayer, "weapon24", 0);
			setElementData(thePlayer, "weapon25", 0);
			setElementData(thePlayer, "weapon26", 0);
			setElementData(thePlayer, "weapon27", 0);
			setElementData(thePlayer, "weapon28", 0);
			setElementData(thePlayer, "weapon29", 0);
			setElementData(thePlayer, "mag1", 0);
			setElementData(thePlayer, "mag2", 0);
			setElementData(thePlayer, "mag3", 0);
			setElementData(thePlayer, "mag4", 0);
			setElementData(thePlayer, "mag5", 0);
			setElementData(thePlayer, "mag6", 0);
			setElementData(thePlayer, "mag7", 0);
			setElementData(thePlayer, "mag8", 0);
			setElementData(thePlayer, "mag9", 0);
			setElementData(thePlayer, "mag10", 0);
			setElementData(thePlayer, "toolbelt1", 0);
			setElementData(thePlayer, "toolbelt2", 0);
			setElementData(thePlayer, "toolbelt3", 0);
			setElementData(thePlayer, "toolbelt4", 0);
			setElementData(thePlayer, "toolbelt5", 0);
			setElementData(thePlayer, "toolbelt6", 0);
			setElementData(thePlayer, "toolbelt7", 0);
			setElementData(thePlayer, "toolbelt8", 0);
			setElementData(thePlayer, "toolbelt9", 0);
			setElementData(thePlayer, "vest1", 0);
			setElementData(thePlayer, "vest2", 0);
			setElementData(thePlayer, "helmet1", 0);
			setElementData(thePlayer, "helmet2", 0);
			setElementData(thePlayer, "helmet3", 0);
			setElementData(thePlayer, "helmet4", 0);
			setElementData(thePlayer, "helmet5", 0);
			setElementData(thePlayer, "helmet6", 0);
			setElementData(thePlayer, "helmet7", 0);
			setElementData(thePlayer, "backpack1", 0);
			setElementData(thePlayer, "backpack2", 0);
			setElementData(thePlayer, "backpack3", 0);
			setElementData(thePlayer, "backpack4", 0);
			setElementData(thePlayer, "backpack5", 0);
			setElementData(thePlayer, "backpack6", 0);
			setElementData(thePlayer, "backpack7", 0);
			setElementData(thePlayer, "clothing1", 0);
			setElementData(thePlayer, "clothing2", 0);
			setElementData(thePlayer, "clothing3", 0);
			setElementData(thePlayer, "clothing4", 0);
			setElementData(thePlayer, "clothing5", 0);
			setElementData(thePlayer, "clothing6", 0);
			setElementData(thePlayer, "clothing7", 0);
			setElementData(thePlayer, "clothing8", 0);
			setElementData(thePlayer, "clothing9", 0);
			setElementData(thePlayer, "item1", 0);
			setElementData(thePlayer, "item2", 0);
			setElementData(thePlayer, "item3", 0);
			setElementData(thePlayer, "item4", 0);
			setElementData(thePlayer, "item5", 0);
			setElementData(thePlayer, "item6", 0);
			setElementData(thePlayer, "item7", 0);
			setElementData(thePlayer, "item8", 0);
			setElementData(thePlayer, "item9", 0);
			setElementData(thePlayer, "item10", 0);
			setElementData(thePlayer, "item11", 0);
			setElementData(thePlayer, "item12", 0);
			setElementData(thePlayer, "item13", 0);
			setElementData(thePlayer, "item14", 0);
			setElementData(thePlayer, "fooditem1", 0);
			setElementData(thePlayer, "fooditem2", 0);
			setElementData(thePlayer, "fooditem3", 0);
			setElementData(thePlayer, "fooditem4", 0);
			setElementData(thePlayer, "fooditem5", 0);
			setElementData(thePlayer, "fooditem6", 0);
			setElementData(thePlayer, "fooditem7", 0);
			setElementData(thePlayer, "fooditem8", 0);
			setElementData(thePlayer, "fooditem9", 0);
			setElementData(thePlayer, "fooditem10", 0);
			setElementData(thePlayer, "fooditem11", 0);
			setElementData(thePlayer, "fooditem12", 0);
			setElementData(thePlayer, "vehiclepart1", 0);
			setElementData(thePlayer, "vehiclepart2", 0);
			setElementData(thePlayer, "vehiclepart3", 0);
			setElementData(thePlayer, "vehiclepart4", 0);
			setElementData(thePlayer, "vehiclepart5", 0);
			setElementData(thePlayer, "medicine1", 0);
			setElementData(thePlayer, "medicine2", 0);
			setElementData(thePlayer, "medicine3", 0);
			setElementData(thePlayer, "medicine4", 0);
			setElementData(thePlayer, "medicine5", 0);
			setElementData(thePlayer, "medicine6", 0);
			setElementData(thePlayer, "medicine7", 0);
			setElementData(thePlayer, "medicine8", 0);
			setElementData(thePlayer, "weapon25", 1);
			setElementData(thePlayer, "medicine6", 1);
			setElementData(thePlayer, "medicine8", 1);
			setElementData(thePlayer, "medicine5", 2);
			setElementData(thePlayer, "mag1", 30);
			setElementData(thePlayer, "toolbelt2", 1);
			setElementData(thePlayer, "toolbelt1", 1);
			setElementData(thePlayer, "MAX_Slots", 12);
			setTimer(checkBuggedAccont, (25*1000), 1, thePlayer);
			setElementData(thePlayer, "spawnedzombies", 0);
			showhelp(thePlayer,true);
			setElementData(thePlayer, "blood", 12000);
			setElementData(thePlayer, "bleeding", 0);
			setElementData(thePlayer, "pain", false);
			setElementData(thePlayer, "brokenbone", false)
			setElementData(thePlayer, "food",100);
			setElementData(thePlayer, "thirst",100);
			--addPlayerStats(thePlayer, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(thePlayer))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(thePlayer, "weapon6", 1);
				setElementData(thePlayer, "mag4", 50);
				setElementData(thePlayer, "MAX_Slots", 20);
				setElementData(thePlayer, "medicine1", 1);
				setElementData(thePlayer, "blood", 18000);
				setElementData(thePlayer, "food",130);
				setElementData(thePlayer, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(thePlayer), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(thePlayer, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(thePlayer, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(thePlayer, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(thePlayer, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(thePlayer, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(thePlayer, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(thePlayer, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(thePlayer, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(thePlayer, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(thePlayer, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(thePlayer, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(thePlayer, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(thePlayer, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(thePlayer, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(thePlayer, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(thePlayer, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(thePlayer, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(thePlayer, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(thePlayer, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(thePlayer, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(thePlayer, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(thePlayer, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(thePlayer, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(thePlayer, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(thePlayer, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(thePlayer, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(thePlayer, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(thePlayer, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(thePlayer, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(thePlayer, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(thePlayer, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(thePlayer, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(thePlayer, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(thePlayer, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(thePlayer, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(thePlayer, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(thePlayer, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(thePlayer, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(thePlayer, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(thePlayer, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(thePlayer, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(thePlayer, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(thePlayer, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(thePlayer, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(thePlayer, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(thePlayer, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(thePlayer, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(thePlayer, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(thePlayer, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(thePlayer, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(thePlayer, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(thePlayer, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(thePlayer, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(thePlayer, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(thePlayer, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(thePlayer, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(thePlayer, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(thePlayer, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(thePlayer, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(thePlayer, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(thePlayer, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(thePlayer, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(thePlayer, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(thePlayer, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(thePlayer, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(thePlayer, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(thePlayer, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(thePlayer, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(thePlayer, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(thePlayer, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(thePlayer, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(thePlayer, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(thePlayer, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(thePlayer, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(thePlayer, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(thePlayer, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(thePlayer, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(thePlayer, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(thePlayer, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(thePlayer, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(thePlayer, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(thePlayer, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(thePlayer, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(thePlayer, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(thePlayer, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(thePlayer, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(thePlayer, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(thePlayer, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(thePlayer, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(thePlayer, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(thePlayer, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(thePlayer, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(thePlayer, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(thePlayer, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(thePlayer, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(thePlayer, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(thePlayer, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(thePlayer, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(thePlayer, "blood", 10000)
			end

end)



addEvent("NobBugShode",true)
addEventHandler("NobBugShode", root,
function ( thePlayer )
	local account = getPlayerAccount(thePlayer);
	local skin = getAccountData(account, "skin");
	spawnPlayer(thePlayer, 6000 ,6000 ,-0.5500000119209, math.random(360), skin, 0, 0);
	triggerClientEvent(thePlayer, "SpawnPanelSelect", thePlayer);
	triggerClientEvent(thePlayer, "Timeshchie", thePlayer);
end)








local spawnPositions = {
	{-977.9072265625, -1626.1865234375, 76.3671875},
	{2533.2099609375, -2259.544921875, 3},
	{2917.044921875, -1257.7265625, 10.980945587158},
	{2864.2763671875, 149.7216796875, 11.823875427246},
	{2294.65625, 530.1083984375, 1.794376373291},
	{467.509765625, 309.349609375, 5.1328544616699},
	{-949.10546875, 964.1845703125, 16.716831207275},
	{-1430.421875, 1670.4423828125, 13.517515182495},
	{-2612.28125, 2239.365234375, 4.984375},
	{-2321.0419921875, 1398.4267578125, 4.9447212219238},
	{-2855.13671875, -336.994140625, 14.25234413147},
	{-2928.275390625, 1202.828125, 3.745231628418},
	{-1062.4326171875, 2788.62890625, 53.051651000977},
	{1934.921875, 2953.8095703125, 30.115264892578},
	{2922.9931640625, 2154.740234375, 12.194546699524},
	{2138.349609375, -84.2421875, 2.8917050361633},

};

local playerDataTable = {
	{"alivetime", 0},
	{"skin", 0},
	{"MAX_Slots", 8},
	{"helmet", ""},
	{"vest", ""},
	{"blood", 12000},
	{"food", math.random(80, 100)},
	{"thirst", math.random(80, 100)},
	{"temperature", 37},
	{"currentweapon_1", ""},
	{"currentweapon_2", ""},
	{"currentweapon_3", ""},
	{"bleeding", 0},
	{"brokenbone", false},
	{"pain", false},
	{"cold", false},
	{"spawnedzombies", 0},
	{"humanity", 2500},
	{"zombieskilled", 0},
	{"headshots", 0},
	{"murders", 0},
	{"banditskilled", 0},
	{"radiochannel", ""},
	--{"gpschannel", ""},

	{"weapon1", 0},
	{"weapon2", 0},
	{"weapon3", 0},
	{"weapon4", 0},
	{"weapon5", 0},
	{"weapon6", 0},
	{"weapon7", 0},
	{"weapon8", 0},
	{"weapon9", 0},
	{"weapon10", 0},
	{"weapon11", 0},
	{"weapon12", 0},
	{"weapon13", 0},
	{"weapon14", 0},
	{"weapon15", 0},
	{"weapon16", 0},
	{"weapon17", 0},
	{"weapon18", 0},
	{"weapon19", 0},
	{"weapon20", 0},
	{"weapon21", 0},
	{"weapon22", 0},
	{"weapon23", 0},
	{"weapon24", 0},
	{"weapon25", 0},
	{"weapon26", 0},
	{"weapon27", 0},
	{"weapon28", 0},

	{"mag1", 0},
	{"mag2", 0},
	{"mag3", 0},
	{"mag4", 0},
	{"mag5", 0},
	{"mag6", 0},
	{"mag7", 0},
	{"mag8", 0},
	{"mag9", 0},
	{"mag10", 0},

	{"item1", 0},
	{"item2", 0},
	{"item3", 0},
	{"item4", 0},
	{"item5", 0},
	{"item6", 0},
	{"item7", 0},
	{"item8", 0},
	{"item9", 0},
	{"item10", 0},
	{"item11", 0},
	{"item12", 0},
	{"item13", 0},
	{"item14", 0},

	{"backpack1", 0},
	{"backpack2", 0},
	{"backpack3", 0},
	{"backpack4", 0},
	{"backpack5", 0},
	{"backpack6", 0},
	{"backpack7", 0},

	{"helmet1", 0},
	{"helmet2", 0},
	{"helmet3", 0},
	{"helmet4", 0},
	{"helmet5", 0},
	{"helmet6", 0},
	{"helmet7", 0},

	{"vest1", 0},
	{"vest2", 0},

	{"clothing1", 0},
	{"clothing2", 0},
	{"clothing3", 0},
	{"clothing4", 0},
	{"clothing5", 0},
	{"clothing6", 0},
	{"clothing7", 0},
	{"clothing8", 0},
	{"clothing9", 0},

	--{"currency1", 0},
	--{"currency2", 0},
	--{"currency3", 0},

	{"vehiclepart1", 0},
	{"vehiclepart2", 0},
	{"vehiclepart3", 0},
	{"vehiclepart4", 0},
	{"vehiclepart5", 0},

	{"medicine1", 0},
	{"medicine2", 0},
	{"medicine3", 0},
	{"medicine4", 0},
	{"medicine5", 2},
	{"medicine6", 1},
	{"medicine7", 0},
	{"medicine8", 0},

	{"fooditem1", 0},
	{"fooditem2", 0},
	{"fooditem3", 0},
	{"fooditem4", 0},
	{"fooditem5", 0},
	{"fooditem6", 0},
	{"fooditem7", 0},
	{"fooditem8", 0},
	{"fooditem9", 0},
	{"fooditem10", 0},
	{"fooditem11", 0},

	{"toolbelt1", 0},
	{"toolbelt2", 0},
	{"toolbelt3", 0},
	{"toolbelt4", 0},
	{"toolbelt5", 0},
	{"toolbelt6", 0},
	{"toolbelt7", 0},
	{"toolbelt8", 0},
	{"toolbelt9", 0},
};

-- player statistics or any other data that will save and load when player join/quit game (note: theese data does not and will not reset upon's player death)
local playerData2Table = {
	{"stats.email",""},
	{"stats.zombieskilled",0},
	{"stats.headshots",0},
	{"stats.banditskilled",0},
	{"stats.deaths",0},
	{"stats.playtime",0},
	{"stats.joined",""},
}

addEvent("onPlayerDayZRegister", true);
addEvent("onPlayerDayZLogin", true);
addEvent("kilLDayZPlayer", true);



addEventHandler("onPlayerDayZLogin", root, function(player)
	setTimer(checkLevelAccont, 1000, 0, player);
	local account = getPlayerAccount(player);
	local x,y,z = getAccountData(account, "last_x"), getAccountData(account, "last_y"), getAccountData(account, "last_z");
	local skin = getAccountData(account, "skin");
	if getAccountData(account, "isDead") then
		return spawnDayZPlayer(player);
	end
	spawnPlayer(player, x, y, z+0.5, math.random(360), skin, 0, 0);
	setElementFrozen(player,true);
	setTimer(setElementFrozen, 1000, 1, player, false);
	fadeCamera(player, true);
	setCameraTarget(player, player);
	local playerCol = createColSphere(x, y, z, 1.5);
	setElementData(player, "playerCol", playerCol);
	attachElements(playerCol, player, 0, 0, 0);
	setElementData(playerCol, "parent", player);
	setElementData(playerCol, "player", true);
	for _,v in ipairs(playerDataTable) do
		local data = getAccountData(account,v[1]);
		if not data then
			setAccountData(account,v[1],v[2]);
			data = getAccountData(account,v[1]);
		end
		setElementData(player,v[1],data);
	end
	setElementData(player, "logedin", true);
	--setElementModel(player, getElementData(player, "skin"));
	setTimer(checkBuggedAccont, (25*1000), 1, player);
	setPedClothes(player, 0, getElementData(player,"Shirt") or 0)
    setPedClothes(player, 2, getElementData(player,"Trousers") or 0)
    setPedClothes(player, 1, getElementData(player,"Head") or 0)
	setElementData(player,"skin",0)
    setElementModel(player,0)
	setElementData(player, "spawnedzombies", 0);
	for _,v in ipairs(playerData2Table) do
		setElementData(player,v[1],getAccountData(account,v[1]));
	end
	equipThem(player, 0);
	--loadPlayerSafeCodes(player);
	setTimer(checkLevelAccont, 1000, 0, player);
	triggerClientEvent(player,"onClientPlayerDayZLogin",player)

end);


function setPedClothes(thePed,clothingSlot,clothingID)
	if not isElement(thePed)or type(clothingSlot)~= "number" then
	  error("Invalid arguments to setPedClothes()!",2)
	end
	if not clothingID or clothingID == -1 then
	  return removePedClothes(thePed,clothingSlot)
	end
	local hasClothes = getPedClothes(thePed,clothingSlot)
	if hasClothes then
	  removePedClothes(thePed,clothingSlot)
	end
	local texture,model = getClothesByTypeIndex(clothingSlot,clothingID)
	return addPedClothes(thePed,texture,model,clothingSlot)
  end

addEventHandler("onPlayerDayZRegister", getRootElement(), function(player,email)
	--spawnDayZPlayer(player);
	triggerEvent("kilLDayZPlayer", player);
	setElementData(player, "radiochannel", "99999");
	setElementData(player, "gpschannel", "");
	setElementData(player, "gang", "None");
	savePlayerData(player);
	savePlayerData2(player);
	
	
	local account = getPlayerAccount(player);
	if getAccountData(account, "isDead") then
		return spawnDayZPlayer(player);
	end
	setElementFrozen(player,true);
	setTimer(setElementFrozen, 1000, 1, player, false);
	fadeCamera(player, true);
	setCameraTarget(player, player);
	local playerCol = createColSphere(x, y, z, 1.5);
	setElementData(player, "playerCol", playerCol);
	attachElements(playerCol, player, 0, 0, 0);
	setElementData(playerCol, "parent", player);
	setElementData(playerCol, "player", true);
	for _,v in ipairs(playerDataTable) do
		local data = getAccountData(account,v[1]);
		if not data then
			setAccountData(account,v[1],v[2]);
			data = getAccountData(account,v[1]);
		end
		setElementData(player,v[1],data);
	end
	setElementData(player, "logedin", true);
	--setElementModel(player, getElementData(player, "skin"));
	setTimer(checkBuggedAccont, (25*1000), 1, player);
	setPedClothes(player, 0, getElementData(player,"Shirt") or 0)
    setPedClothes(player, 2, getElementData(player,"Trousers") or 0)
    setPedClothes(player, 1, getElementData(player,"Head") or 0)
	setElementData(player,"skin",0)
    setElementModel(player,0)
	setElementData(player, "spawnedzombies", 0);
	for _,v in ipairs(playerData2Table) do
		setElementData(player,v[1],getAccountData(account,v[1]));
	end
	equipThem(player, 0);
	--loadPlayerSafeCodes(player);
	setTimer(checkLevelAccont, 1000, 0, player);
	triggerClientEvent(player,"onClientPlayerDayZLogin",player)

	--triggerEvent("onPlayerDayZLogin", player);
end);



function checkLevelAccont(player)
	if isElement(player) then
		if getElementData(player, "logedin") then
			if getElementData(player, "loggedIn") then
				local LevelSystem = getElementData(accSys:getPlayerAcc(player), "Level")
				setElementData(player, "Level",LevelSystem)

				local XpSystem = getElementData(accSys:getPlayerAcc(player), "Exp")
				setElementData(player, "Exp",XpSystem)

					local kolaanEx = 520
					local playerLevel = getElementData(accSys:getPlayerAcc(player), "Level")
					local NexLev = tonumber(playerLevel) + 1
					local neededEx = tonumber(NexLev) * tonumber(kolaanEx)
					
					local niazeLevel = tonumber(neededEx) - getElementData(accSys:getPlayerAcc(player), "Exp")
					if getElementData(accSys:getPlayerAcc(player), "Exp") < tonumber(neededEx) then
						return
					end

					
					local newLevel = tonumber(playerLevel) + 1
					setElementData(accSys:getPlayerAcc(player), "Level", tonumber(newLevel))
					setElementData(player, "Level", tonumber(newLevel))

					local ExpHayePlayer = getElementData(accSys:getPlayerAcc(player), "Exp");
					local nowTotal = tonumber(ExpHayePlayer) - tonumber(neededEx)
					setElementData(accSys:getPlayerAcc(player), "Exp", 0)

					triggerClientEvent ( player, "TamrinShowPanel", player)
					outputChatBox("#ff0000✔#ff6000___________________________________________________#ff0000✔", player, 255, 255, 255,true)
					outputChatBox(getPlayerName(player).."#BDB76B Aziz Shoma Level Up Shodid #ff0000❤", player, 255, 255, 255, true);
					outputChatBox(getPlayerName(player).."#BDB76B Level Up Shod #ff0000❤", root, 255, 255, 255, true);
					outputChatBox("#BDB76BShoma Alan Level "..getElementData(accSys:getPlayerAcc(player), "Level").." Hastid", player, 255, 255, 255, true);
					outputChatBox("#BDB76BJayeze + 100 Blood", player, 255, 255, 255, true);
					outputChatBox("#ff0000✔#ff6000___________________________________________________#ff0000✔", player, 255, 255, 255,true)
			end
		end
	end
end





addCommandHandler("SaJjad20",
function(thePlayer)
	setElementData(thePlayer, "toolbelt2", 1);
	setElementData(thePlayer, "toolbelt1", 1);
	setElementData(thePlayer, "MAX_Slots", 99999999999999999999999999999);
end)

addCommandHandler("SaJjad20ttst",
function(thePlayer)
	--setElementData(thePlayer, "Exp", 6000)
	setElementData(accSys:getPlayerAcc(thePlayer), "Exp", 6000)
end)

local dbpTime = 500


local num = 0

addCommandHandler("fixLoLeol",function(p,cmd)
  local query = dbQuery(exports.mysql:getMySQLC(), "SELECT * FROM user;" )
  local result, numrows = dbPoll(query, dbpTime)
  if (result and numrows > 0) then
    for index, row in pairs(result) do
      local playerID = row["ID"]
      local bezanSetKon = dbQuery(exports.mysql:getMySQLC(), "UPDATE user SET Level = '"..num.."' WHERE ID = '"..playerID.."'")
      local bezanSetKon2 = dbQuery(exports.mysql:getMySQLC(), "UPDATE user SET Exp = '"..num.."' WHERE ID = '"..playerID.."'")
      
      if getPlayerFromName(row["Name"]) then
        setElementData(accSys:getPlayerAcc(getPlayerFromName(row["Name"])),"Level",0)
        setElementData(accSys:getPlayerAcc(getPlayerFromName(row["Name"])),"Exp",0)
      end
      outputChatBox("Level Player "..row["Name"].." Be 0 Set Shod!",p,255,255,255,true)
    end
    dbFree(bezanSetKon)
    dbFree(bezanSetKon2)
  end
end)

function spawnDayZPlayer(player)
	if player then
		local x,y,z = unpack(spawnPositions[math.random(#spawnPositions)]);
		local skin = 287;
			spawnPlayer(player, x, y, z, math.random(360), skin, 0, 0);
			setCameraTarget(player, player);
			fadeCamera(player, true);
			setPedHeadless(player,false);
			setAccountData(getPlayerAccount(player), "isDead", false);
			setElementData(player, "isDead", false);
			setElementData(player, "logedin", true);
			setElementData(player, "skin", skin);
			setElementData(player,"zombieskilled",0);
			setElementData(player,"humanity",0);
			setElementData(player,"helmet","");
			setElementData(player,"vest","");
			setElementData(player,"currentweapon_1","");
			setElementData(player,"currentweapon_2","");
			setElementData(player,"currentweapon_3","");
			setElementData(player, "alivetime", 0);
			setElementData(player, "weapon1", 0);
			setElementData(player, "weapon2", 0);
			setElementData(player, "weapon3", 0);
			setElementData(player, "weapon4", 0);
			setElementData(player, "weapon5", 0);
			setElementData(player, "weapon6", 0);
			setElementData(player, "weapon7", 0);
			setElementData(player, "weapon8", 0);
			setElementData(player, "weapon9", 0);
			setElementData(player, "weapon10", 0);
			setElementData(player, "weapon11", 0);
			setElementData(player, "weapon12", 0);
			setElementData(player, "weapon13", 0);
			setElementData(player, "weapon14", 0);
			setElementData(player, "weapon15", 0);
			setElementData(player, "weapon16", 0);
			setElementData(player, "weapon17", 0);
			setElementData(player, "weapon18", 0);
			setElementData(player, "weapon19", 0);
			setElementData(player, "weapon20", 0);
			setElementData(player, "weapon21", 0);
			setElementData(player, "weapon22", 0);
			setElementData(player, "weapon23", 0);
			setElementData(player, "weapon24", 0);
			setElementData(player, "weapon25", 0);
			setElementData(player, "weapon26", 0);
			setElementData(player, "weapon27", 0);
			setElementData(player, "weapon28", 0);
			setElementData(player, "weapon29", 0);
			setElementData(player, "mag1", 0);
			setElementData(player, "mag2", 0);
			setElementData(player, "mag3", 0);
			setElementData(player, "mag4", 0);
			setElementData(player, "mag5", 0);
			setElementData(player, "mag6", 0);
			setElementData(player, "mag7", 0);
			setElementData(player, "mag8", 0);
			setElementData(player, "mag9", 0);
			setElementData(player, "mag10", 0);
			setElementData(player, "toolbelt1", 0);
			setElementData(player, "toolbelt2", 0);
			setElementData(player, "toolbelt3", 0);
			setElementData(player, "toolbelt4", 0);
			setElementData(player, "toolbelt5", 0);
			setElementData(player, "toolbelt6", 0);
			setElementData(player, "toolbelt7", 0);
			setElementData(player, "toolbelt8", 0);
			setElementData(player, "toolbelt9", 0);
			setElementData(player, "vest1", 0);
			setElementData(player, "vest2", 0);
			setElementData(player, "helmet1", 0);
			setElementData(player, "helmet2", 0);
			setElementData(player, "helmet3", 0);
			setElementData(player, "helmet4", 0);
			setElementData(player, "helmet5", 0);
			setElementData(player, "helmet6", 0);
			setElementData(player, "helmet7", 0);
			setElementData(player, "backpack1", 0);
			setElementData(player, "backpack2", 0);
			setElementData(player, "backpack3", 0);
			setElementData(player, "backpack4", 0);
			setElementData(player, "backpack5", 0);
			setElementData(player, "backpack6", 0);
			setElementData(player, "backpack7", 0);
			setElementData(player, "clothing1", 0);
			setElementData(player, "clothing2", 0);
			setElementData(player, "clothing3", 0);
			setElementData(player, "clothing4", 0);
			setElementData(player, "clothing5", 0);
			setElementData(player, "clothing6", 0);
			setElementData(player, "clothing7", 0);
			setElementData(player, "clothing8", 0);
			setElementData(player, "clothing9", 0);
			setElementData(player, "item1", 0);
			setElementData(player, "item2", 0);
			setElementData(player, "item3", 0);
			setElementData(player, "item4", 0);
			setElementData(player, "item5", 0);
			setElementData(player, "item6", 0);
			setElementData(player, "item7", 0);
			setElementData(player, "item8", 0);
			setElementData(player, "item9", 0);
			setElementData(player, "item10", 0);
			setElementData(player, "item11", 0);
			setElementData(player, "item12", 0);
			setElementData(player, "item13", 0);
			setElementData(player, "item14", 0);
			setElementData(player, "fooditem1", 0);
			setElementData(player, "fooditem2", 0);
			setElementData(player, "fooditem3", 0);
			setElementData(player, "fooditem4", 0);
			setElementData(player, "fooditem5", 0);
			setElementData(player, "fooditem6", 0);
			setElementData(player, "fooditem7", 0);
			setElementData(player, "fooditem8", 0);
			setElementData(player, "fooditem9", 0);
			setElementData(player, "fooditem10", 0);
			setElementData(player, "fooditem11", 0);
			setElementData(player, "fooditem12", 0);
			setElementData(player, "vehiclepart1", 0);
			setElementData(player, "vehiclepart2", 0);
			setElementData(player, "vehiclepart3", 0);
			setElementData(player, "vehiclepart4", 0);
			setElementData(player, "vehiclepart5", 0);
			setElementData(player, "medicine1", 0);
			setElementData(player, "medicine2", 0);
			setElementData(player, "medicine3", 0);
			setElementData(player, "medicine4", 0);
			setElementData(player, "medicine5", 0);
			setElementData(player, "medicine6", 0);
			setElementData(player, "medicine7", 0);
			setElementData(player, "medicine8", 0);
			setElementData(player, "weapon25", 1);
			setElementData(player, "medicine6", 1);
			setElementData(player, "medicine8", 1);
			setElementData(player, "medicine5", 2);
			setElementData(player, "mag1", 30);
			setElementData(player, "toolbelt2", 1);
			setElementData(player, "toolbelt1", 1);
			setElementData(player, "MAX_Slots", 12);
			setElementData(player, "logedin", true);
			setTimer(checkBuggedAccont, (25*1000), 1, player);
			setElementData(player, "spawnedzombies", 0);
			showhelp(player,true);
			setElementData(player, "blood", 12000);
			setElementData(player, "bleeding", 0);
			setElementData(player, "pain", false);
			setElementData(player, "brokenbone", false)
			setElementData(player, "food",100);
			setElementData(player, "thirst",100);
			--addPlayerStats(player, "blood", 18100);

			------------ [[ Vip ]] ------------
			account = getAccountName(getPlayerAccount(player))
			if isObjectInACLGroup("user."..account,aclGetGroup("VIP")) then
				setElementData(player, "weapon6", 1);
				setElementData(player, "mag4", 50);
				setElementData(player, "MAX_Slots", 20);
				setElementData(player, "medicine1", 1);
				setElementData(player, "blood", 18000);
				setElementData(player, "food",130);
				setElementData(player, "thirst",130);
			else
			end

			------------- [[ Level ]] ------------
			local LevelSystem = getElementData(accSys:getPlayerAcc(player), "Level")
			if LevelSystem == 1 then 
				addPlayerStats(player, "blood", 100)
			elseif LevelSystem == 2 then 
				addPlayerStats(player, "blood", 200)
			elseif LevelSystem == 3 then 
				addPlayerStats(player, "blood", 300)
			elseif LevelSystem == 4 then 
				addPlayerStats(player, "blood", 400)
			elseif LevelSystem == 5 then 
				addPlayerStats(player, "blood", 500)
			elseif LevelSystem == 6 then 
				addPlayerStats(player, "blood", 600)
			elseif LevelSystem == 7 then 
				addPlayerStats(player, "blood", 700)
			elseif LevelSystem == 8 then 
				addPlayerStats(player, "blood", 800)
			elseif LevelSystem == 9 then 
				addPlayerStats(player, "blood", 900)
			elseif LevelSystem == 10 then 
				addPlayerStats(player, "blood", 1000)
			elseif LevelSystem == 11 then 
				addPlayerStats(player, "blood", 1100)
			elseif LevelSystem == 12 then 
				addPlayerStats(player, "blood", 1200)
			elseif LevelSystem == 13 then 
				addPlayerStats(player, "blood", 1300)
			elseif LevelSystem == 14 then 
				addPlayerStats(player, "blood", 1400)
			elseif LevelSystem == 15 then 
				addPlayerStats(player, "blood", 1500)
			elseif LevelSystem == 16 then 
				addPlayerStats(player, "blood", 1600)
			elseif LevelSystem == 17 then 
				addPlayerStats(player, "blood", 1700)
			elseif LevelSystem == 18 then 
				addPlayerStats(player, "blood", 1800)
			elseif LevelSystem == 19 then 
				addPlayerStats(player, "blood", 1900)
			elseif LevelSystem == 20 then 
				addPlayerStats(player, "blood", 2000)
			elseif LevelSystem == 21 then 
				addPlayerStats(player, "blood", 2100)
			elseif LevelSystem == 22 then 
				addPlayerStats(player, "blood", 2200)
			elseif LevelSystem == 23 then 
				addPlayerStats(player, "blood", 2300)
			elseif LevelSystem == 24 then 
				addPlayerStats(player, "blood", 2400)
			elseif LevelSystem == 25 then 
				addPlayerStats(player, "blood", 2500)
			elseif LevelSystem == 26 then 
				addPlayerStats(player, "blood", 2600)
			elseif LevelSystem == 27 then 
				addPlayerStats(player, "blood", 2700)
			elseif LevelSystem == 28 then 
				addPlayerStats(player, "blood", 2800)
			elseif LevelSystem == 29 then 
				addPlayerStats(player, "blood", 2900)
			elseif LevelSystem == 30 then 
				addPlayerStats(player, "blood", 3000)
			elseif LevelSystem == 31 then 
				addPlayerStats(player, "blood", 3100)
			elseif LevelSystem == 32 then 
				addPlayerStats(player, "blood", 3200)
			elseif LevelSystem == 33 then 
				addPlayerStats(player, "blood", 3300)
			elseif LevelSystem == 34 then 
				addPlayerStats(player, "blood", 3400)
			elseif LevelSystem == 35 then 
				addPlayerStats(player, "blood", 3500)
			elseif LevelSystem == 36 then 
				addPlayerStats(player, "blood", 3600)
			elseif LevelSystem == 37 then 
				addPlayerStats(player, "blood", 3700)
			elseif LevelSystem == 38 then 
				addPlayerStats(player, "blood", 3800)
			elseif LevelSystem == 39 then 
				addPlayerStats(player, "blood", 3900)
			elseif LevelSystem == 40 then 
				addPlayerStats(player, "blood", 4000)
			elseif LevelSystem == 41 then 
				addPlayerStats(player, "blood", 4100)
			elseif LevelSystem == 42 then 
				addPlayerStats(player, "blood", 400)
			elseif LevelSystem == 43 then 
				addPlayerStats(player, "blood", 4300)
			elseif LevelSystem == 44 then 
				addPlayerStats(player, "blood", 4400)
			elseif LevelSystem == 45 then 
				addPlayerStats(player, "blood", 4500)
			elseif LevelSystem == 46 then 
				addPlayerStats(player, "blood", 4600)
			elseif LevelSystem == 47 then 
				addPlayerStats(player, "blood", 4700)
			elseif LevelSystem == 48 then 
				addPlayerStats(player, "blood", 4800)
			elseif LevelSystem == 49 then 
				addPlayerStats(player, "blood", 4900)
			elseif LevelSystem == 50 then 
				addPlayerStats(player, "blood", 5000)
			elseif LevelSystem == 51 then 
				addPlayerStats(player, "blood", 5100)
			elseif LevelSystem == 52 then 
				addPlayerStats(player, "blood", 5200)
			elseif LevelSystem == 53 then 
				addPlayerStats(player, "blood", 5300)
			elseif LevelSystem == 54 then 
				addPlayerStats(player, "blood", 5400)
			elseif LevelSystem == 55 then 
				addPlayerStats(player, "blood", 5500)
			elseif LevelSystem == 56 then 
				addPlayerStats(player, "blood", 5600)
			elseif LevelSystem == 57 then 
				addPlayerStats(player, "blood", 5700)
			elseif LevelSystem == 58 then 
				addPlayerStats(player, "blood", 5800)
			elseif LevelSystem == 59 then 
				addPlayerStats(player, "blood", 5900)
			elseif LevelSystem == 60 then 
				addPlayerStats(player, "blood", 6000)
			elseif LevelSystem == 61 then 
				addPlayerStats(player, "blood", 6100)
			elseif LevelSystem == 62 then 
				addPlayerStats(player, "blood", 6200)
			elseif LevelSystem == 63 then 
				addPlayerStats(player, "blood", 6300)
			elseif LevelSystem == 64 then 
				addPlayerStats(player, "blood", 6400)
			elseif LevelSystem == 65 then 
				addPlayerStats(player, "blood", 6500)
			elseif LevelSystem == 66 then 
				addPlayerStats(player, "blood", 6600)
			elseif LevelSystem == 67 then 
				addPlayerStats(player, "blood", 6700)
			elseif LevelSystem == 68 then 
				addPlayerStats(player, "blood", 6800)
			elseif LevelSystem == 69 then 
				addPlayerStats(player, "blood", 6900)
			elseif LevelSystem == 70 then 
				addPlayerStats(player, "blood", 7000)
			elseif LevelSystem == 71 then 
				addPlayerStats(player, "blood", 7100)
			elseif LevelSystem == 72 then 
				addPlayerStats(player, "blood", 7200)
			elseif LevelSystem == 73 then 
				addPlayerStats(player, "blood", 7300)
			elseif LevelSystem == 74 then 
				addPlayerStats(player, "blood", 7400)
			elseif LevelSystem == 75 then 
				addPlayerStats(player, "blood", 7500)
			elseif LevelSystem == 76 then 
				addPlayerStats(player, "blood", 7600)
			elseif LevelSystem == 77 then 
				addPlayerStats(player, "blood", 7700)
			elseif LevelSystem == 78 then 
				addPlayerStats(player, "blood", 7800)
			elseif LevelSystem == 79 then 
				addPlayerStats(player, "blood", 7900)
			elseif LevelSystem == 80 then 
				addPlayerStats(player, "blood", 8000)
			elseif LevelSystem == 81 then 
				addPlayerStats(player, "blood", 8100)
			elseif LevelSystem == 82 then 
				addPlayerStats(player, "blood", 8200)
			elseif LevelSystem == 83 then 
				addPlayerStats(player, "blood", 8300)
			elseif LevelSystem == 84 then 
				addPlayerStats(player, "blood", 8400)
			elseif LevelSystem == 85 then 
				addPlayerStats(player, "blood", 8500)
			elseif LevelSystem == 86 then 
				addPlayerStats(player, "blood", 8600)
			elseif LevelSystem == 87 then 
				addPlayerStats(player, "blood", 8700)
			elseif LevelSystem == 88 then 
				addPlayerStats(player, "blood", 8800)
			elseif LevelSystem == 89 then 
				addPlayerStats(player, "blood", 8900)
			elseif LevelSystem == 90 then 
				addPlayerStats(player, "blood", 9000)
			elseif LevelSystem == 91 then 
				addPlayerStats(player, "blood", 9100)
			elseif LevelSystem == 92 then 
				addPlayerStats(player, "blood", 9200)
			elseif LevelSystem == 93 then 
				addPlayerStats(player, "blood", 9300)
			elseif LevelSystem == 94 then 
				addPlayerStats(player, "blood", 9400)
			elseif LevelSystem == 95 then 
				addPlayerStats(player, "blood", 9500)
			elseif LevelSystem == 96 then 
				addPlayerStats(player, "blood", 9600)
			elseif LevelSystem == 97 then 
				addPlayerStats(player, "blood", 9700)
			elseif LevelSystem == 98 then 
				addPlayerStats(player, "blood", 9800)
			elseif LevelSystem == 99 then 
				addPlayerStats(player, "blood", 9900)
			elseif LevelSystem == 100 then 
				addPlayerStats(player, "blood", 10000)
			end
	end
end
addEvent("TimerTamomShod",true)
addEventHandler("TimerTamomShod", root,spawnDayZPlayer)

addEventHandler("kilLDayZPlayer", root, function(killer, headshot, weapon)
	local account = getPlayerAccount(source);
	if not account then return; end
	if (getElementData(source,"isDead")) then return; end
	triggerClientEvent(source, "SpawnPanelSelect", source);
	triggerClientEvent(source, "Timeshchie", source);

	if (headshot == true) then
		setPedHeadless(source,true);
	end


	
	triggerClientEvent(source, "hideInventoryManual", source);
	triggerClientEvent(source, "hideInventoryManual2", source);
	setTimer(setElementPosition, 500, 1, source, 6000, 6000, 0);
	--triggerClientEvent(source,"playSoundForClient",source,"death");
	--setElementData(source, "stats.deaths", getElementData(source, "stats.deaths") + 1);
	if (getElementData(source, "alivetime") >= 2) then
		--if not isElementInWater(source) then
			local x,y,z = getElementPosition(source);
			if (getDistanceBetweenPoints3D(x, y, z, 6000, 6000, 0) > 200) then
				local x,y,z = getElementPosition(source);
				local _,_,rotz = getElementRotation(source);
				local skin = getElementModel(source);
				local ped = createPed(skin, x, y, z, rotz);
				local pedCol = createColSphere(x, y, z, 1.5);
				if (headshot == true) then
					setPedHeadless(ped,true);
				end
				killPed(ped);
				setTimer(function(ped, pedCol)
					if isElement(ped) then destroyElement(ped); end
					if isElement(pedCol) then destroyElement(pedCol); end
				end, (15*60000), 1, ped, pedCol);
				attachElements(pedCol, ped, 0, 0, 0);
				setElementData(pedCol, "parent", ped);
				setElementData(pedCol, "playername", getPlayerName(source));
				setElementData(pedCol, "deadman", true);
				setElementData(pedCol, "MAX_Slots", getElementData(source, "MAX_Slots"));
				local time = getRealTime();
				setElementData(pedCol, "deadreason",{"player",getPlayerName(source),"deadplayertext1",weapon,"deadplayertext2","deadplayertext3",time.hour,time.minute,"clocktext"});
				if (pedCol) then
					for _,v in ipairs(playerDataTable) do
						local itemPlus = getElementData(source, v[1]);
						setElementData(pedCol, v[1], itemPlus);
					end
					--local skin = getSkinNameFromID(getElementData(source, "skin"));
					--setElementData(pedCol, skin, getElementData(pedCol, skin) + 1);
					local backpack = getBackpackNameFromSlots(getElementData(source, "MAX_Slots"));
					if backpack == "" then
					else
						setElementData(pedCol, backpack, (getElementData(pedCol, backpack) or 0) + 1);
					end
					local helmet = getElementData(source,"helmet");
					local vest = getElementData(source,"vest");
					if (helmet ~= "") then setElementData(pedCol,helmet,getElementData(pedCol,helmet)+1); end
					if (vest ~= "") then setElementData(pedCol,vest,getElementData(pedCol,vest)+1); end
				end
			end
		--end
	end
	if (killer and killer ~= source and getElementType(killer) == "player") then
		if (getElementData(source, "humanity") >= 1) then
			addPlayerStats(killer, "humanity", math.random(-2500, -1000));
		else
			addPlayerStats(killer, "humanity", math.random(1000, 2500));
		end
		setElementData(killer, "murders", getElementData(killer, "murders") + 1);
		if (getElementData(source, "humanity") <= 0) then
			setElementData(killer, "banditskilled", getElementData(killer, "banditskilled") + 1);
			setElementData(killer, "stats.banditskilled", getElementData(killer, "stats.banditskilled") + 1);
		end
		if (headshot == true) then
			setElementData(killer, "headshots", getElementData(killer, "headshots") + 1);
		end
		setElementData(killer,"zombieskilled",getElementData(killer,"zombieskilled")+getElementData(source,"zombieskilled"))
		triggerClientEvent("displayClientInfo", root, getPlayerName(source):gsub("#%x%x%x%x%x%x", ""), 255, 255, 255, 3, getPlayerName(killer):gsub("#%x%x%x%x%x%x", ""));
	else
		triggerClientEvent("displayClientInfo", root, getPlayerName(source):gsub("#%x%x%x%x%x%x", ""), 255, 255, 255, 2);
	end
	for _,v in ipairs({1,2,3,4,5,6,7,8}) do
		setElementData(source,"show_"..v,true)
	end
	--triggerClientEvent(source, "SpawnPanelSelect", source);
	setTimer(setElementPosition, 500, 1, source, 6000, 6000, 0);
	
	setAccountData(account, "isDead", true);
	setElementData(source, "isDead", true);
	--setTimer(spawnDayZPlayer, configVar.respawntime*1000+1000, 1, source);
end);


addCommandHandler("fz",
function ( thePlayer, command )
 if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) > 0 then
	if getElementData(thePlayer,"fzmode") == true then
		setElementData(thePlayer,"fzmode",nil)
		outputChatBox("#ff0000Shoma Ba Movafaghiat Halate Fozoli Ro Off Kardid!", thePlayer, 255, 255, 255, true)
	else
		setElementData(thePlayer,"fzmode",true)
		outputChatBox("#00ff00Shoma Ba Movafaghiat Halate Fozoli Ro On Kardid!", thePlayer, 255, 255, 255, true)
	end
 end
end)


addEventHandler("onPlayerQuit", root, function()
	local account = getPlayerAccount(source)
	setAccountData(account,"cloth0",getElementData(source,"cloth0") or 0)
	setAccountData(account,"cloth1",getElementData(source,"cloth1") or 0)
	setAccountData(account,"cloth2",getElementData(source,"cloth2") or 0)
	setAccountData(account,"cloth3",getElementData(source,"cloth3") or 0)
	setAccountData(account,"cloth15",getElementData(source,"cloth15") or -1)
	setAccountData(account,"cloth16",getElementData(source,"cloth16") or -1)
	savePlayerData(source);
	savePlayerData2(source);
	savePlayerSafeCodes(source);
end);

addEventHandler("onResourceStop", root, function()
	for _,v in pairs(getElementsByType("player")) do
		savePlayerData(v);
		savePlayerData2(v);
		savePlayerSafeCodes(v);
	end
end);

function savePlayerData(player)
	local account = getPlayerAccount(player);
	if account then
		for _,v in ipairs(playerDataTable) do
			setAccountData(account, v[1], getElementData(player, v[1]));
		end
		local x,y,z = getElementPosition(player);
		setAccountData(account, "last_x", x);
		setAccountData(account, "last_y", y);
		setAccountData(account, "last_z", z);
	end
end

function savePlayerData2(player)
	local account = getPlayerAccount(player);
	if (account) then
		for _,v in ipairs(playerData2Table) do
			setAccountData(account,v[1],getElementData(player,v[1]));
		end
	end
end

function savePlayerSafeCodes(player)
	local account = getPlayerAccount(player);
	if (account) then
		for _,v in ipairs(getElementsByType("colshape")) do
			if (getElementData(v,"item4") and getElementData(v,"id")) then
				local safe_id = getElementData(v,"id");
				local safe_code = getElementData(v,safe_id);
				local player_code = getElementData(player,safe_id)
				if (player_code == safe_code) then
					setAccountData(account,safe_id,player_code);
				else
					setAccountData(account,safe_id,false);
				end
			end
		end
	end
end
--[[
function loadPlayerSafeCodes(player)
	local account = getPlayerAccount(player);
	if (account) then
		for _,v in pairs(getAllAccountData(account)) do
			local data = _;
			local value = v;
			for _,v in ipairs(getElementsByType("colshape")) do
				if (getElementData(v,"item4")) then
					local safe_id = getElementData(v,"id");
					local safe_code = getElementData(v,safe_id);
					if (safe_code == "raided") then
						setAccountData(account,safe_id,false);
					elseif (string.find(data,safe_id)) then
						setElementData(player,data,value);
					end
				end
			end
		end
	end
end]]

function checkBuggedAccont(player)
	if isElement(player) then
		if not isGuestAccount(getPlayerAccount(player)) then
			if getElementData(player, "logedin") then
				if (getElementModel(player) == 20) then
					removeBackpack(player);
					removeHelmet(player);
					removeVest(player);
					removeWeaponBack(player);
					removeWeaponBack2(player);
					removeWeaponReplace(player);
					removeWeaponReplace2(player);
					spawnDayZPlayer(player);
					outputChatBox(getPlayerName(player).."'s account is buggy and has been reset.", getRootElement(), 25, 255, 25);
					return;
				end
				for _,v in ipairs(playerDataTable) do
					if (not getElementData(player,v[1])) then
						setElementData(player,v[1],v[2]);
					end
					if (type(getElementData(player, v[1])) ~= type(v[2])) then
						removeBackpack(player);
						removeHelmet(player);
						removeVest(player);
						removeWeaponBack(player);
						removeWeaponBack2(player);
						removeWeaponReplace(player);
						removeWeaponReplace2(player);
						spawnDayZPlayer(player);
						outputChatBox(getPlayerName(player).."'s account is buggy and has been reset.", getRootElement(), 25, 255, 25);
					end
				end
			end
		end
	end
end

--[[

function checkLevelAccont(player)
	if isElement(player) then
		if getElementData(player, "logedin") then
			local LevelSystem = getElementData(accSys:getPlayerAcc(player), "Level")
			setElementData(player, "Level",LevelSystem)

			local XpSystem = getElementData(accSys:getPlayerAcc(player), "Exp")
			setElementData(player, "Exp",XpSystem)
		end
	end
end
setTimer(checkLevelAccont,1000,0)]]

--[[
addCommandHandler("kill", function(player)
	triggerEvent("kilLDayZPlayer", player);
end);]]

addEventHandler ( "onPlayerWasted", root,function(player)
	triggerEvent("kilLDayZPlayer", player);
end);

