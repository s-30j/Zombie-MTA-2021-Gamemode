local gWindow = {}
local gGrid = {}
local gColumn = {}
local gButton = {}

local lp = getLocalPlayer ()

local screenwidth, screenheight = guiGetScreenSize ()

local font1 = guiCreateFont("files/GOTHIC.ttf", 10)
local font2 = guiCreateFont("files/GOTHIC.ttf", 15)

--> Panel Entekhab Gun For Tamrin <--

windowTamrin = guiCreateWindow(20, 20, 420, 250, "Tabrik", false)
backgr = guiCreateStaticImage(0,0,420,250,"files/back.png",false, windowTamrin)
Neveshte = guiCreateLabel(150, 50, 9999, 99999, "Tabrik Shoma Level Up Shodid", false, backgr)
Neveshte2 = guiCreateLabel(190, 70, 9999, 99999, " + 1 Level", false, backgr)
Neveshte3 = guiCreateLabel(190, 90, 9999, 99999, " + 100 Blood", false, backgr)
guiSetFont(Neveshte,font1)
guiSetFont(Neveshte2,font1)
guiSetFont(Neveshte3,font1)

guiSetProperty(windowTamrin, "Visible", "False")
guiSetProperty(windowTamrin, "AlwaysOnTop", "True")
guiWindowSetSizable(windowTamrin, false)

local font = guiCreateFont("Verdanab.ttf", 9)


function guiTamrinNeshonBede()
		guiSetProperty(windowTamrin, "Visible", "True")
		--showCursor(true)
		playSound ( "files/level_up.mp3", false )
		setTimer(function()
			guiSetProperty(windowTamrin, "Visible", "False")
		end,8000,1)
end
addEvent("TamrinShowPanel",true)
addEventHandler("TamrinShowPanel", getRootElement(), guiTamrinNeshonBede)

addEventHandler("onClientGUIClick", getRootElement(),
function ()
	if source == closee then
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillM4vAk47 then
		triggerServerEvent ( "SkillgM4vAk47", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillDeagle then
		triggerServerEvent ( "Skillggdlgde", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillShutgun then
		triggerServerEvent ( "SkillShutgungg", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillSpaz12 then
		triggerServerEvent ( "Skillssaz112", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillMp5 then
		triggerServerEvent ( "SkillMMp5", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillPistol then
		triggerServerEvent ( "SkillMMColt47p5", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillRifle then
		triggerServerEvent ( "SkillRifllk", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillSawedoff then
		triggerServerEvent ( "SskillSawedoffof", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
		elseif source == skillUzi then
		triggerServerEvent ( "SskilluUuzi", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == Ak47 then
		triggerServerEvent ( "startShootingAk47", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == Deagle then
		triggerServerEvent ( "startShootingDeagle", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == M4 then
		triggerServerEvent ( "startShootingM4", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == Shutgun then
		triggerServerEvent ( "startShootingShutgun", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == Spaz12 then
		triggerServerEvent ( "startShootingSpaz12", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == MP5 then
		triggerServerEvent ( "startShootingMP5", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == Pistol then
		triggerServerEvent ( "startShootingPistol", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	--[[elseif source == Silenced then
		triggerServerEvent ( "startShootingSilenced", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)--]]
	elseif source == Rifle then
		triggerServerEvent ( "startShootingRifle", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == Sawenoff then
		triggerServerEvent ( "startShootingSawed", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	elseif source == Uzi then
		triggerServerEvent ( "startShootingUzi", lp, gun )
		guiSetProperty(windowTamrin, "Visible", "False")
		showCursor(false)
	end
end)


