local screenW, screenH = guiGetScreenSize()
WelcomeFormBG = guiCreateStaticImage((screenW - 791) / 2, (screenH - 536) / 2, 791, 536, "Images/WelcomeForm.png", false)
RealName = guiCreateEdit(265, 204, 249, 50, "   Name", false, WelcomeFormBG)
Age = guiCreateEdit(275, 359, 235, 50, "", false, WelcomeFormBG)
Submit = guiCreateStaticImage(300, 407, 184, 120, "Images/Click.png", false, WelcomeFormBG)
guiSetVisible(WelcomeFormBG, false)

addEventHandler("onClientGUIClick", getRootElement(),
function ()
	if source == Submit then
		if guiGetText(RealName) ~= "   Name" and guiGetText(RealName) ~= "Name" and guiGetText(RealName) ~= "  Name" and guiGetText(RealName) ~= " Name" then
			if type( guiGetText(RealName) ) == "string" and guiGetText(RealName) ~= "" then
				if type( tonumber(guiGetText(Age)) ) == "number" then
					triggerServerEvent("SendPlayerDataToServer", getLocalPlayer(), getLocalPlayer() , tostring(guiGetText(RealName)), tonumber(guiGetText(Age)))
			else
				exports["notf"]:addNotification( "Sen Khod Ra Vared Konid" , 'error')	
			end
			else
				--exports["notf"]:addNotification(client, "Name Ra Vared Konid" , 'error')
				exports["notf"]:addNotification( "Name Ra Vared Konid" , 'error' )	
			end
		else
			--exports["notf"]:addNotification(client, "Name Ra Vared Konid" , 'error')
			exports["notf"]:addNotification( "Name Ra Vared Konid" , 'error' )	
		end
	end
end)

addEvent("CloseRegisterFormPannel",true)
addEventHandler("CloseRegisterFormPannel", root,
function (root, PBalance, CardNum)
    if ( root == getLocalPlayer() ) then
		guiSetVisible(WelcomeFormBG, false)
		showCursor(false)
    end
end)


function HideLogo()
	setCameraTarget(getLocalPlayer())
	fadeCamera(true, 1.5)
	guiSetVisible(WelcomeFormBG, true)
	showChat(true)
	showCursor(true)
	removeEventHandler( "onClientRender", root, HideLogo )
end

addEvent("StartWelcome",true)
addEventHandler("StartWelcome",getRootElement(),
function (client)
	if client == getLocalPlayer() then
		playSound("Welcome.mp3", false)
		addEventHandler ( "onClientRender", root, HideLogo )
	end
end)