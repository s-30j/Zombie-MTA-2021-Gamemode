local font = guiCreateFont("Data/font/prototype.ttf", 13)
local font1 = guiCreateFont("Data/font/prototype.ttf", 15)
local font2 = guiCreateFont("Data/font/font.ttf", 20)
local font3 = guiCreateFont("Data/font/GOTHIC.ttf", 14)
local font4 = guiCreateFont("Data/font/GOTHIC.ttf", 13)
local font4R = guiCreateFont("Data/font/GOTHIC.ttf", 14)

local font5 = guiCreateFont("Data/font/GOTHIC.ttf", 11.5)
local font5R = guiCreateFont("Data/font/GOTHIC.ttf", 13.5)
local fontmamoriat = guiCreateFont("Data/font/GOTHIC.ttf", 13)
local fontmamoriatR = guiCreateFont("Data/font/GOTHIC.ttf", 14)
local font6 = guiCreateFont("Data/font/ARIALBD.ttf", 12)
local fontsoon = guiCreateFont("Data/font/GOTHIC.ttf", 16)
local screenW, screenH = guiGetScreenSize()
---------------------

addEvent("PlayDaryaft",true)
addEventHandler("PlayDaryaft",getLocalPlayer(),function(player)
		sound = playSound("Data/sound/daryaft.mp3",false)
		setSoundVolume(sound,0.4)
end)

Window = guiCreateWindow(350, 220, 650, 300, "", false)
guiSetProperty(Window, "Visible", "False")
guiWindowSetSizable(Window, false)
bg = guiCreateStaticImage(5, 25, 650, 300, "Data/bg.png", false, Window)

----------
Tozih = guiCreateLabel(230, 40, 320, 150, "Missions Level 0", false, bg)
guiSetFont(Tozih, font)
Hazine = guiCreateLabel(120, 90, 500, 50, "Shoma Bayad Dar 5 Daghighe 30 Zombie Bokoshid", false, bg)
guiSetFont(Hazine, font5)
guiLabelSetColor(Hazine, 255 , 216 , 45)
---------
StartBbton = guiCreateButton(50, 170, 175, 45, "Start", false, bg)
guiSetProperty(StartBbton, "HoverTextColour", "FF00FF00")
CloseBbton = guiCreateButton(400, 170, 175, 45, "Close", false, bg)
guiSetFont(CloseBbton, font2)
guiSetProperty(CloseBbton, "HoverTextColour", "FFFE0000")
guiSetFont(CloseBbton, font3)
guiSetFont(StartBbton, font3)

--------------------------------------------------

Window2 = guiCreateWindow(350, 220, 650, 300, "", false)
guiSetProperty(Window2, "Visible", "False")
guiWindowSetSizable(Window2, false)
bg2 = guiCreateStaticImage(5, 25, 650, 300, "Data/bg.png", false, Window2)

----------
Tozih = guiCreateLabel(230, 40, 320, 150, "Missions Level 0", false, bg2)
guiSetFont(Tozih, font)
Hazine = guiCreateLabel(180, 90, 500, 50, "Shoma Bayad 4 Ta Soda Bokhorid", false, bg2)
guiSetFont(Hazine, font5)
guiLabelSetColor(Hazine, 255 , 216 , 45)
---------
StartBbton2 = guiCreateButton(50, 170, 175, 45, "Start", false, bg2)
guiSetProperty(StartBbton2, "HoverTextColour", "FF00FF00")
CloseBbton2 = guiCreateButton(400, 170, 175, 45, "Close", false, bg2)
guiSetFont(CloseBbton2, font2)
guiSetProperty(CloseBbton2, "HoverTextColour", "FFFE0000")
guiSetFont(CloseBbton2, font3)
guiSetFont(StartBbton2, font3)

------------------------------------------------------------------

Window3 = guiCreateWindow(350, 220, 650, 300, "", false)
guiSetProperty(Window3, "Visible", "False")
guiWindowSetSizable(Window3, false)
bg3 = guiCreateStaticImage(5, 25, 650, 300, "Data/bg.png", false, Window3)

