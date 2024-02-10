function convertNumber( number )  
	local formatted = number  
	while true do      
		formatted, k = string.gsub( formatted, "^(-?%d+)(%d%d%d)", '%1,%2' )    
		if ( k==0 ) then      
			break   
		end  
	end  
	return formatted
end

local screenW, screenH = guiGetScreenSize()
local font0_font = guiCreateFont("Data/Fonts/prototype.ttf", 25)
local font4_font = guiCreateFont("Data/Fonts/fontitem.ttf", 17)
local font1_font = guiCreateFont("Data/Fonts/prototype.ttf", 16)
local font2_font = guiCreateFont("Data/Fonts/prototype.ttf", 18)
local font3_font = guiCreateFont("Data/Fonts/prototype.ttf", 16)
local font5_font = guiCreateFont("Data/Fonts/prototype.ttf", 10)
local font6_font = guiCreateFont("Data/Fonts/farsi.ttf", 20)
local font7_font = guiCreateFont("Data/Fonts/NWGTHC.ttf", 15)
local font8_font = guiCreateFont("Data/Fonts/prototype.ttf", 17)


        tabletbody = guiCreateStaticImage(0, 0 , 2000, 1800, "Data/Backgrounds/body.png", false)
		guiSetProperty( tabletbody, "Visible", "False")
		
        tabletbg = guiCreateStaticImage(100, 90, 8000, 8000, "Data/Backgrounds/tablet-bg.jpg", false, tabletbody)

		itembg = guiCreateStaticImage(0, 80, 8000, 9999, "Data/Backgrounds/bgpage.png", false, tabletbg) ---- backgrund meshki
		guiSetProperty( itembg, "Visible", "False")		
		
		
		Los_SanTos = guiCreateStaticImage(295, 299, 200, 200, "Data/back.png", false, itembg)		
		LosSanTos = guiCreateLabel(310, 370, 330, 37, "Los SanTos", false, itembg)
		guiSetFont(LosSanTos, font0_font)
		guiLabelSetColor(LosSanTos, 255, 255, 255)

		San_Fierro = guiCreateStaticImage(0, 20, 220, 200, "Data/back.png", false, itembg)--- carslot
		SanFierro = guiCreateLabel(30, 90, 330, 37, "San Fierro", false, itembg)
		guiSetFont(SanFierro, font0_font)
		guiLabelSetColor(SanFierro, 255, 255, 255)

		Red_County = guiCreateStaticImage(295, 20, 200, 200, "Data/back.png", false, itembg)--- carslot
		RedCounty = guiCreateLabel(300, 90, 330, 37, "Red County", false, itembg)
		guiSetFont(RedCounty, font0_font)
		guiLabelSetColor(RedCounty, 255, 255, 255)

		Bone_County = guiCreateStaticImage(592, 20, 220, 200, "Data/back.png", false, itembg)--- carslot
		BoneCounty = guiCreateLabel(600, 90, 330, 37, "Bone County", false, itembg)
		guiSetFont(BoneCounty, font0_font)
		guiLabelSetColor(BoneCounty, 255, 255, 255)
		
		Las_Venruras = guiCreateStaticImage(0, 299, 220, 200, "Data/back.png", false, itembg)		
		LasVenruras = guiCreateLabel(5, 370, 330, 37, "Las Venruras", false, itembg)
		guiSetFont(LasVenruras, font0_font)
		guiLabelSetColor(LasVenruras, 255, 255, 255)

		Filnt_County = guiCreateStaticImage(590, 299, 220, 200, "Data/back.png", false, itembg)		
		FilntCounty = guiCreateLabel(600, 370, 330, 37, "Filnt County", false, itembg)
		guiSetFont(FilntCounty, font0_font)
		guiLabelSetColor(FilntCounty, 255, 255, 255)
	
		

		Whetstone = guiCreateStaticImage(900, 299, 220, 200, "Data/back.png", false, itembg)		
		Whetstone2 = guiCreateLabel(920, 370, 330, 37, "Whetstone", false, itembg)
		guiSetFont(Whetstone2, font0_font)
		guiLabelSetColor(Whetstone2, 255, 255, 255)

function Timeshchie()
	setTimer(
	function()
		local windowState = guiGetProperty(tabletbody, "Visible")
	    if windowState == "True" then

			guiSetProperty(tabletbody, "Visible", "False")
			guiSetProperty(tabletbg, "Visible", "False")
			guiSetProperty(itembg, "Visible", "False")
			showCursor(false)
			stopSound(deadshod);
			triggerServerEvent("TimerTamomShod", getLocalPlayer(), getLocalPlayer())
		end
	end,10000,1)
end
addEvent("Timeshchie",true)
addEventHandler("Timeshchie",root,Timeshchie)


