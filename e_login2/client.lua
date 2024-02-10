local screenW, screenH = guiGetScreenSize()
--Login Page
NowBg = 1 --math.random( 1 , 15 )
--Music = playSound("Data/Sounds/Music"..NowBg..".mp3",true)
Music = playSound("Images/M.mp3",true)
setSoundVolume(Music,0.5)
NextBG = 1
Background = guiCreateStaticImage(0, 0, screenW, screenH, "Images/BG"..NowBg..".jpg", false)

showCursor(true)
showChat(false)

local font0_font = guiCreateFont("fonts/regular.ttf", 60)
local font1_font = guiCreateFont("fonts/myriad.ttf", 30)
local Farsi = guiCreateFont("fonts/Farsi.ttf", 20)


		--Background = guiCreateStaticImage(0, 0 , 1680, 1200, "images/background.png", false)
		Menu = guiCreateStaticImage(400, 90, 500, 500, "images/main.png", false, Background)

		Playc = guiCreateStaticImage(100, 70, 300, 100, "images/c.png", false, Menu)
		Play = guiCreateLabel(180,70, 330, 130, "Play", false, Menu)
		guiSetFont(Play, font0_font)
		guiLabelSetColor(Play, 255, 255, 255)

		Helpc = guiCreateStaticImage(100, 190, 300, 100, "images/c.png", false, Menu)
		Help = guiCreateLabel(180,190, 330, 130, "Help", false, Menu)
		guiSetFont(Help, font0_font)
		guiLabelSetColor(Help, 255, 255, 255)

		Exitc = guiCreateStaticImage(100, 310, 300, 100, "images/c.png", false, Menu)
		Exit = guiCreateLabel(180,310, 330, 130, "Exit", false, Menu)
		guiSetFont(Exit, font0_font)
		guiLabelSetColor(Exit, 255, 255, 255)

		HelpTable = guiCreateStaticImage(10, 50, 1300, 700, "images/main.png", false, Background)
		guiSetProperty( HelpTable, "Visible", "False")

		--[[Help1 = guiCreateLabel(140,90, 99999, 9999, "1 _ Painkiller   براي درمان توهم", false, HelpTable)
		guiSetFont(Help1, Farsi)
		guiLabelSetColor(Help1, 255, 255, 255)
		" سرور mta زامبی"
		Help2 = guiCreateLabel(140,130, 99999, 9999, "2 _ Bandage   براي درمان خون ريزي", false, HelpTable)
		guiSetFont(Help2, Farsi)
		guiLabelSetColor(Help2, 255, 255, 255)

		Help3 = guiCreateLabel(140,170, 99999, 9999, "3 _ Morohine براي درمان شکستگي استخوان", false, HelpTable)
		guiSetFont(Help3, Farsi)
		guiLabelSetColor(Help3, 255, 255, 255)]]

		Exitc = guiCreateStaticImage(100, 540, 180, 70, "images/c.png", false, HelpTable)
		backhelp = guiCreateLabel(140,550, 99999, 9999, "Back", false, HelpTable)
		guiSetFont(backhelp, font1_font)
		guiLabelSetColor(backhelp, 255, 255, 255)
		
	--  tabletbody = guiCreateStaticImage(0, 0 , 2000, 1800, "Data/Backgrounds/body.png", false)
	--  guiSetProperty( tabletbody, "Visible", "False")

	
addEventHandler("onClientGUIClick", getRootElement(),
function ()
	if source == backhelp then 
		guiSetProperty(HelpTable, "Visible", "False")
		guiSetProperty(Menu, "Visible", "True")
		guiSetProperty(Play, "Visible", "True")
		guiSetProperty(Help, "Visible", "True")
		guiSetProperty(Exit, "Visible", "True")
	elseif source == Play then 
		triggerServerEvent("loginPlayerSerial", getLocalPlayer(), getLocalPlayer())
		guiSetProperty(Background, "Visible", "False")
		guiSetProperty(Menu, "Visible", "False")
		guiSetProperty(Play, "Visible", "False")
		guiSetProperty(Help, "Visible", "False")
		guiSetProperty(Exit, "Visible", "False")
		destroyElement( Music )
		showCursor(false)
		showChat(true)
	elseif source == Playc then 
		triggerServerEvent("loginPlayerSerial", getLocalPlayer(), getLocalPlayer())
		guiSetProperty(Background, "Visible", "False")
		guiSetProperty(Menu, "Visible", "False")
		guiSetProperty(Play, "Visible", "False")
		guiSetProperty(Help, "Visible", "False")
		guiSetProperty(Exit, "Visible", "False")
		destroyElement( Music )
		showCursor(false)
		showChat(true)
	elseif source == Help then 
		guiSetProperty(Menu, "Visible", "False")
		guiSetProperty(Play, "Visible", "False")
		guiSetProperty(Help, "Visible", "False")
		guiSetProperty(Exit, "Visible", "False")
		guiSetProperty(HelpTable, "Visible", "True")
	elseif source == Helpc then 
		guiSetProperty(Menu, "Visible", "False")
		guiSetProperty(Play, "Visible", "False")
		guiSetProperty(Help, "Visible", "False")
		guiSetProperty(Exit, "Visible", "False")
		guiSetProperty(HelpTable, "Visible", "True")
	elseif source == Exit then 
		triggerServerEvent("KickForExit", getLocalPlayer(), getLocalPlayer())
	elseif source == Exitc then 
		triggerServerEvent("KickForExit", getLocalPlayer(), getLocalPlayer())
	end
end)



--[[
setTimer ( function()
	if guiGetProperty(Background, "Visible") == "True" then
		NextBG = math.random( 1 , 15 )
		guiStaticImageLoadImage ( Background, "Images/BG"..NextBG..".jpg" )
		--addEventHandler ( "onClientRender", root, HideKon )
	--elseif guiGetProperty(RegisterPageBg, "Visible") == "True" then
	--	NextBG = math.random( 1 , 15 )
	--	guiStaticImageLoadImage ( BG1, "Data/Images/BG"..NextBG..".jpg" )
	--	addEventHandler ( "onClientRender", root, HideKon )
	end
end, 10000, 0 )]]