----------
Tozih = guiCreateLabel(230, 40, 320, 150, "Missions Level 0", false, bg3)
guiSetFont(Tozih, font)
Hazine = guiCreateLabel(140, 90, 500, 50, "Shoma Bayad 10 Zombie Baa Tabar Bokoshid", false, bg3)
guiSetFont(Hazine, font5)
guiLabelSetColor(Hazine, 255 , 216 , 45)
---------
StartBbton3 = guiCreateButton(50, 170, 175, 45, "Start", false, bg3)
guiSetProperty(StartBbton3, "HoverTextColour", "FF00FF00")
CloseBbton3 = guiCreateButton(400, 170, 175, 45, "Close", false, bg3)
guiSetFont(CloseBbton3, font2)
guiSetProperty(CloseBbton3, "HoverTextColour", "FFFE0000")
guiSetFont(CloseBbton3, font3)
guiSetFont(StartBbton3, font3)











windowchallenge = guiCreateWindow(320, 120, 700, 470, "Missions Zombie MTA", false)
challengeimg = guiCreateStaticImage(5,47,680,415,"Data/image/Cup.png",false, windowchallenge)
guiSetProperty(windowchallenge, "AlwaysOnTop", "True")
guiWindowSetSizable(windowchallenge, false)
guiSetVisible(windowchallenge, false)
guiSetProperty(windowchallenge, "CaptionColour", "FFFFFFFF")



--- Tabs ----

Tab11 = guiCreateTabPanel(9, 22, 680, 460, false, windowchallenge)
Tab1 = guiCreateTab("Level 0", Tab11)
Tab2 = guiCreateTab("Level 1", Tab11)
Tab3 = guiCreateTab("Level 2", Tab11)
Tab4 = guiCreateTab("Level 3", Tab11)
Tab5 = guiCreateTab("Level 4", Tab11)
Tab6 = guiCreateTab("Level 5", Tab11)
Tab7 = guiCreateTab("Level 6", Tab11)
Tab8 = guiCreateTab("Level 7", Tab11)
Tab9 = guiCreateTab("Level 8", Tab11)
Tab10 = guiCreateTab("Level 9", Tab11)
Tab11 = guiCreateTab("Level 10", Tab11)


local font111 = guiCreateFont("Data/font/prototype.ttf", 11)
local font211 = guiCreateFont("Data/font/font.ttf", 13)
local font311 = guiCreateFont("Data/font/GOTHIC.ttf", 11)


scrollchallenge = guiCreateScrollPane(10, 25, 664, 395, false, Tab1)--- scroll
Close = guiCreateLabel(0.88, 0.00, 0.08, 0.04, "Close", true, windowchallenge)
guiSetFont(Close, "default-bold-small")
guiSetProperty(Close, "ClippedByParent", "False")
guiSetProperty(Close, "AlwaysOnTop", "True")
guiSetProperty(Close, "RiseOnClick", "False")
guiLabelSetHorizontalAlign(Close, "center", false)
guiLabelSetVerticalAlign(Close, "center")



goldlable2 = guiCreateLabel(300, 130, 360, 50, "Missions Level 0", false, scrollchallenge)
guiLabelSetColor(goldlable2, 70 , 194 , 235 )
guiSetFont(goldlable2, font6)
---------------------------------------------------
labal111 = guiCreateLabel(40, 185, 360, 50, "Zombie Kill", false, scrollchallenge)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(50, 230, 360, 50, "30 Ta Zombie Bokosh", false, scrollchallenge)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 265, 360, 50, "Jayeze 40 Exp ", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 265, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
---------------------------------------------------
labal111 = guiCreateLabel(40, 325, 360, 50, "Soda", false, scrollchallenge)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(50, 360, 360, 50,"4 Soda Bokhor", false, scrollchallenge)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100,385, 360, 50, "Jayeze 20 Exp ", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 385, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
---------------------------------------------------
labal111 = guiCreateLabel(40, 455, 360, 50, "Kill Zombie", false, scrollchallenge)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(50, 490, 360, 50,"10 Zombie Bokosh Ba Tabar", false, scrollchallenge)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100,525, 360, 50, "Jayeze 25 Exp ", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 525, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)


khat1 = guiCreateLabel(30, 160, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat1, 100 , 100 , 100)
khat2 = guiCreateLabel(30, 295, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat2, 100 , 100 , 100)
khat3 = guiCreateLabel(30, 425, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat3, 100 , 100 , 100)
khat4 = guiCreateLabel(30, 555, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat4, 100 , 100 , 100)