function biatosh()
        local windowState = guiGetProperty(tabletbody, "Visible")
	   -- if windowState == "False" then
		    guiSetProperty(tabletbody, "Visible", "True")
			guiSetProperty(tabletbg, "Visible", "True")
			guiSetProperty(itembg, "Visible", "True")
		    showCursor(true)
			local deadshod = playSound("sounds/death.mp3",false);

			Los_SanTos = guiCreateStaticImage(295, 299, 200, 200, "Data/back.png", false, itembg)		
			LosSanTos = guiCreateLabel(310, 370, 330, 37, "Los SanTos", false, itembg)
			guiSetFont(LosSanTos, font0_font)
			guiLabelSetColor(LosSanTos, 255, 255, 255)

			San_Fierro = guiCreateStaticImage(0, 20, 200, 200, "Data/back.png", false, itembg)--- carslot
			SanFierro = guiCreateLabel(30, 90, 330, 37, "San Fierro", false, itembg)
			guiSetFont(SanFierro, font0_font)
			guiLabelSetColor(SanFierro, 255, 255, 255)

			Red_County = guiCreateStaticImage(295, 20, 200, 200, "Data/back.png", false, itembg)--- carslot
			RedCounty = guiCreateLabel(300, 90, 330, 37, "Red County", false, itembg)
			guiSetFont(RedCounty, font0_font)
			guiLabelSetColor(RedCounty, 255, 255, 255)

			Bone_County = guiCreateStaticImage(592, 20, 220, 200, "Data/back.png", false, itembg)--- carslot
			BoneCounty = guiCreateLabel(600, 90, 330, 37, "Bone County", false, itembg)
			guiSetFont(BoneCounty, font0_font)
			guiLabelSetColor(BoneCounty, 255, 255, 255)
		
			Las_Venruras = guiCreateStaticImage(0, 299, 220, 200, "Data/back.png", false, itembg)		
			LasVenruras = guiCreateLabel(5, 370, 330, 37, "Las Venturas", false, itembg)
			guiSetFont(LasVenruras, font0_font)
			guiLabelSetColor(LasVenruras, 255, 255, 255)

			Filnt_County = guiCreateStaticImage(590, 299, 220, 200, "Data/back.png", false, itembg)		
			FilntCounty = guiCreateLabel(600, 370, 330, 37, "Filnt County", false, itembg)
			guiSetFont(FilntCounty, font0_font)
			guiLabelSetColor(FilntCounty, 255, 255, 255)

			Whetstone = guiCreateStaticImage(900, 299, 220, 200, "Data/back.png", false, itembg)		
			Whetstone2 = guiCreateLabel(920, 370, 330, 37, "Whetstone", false, itembg)
			guiSetFont(Whetstone2, font0_font)
			guiLabelSetColor(Whetstone2, 255, 255, 255)

    	--[[else
		guiSetVisible ( WindowChange2, false )	
		guiSetInputEnabled( false )
	    guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		guiSetProperty(itembtn, "Visible", "False")
		guiSetProperty(shopbg, "Visible", "False")
		guiSetProperty( settingsbg, "Visible", "False")
		guiSetProperty( emkanatbg, "Visible", "False")
		guiSetProperty( soalatbg, "Visible", "False")
		guiSetProperty(shopbtn, "Visible", "True")
		guiSetProperty(goldbg, "Visible", "False")
		guiSetProperty(goldbtn, "Visible", "False")
		guiSetProperty( carslotbg, "Visible", "False")
		guiSetProperty( carslotbg2, "Visible", "False")
		guiSetProperty( freedombg, "Visible", "False")
		guiSetProperty( yekmilcashbg, "Visible", "False")
		guiSetProperty( pakfpbg, "Visible", "False")
		guiSetProperty( cnamebg, "Visible", "False")
		guiSetProperty( robpointbg, "Visible", "False")
		guiSetProperty( ChangeNickbg, "Visible", "False")
		guiSetProperty(silverbg, "Visible", "False")
		guiSetProperty(silverbtn, "Visible", "False")
		guiSetProperty( pgold15bg, "Visible", "False")
		guiSetProperty( pgold7bg, "Visible", "False")
		guiSetProperty( pgold1mahbg, "Visible", "False")
		guiSetProperty( pgold3mahbg, "Visible", "False")
		guiSetProperty( pgold6mahbg, "Visible", "False")
		guiSetProperty( pgold1salbg, "Visible", "False")
		guiSetProperty( psilver15bg, "Visible", "False")
		guiSetProperty( psilver7bg, "Visible", "False")
		guiSetProperty( psilver1mahbg, "Visible", "False")
		guiSetProperty( pbronze15bg, "Visible", "False")
		guiSetProperty( pbronze7bg, "Visible", "False")
		guiSetProperty( pbronze1mahbg, "Visible", "False")
		guiSetProperty(bronzebg, "Visible", "False")
		guiSetProperty( pinfoebg, "Visible", "False")
		guiSetProperty(bronzebtn, "Visible", "False")
		guiSetProperty(settingsbtn, "Visible", "True")
            showCursor(false)
			guiSetInputEnabled( false )
			stopSound(deadshod);
        end]]