StartDokme1 = guiCreateButton(535, 214, 100, 35, "Start", false, scrollchallenge)
guiSetProperty(StartDokme1, "NormalTextColour", "FF00FF00")
guiSetFont(StartDokme1, font3)

StartDokme2 = guiCreateButton(535, 350, 100, 35, "Start", false, scrollchallenge)
guiSetProperty(StartDokme2, "NormalTextColour", "FF00FF00")
guiSetFont(StartDokme2, font3)

StartDokme3 = guiCreateButton(535, 480, 100, 35, "Start", false, scrollchallenge)
guiSetProperty(StartDokme3, "NormalTextColour", "FF00FF00")
guiSetFont(StartDokme3, font3)


--> Bad Az Click Jayze Bede
addEventHandler("onClientGUIClick", getRootElement(),
function ()
	if source == Close then
		showCursor(false)
		guiSetProperty(windowchallenge, "Visible", "False")
		guiSetProperty(Window, "Visible", "False")
	elseif source == CloseBbton then
		showCursor(false)
		guiSetProperty(windowchallenge, "Visible", "False")
		guiSetProperty(Window, "Visible", "False")
	elseif source == StartDokme1 then
		guiSetProperty(Window, "Visible", "True")
		guiSetProperty(windowchallenge, "Visible", "False")
	elseif source == StartBbton then
		showCursor(false)
		guiSetProperty(windowchallenge, "Visible", "False")
		guiSetProperty(Window, "Visible", "False")
		triggerServerEvent("Startmms1", getLocalPlayer(), getLocalPlayer() )
	elseif source == StartDokme2 then
		guiSetProperty(Window2, "Visible", "True")
		guiSetProperty(Window, "Visible", "False")
		guiSetProperty(windowchallenge, "Visible", "False")
	elseif source == CloseBbton2 then
		showCursor(false)
		guiSetProperty(windowchallenge, "Visible", "False")
		guiSetProperty(Window2, "Visible", "False")
		guiSetProperty(Window, "Visible", "False")
	elseif source == StartBbton2 then
		showCursor(false)
		guiSetProperty(windowchallenge, "Visible", "False")
		guiSetProperty(Window2, "Visible", "False")
		guiSetProperty(Window, "Visible", "False")
		triggerServerEvent("Startmms2", getLocalPlayer(), getLocalPlayer() )
	elseif source == StartDokme3 then
		guiSetProperty(Window3, "Visible", "True")
		guiSetProperty(Window, "Visible", "False")
		guiSetProperty(Window2, "Visible", "False")
		guiSetProperty(windowchallenge, "Visible", "False")
	elseif source == CloseBbton3 then
		showCursor(false)
		guiSetProperty(windowchallenge, "Visible", "False")
		guiSetProperty(Window3, "Visible", "False")
		guiSetProperty(Window2, "Visible", "False")
		guiSetProperty(Window, "Visible", "False")
	elseif source == StartBbton3 then
		showCursor(false)
		guiSetProperty(windowchallenge, "Visible", "False")
		guiSetProperty(Window2, "Visible", "False")
		guiSetProperty(Window, "Visible", "False")
		guiSetProperty(Window3, "Visible", "False")
		triggerServerEvent("Startmms3", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft5 then
	elseif source == daryaft6 then
	elseif source == daryaft7 then
	elseif source == daryaft8 then
	elseif source == daryaft9 then
	elseif source == daryaft10 then
	elseif source == daryaft11 then
	elseif source == daryaft12 then
	elseif source == daryaft13 then
	elseif source == daryaft14 then
	elseif source == daryaft15 then
	elseif source == daryaft16 then
	elseif source == daryaft17 then
	elseif source == daryaft18 then
	end
end)





--|||--------------------------------------|||--
local myMarker = createMarker( 1062.234375 ,-323.6787109375 ,73.0021875 , 'cylinder',1,255,20,20,255 ) -- create myMarker
setElementInterior ( myMarker, 0 )
setElementDimension(myMarker, 0 )


function MarkerHit ( Hit, matchingDimension )
	if Hit == getLocalPlayer() then
        if (Hit and getElementType(Hit) == "player" and not isPedInVehicle(Hit)) then
			guiSetProperty(windowchallenge, "Visible", "True")
		    showCursor(true)
		end
	end
end
addEventHandler ( "onClientMarkerHit", myMarker, MarkerHit )