end

--addEvent("SpawnPanelSelect",true)
--addEventHandler("SpawnPanelSelect",root,biatosh)

addEvent("SpawnPanelSelect",true)
addEventHandler("SpawnPanelSelect",root,biatosh)
 
setTimer(
function()
	local vida = getElementHealth( localPlayer )
	if vida == 0 then
		triggerServerEvent("NobBugShode", getLocalPlayer(), getLocalPlayer())
	end
end,1500,0)

setTimer(
function()
	local vida = getElementData(localPlayer, "blood")
	if vida < 0 then
		triggerServerEvent("NobBugShode", getLocalPlayer(), getLocalPlayer())
	end
end,10500,0)


addEventHandler("onClientGUIClick", getRootElement(),
function ()
	if source == Whetstone then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected7", getLocalPlayer(), getLocalPlayer())
	elseif source == Whetstone2 then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected7", getLocalPlayer(), getLocalPlayer())
	elseif source == Filnt_County then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected6", getLocalPlayer(), getLocalPlayer())
	elseif source == FilntCounty then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected6", getLocalPlayer(), getLocalPlayer())
	elseif source == Las_Venruras then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected5", getLocalPlayer(), getLocalPlayer())
	elseif source == LasVenruras then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected5", getLocalPlayer(), getLocalPlayer())
	elseif source == Bone_County then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected4", getLocalPlayer(), getLocalPlayer())
	elseif source == BoneCounty then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected4", getLocalPlayer(), getLocalPlayer())
	elseif source == LosSanTos then
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected3", getLocalPlayer(), getLocalPlayer())
	elseif source == Los_SanTos then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected3", getLocalPlayer(), getLocalPlayer())
	elseif source == Red_County then
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected2", getLocalPlayer(), getLocalPlayer()) 
	elseif source == RedCounty then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected2", getLocalPlayer(), getLocalPlayer())
	elseif source == San_Fierro then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected1", getLocalPlayer(), getLocalPlayer())
	elseif source == SanFierro then 
		guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(tabletbg, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		showCursor(false)
		stopSound(deadshod);
		triggerServerEvent("SpawnSelected1", getLocalPlayer(), getLocalPlayer())
	end
end)











































































































addEvent("BasteSheKoleTablet",true)
addEventHandler("BasteSheKoleTablet",getLocalPlayer(),function(player)
		guiSetVisible ( WindowChange2, false )	
		guiSetInputEnabled( false )
	    guiSetProperty(tabletbody, "Visible", "False")
		guiSetProperty(itembg, "Visible", "False")
		guiSetProperty(itembtn, "Visible", "False")
		guiSetProperty(shopbg, "Visible", "False")
		guiSetProperty( settingsbg, "Visible", "False")
		guiSetProperty( emkanatbg, "Visible", "False")
		guiSetProperty( soalatbg, "Visible", "False")
		guiSetProperty(shopbtn, "Visible", "True")
		guiSetProperty(goldbg, "Visible", "False")
		guiSetProperty(goldbtn, "Visible", "False")
		guiSetProperty( carslotbg, "Visible", "False")
		guiSetProperty( carslotbg2, "Visible", "False")
		guiSetProperty( freedombg, "Visible", "False")
		guiSetProperty( yekmilcashbg, "Visible", "False")
		guiSetProperty( pakfpbg, "Visible", "False")
		guiSetProperty( cnamebg, "Visible", "False")
		guiSetProperty( robpointbg, "Visible", "False")
		guiSetProperty( ChangeNickbg, "Visible", "False")
		guiSetProperty(silverbg, "Visible", "False")
		guiSetProperty(silverbtn, "Visible", "False")
		guiSetProperty( pgold15bg, "Visible", "False")
		guiSetProperty( pgold7bg, "Visible", "False")
		guiSetProperty( pgold1mahbg, "Visible", "False")
		guiSetProperty( pgold3mahbg, "Visible", "False")
		guiSetProperty( pgold6mahbg, "Visible", "False")
		guiSetProperty( pgold1salbg, "Visible", "False")
		guiSetProperty( psilver15bg, "Visible", "False")
		guiSetProperty( psilver7bg, "Visible", "False")
		guiSetProperty( psilver1mahbg, "Visible", "False")
		guiSetProperty( pbronze15bg, "Visible", "False")
		guiSetProperty( pbronze7bg, "Visible", "False")
		guiSetProperty( pbronze1mahbg, "Visible", "False")
		guiSetProperty(bronzebg, "Visible", "False")
		guiSetProperty( pinfoebg, "Visible", "False")
		guiSetProperty(bronzebtn, "Visible", "False")
		guiSetProperty(settingsbtn, "Visible", "True")
		showCursor(false)
end)

