screenWidth, screenHeight = guiGetScreenSize( )

itemsPacks = {
    {"Head", 1, 0, 16 },
	{"Shirt", 0, 0, 67 },
	{"Trousers", 2, 0, 44 },
	{"Shoes", 3, 0, 37 },
	{"Hats", 16, -1, 56 },
	{"Glasses", 15, -1,16 },
}

selectedClothes = {}
 
function showClothWindow()
	if not isElement ( clothWindow ) then
		showCursor (true)
		clothWindow = guiCreateWindow(0.20*screenWidth, 0.41*screenHeight, 220, 70+#itemsPacks*25, "CHARACTER", false)
		--clothWindow = guiCreateWindow(0.07, 0.41, 0.21, 0.35, "", true)
        guiWindowSetSizable(clothWindow, false)
		setCameraMatrix(-1597.8332519531, -1622.2266845703, 37.109142303467, -1695.806640625, -1605.2043457031, 26.55163192749)
		addEventHandler('onClientRender', root, rotateTestPed )
		addEventHandler('onClientRender', root, renderRotateText )
		bindKey ( "mouse1", "down", setPrevX )
		x_prev = nil
		for i, v in ipairs ( itemsPacks ) do
			local rub_label = guiCreateLabel(11, 30+25*(i-1), 51, 20, v[1], false, clothWindow)
			local run_back_b = guiCreateButton(68, 30+25*(i-1), 30, 18, "<<", false, clothWindow)
			guiSetProperty(run_back_b, "NormalTextColour", "FFAAAAAA")
			local rub_back = guiCreateButton(100, 30+25*(i-1), 30, 18, "<", false, clothWindow)
			guiSetProperty(rub_back, "NormalTextColour", "FFAAAAAA")
			local rub_forw = guiCreateButton(150, 30+25*(i-1), 30, 18, ">", false, clothWindow)
			guiSetProperty(rub_forw, "NormalTextColour", "FFAAAAAA")
			local rub_forw_b = guiCreateButton(183, 30+25*(i-1), 30, 18, ">>", false, clothWindow)
			guiSetProperty(rub_forw_b, "NormalTextColour", "FFAAAAAA")
			local cur_cloth = getElementData ( localPlayer, "cloth"..v[2]) or v[3]
			local rub_num = guiCreateLabel(130, 30+25*(i-1), 22, 18, cur_cloth, false, clothWindow)
			guiLabelSetHorizontalAlign(rub_num, "center", false)    
			setElementData ( run_back_b, "clothButBackB", true )
			setElementData ( rub_forw_b, "clothButForwB", true )
			setElementData ( rub_back, "clothButBack", true )
			setElementData ( rub_forw, "clothButForw", true )
			setElementData ( run_back_b, "clothButID", i )
			setElementData ( rub_forw_b, "clothButID", i )
			setElementData ( rub_back, "clothButID", i )
			setElementData ( rub_forw, "clothButID", i )
			table.insert ( selectedClothes, { rub_num, cur_cloth, v[2], v[3], v[4] } )
			setPedClothes ( testPed, v[2], cur_cloth )
		end
		button_save = guiCreateButton(13, 30+#itemsPacks*25, 242, 23,"Save",false,clothWindow)
		--button_back = guiCreateButton(13, 55+#itemsPacks*25, 242, 23,"Back",false,clothWindow)
		
		addEventHandler("onClientGUIClick", button_save, allowCloth )
		--addEventHandler("onClientGUIClick", button_back, disallowCloth )
	end	
end

function renderRotateText()
	--dxDrawText ( "Hold down the mouse button and drag to rotate the person", 0, screenHeight/2+screenHeight/3,screenWidth,screenHeight, tocolor(92,141,71), 1.3, "default-bold","center")
end

function allowCloth ()
	if source ~= button_save then return true end
	for i, v in ipairs ( itemsPacks ) do
		setElementData ( localPlayer, "cloth"..v[2], selectedClothes[i][2] )
	end
	--triggerServerEvent("upDataDBCloth",getLocalPlayer(),localPlayer)
	--outputChatBox ( "Save Sucess!", 30, 250, 30 )
	--saverrr = guiCreateLabel(0.65, 0.84, 0.18, 0.03, "Skin Salvada com Sucesso!", true)
    --guiLabelSetColor ( saverrr, 0, 255, 0 )
    --guiSetFont(saverrr, "sans")    
    --setTimer(saverrr,2000,1,false)
	--setTimer(destroyElement,3000,1,saverrr)
	closeClothWindow()
end

function closeClothWindow ()
	destroyElement ( clothWindow )
	selectedClothes = {}
	unbindKey ( "mouse1", "down", setPrevX )
	removeEventHandler('onClientRender', root, rotateTestPed )
	removeEventHandler('onClientRender', root, renderRotateText )
    setCameraMatrix(-1597.8332519531, -1622.2266845703, 37.109142303467, -1695.806640625, -1605.2043457031, 26.55163192749)
	exports.login:startInfoWindow()
	showCursor ( false )
end

x_prev = nil
 
function setPrevX()
	x, _ = getCursorPosition ()
	x_prev = x*screenWidth
end

function rotateTestPed()
	if getKeyState ("mouse1") then
		x, _ = getCursorPosition ()
		x=x*screenWidth
		change_rot = (x-x_prev)
		local _, _, ped_rot = getElementRotation ( testPed )
		local rot_to = ped_rot+change_rot
		if rot_to < 0 then
			rot_to = ped_rot+change_rot+360
		end
		setElementRotation ( testPed, 0, 0, rot_to )
		x_prev = x
	end
end

function clickOntoCloth ()
	local id = getElementData ( source, "clothButID" ) or 0 
	if id > 0 then
		local setCloth = selectedClothes[id][4]
		if getElementData ( source, "clothButBackB" ) then
			setCloth = selectedClothes[id][4]
		elseif getElementData ( source, "clothButForwB" ) then
			setCloth = selectedClothes[id][5]
		elseif getElementData ( source, "clothButBack" ) then
			if selectedClothes[id][2] > selectedClothes[id][4] then
				setCloth = selectedClothes[id][2]-1
			else
				setCloth = selectedClothes[id][5]
			end
		elseif getElementData ( source, "clothButForw" ) then
			if selectedClothes[id][2] < selectedClothes[id][5] then
				setCloth = selectedClothes[id][2]+1
			end
		end
		selectedClothes[id][2] = setCloth
		guiSetText (selectedClothes[id][1],setCloth)
		setPedClothes ( testPed, selectedClothes[id][3], setCloth )
		
	end
end

addEventHandler("onClientGUIClick", root, clickOntoCloth )

function setPedClothes(thePed, clothingSlot, clothingID)
	if not isElement(thePed) or type(clothingSlot) ~= "number" then
		error("Invalid arguments to setPedClothes()!", 2)
	end
 
	if not clothingID or clothingID == -1 then
		return removePedClothes(thePed, clothingSlot)
	end
 
	local hasClothes = getPedClothes(thePed, clothingSlot) 
	if hasClothes then
		removePedClothes(thePed, clothingSlot)
	end
	
	local texture, model = getClothesByTypeIndex(clothingSlot, clothingID)
	return addPedClothes(thePed, texture, model, clothingSlot)
end

addEventHandler( "onClientElementStreamIn", getRootElement( ),
    function ( )
        if getElementType( source ) == "player" or ( getElementType( source ) == "ped" and getElementData ( source, "deadman" ) ) and getElementModel ( source ) == 0 then
            for i, v in ipairs ( itemsPacks ) do
				setPedClothes (source,v[2],getElementData ( source, "cloth"..v[2] ) or 0)
			end
        end
    end
);

function updatePlayerClothesC (skin)
	if isElement ( source ) then 
		if skin == 0 then
			for i, v in ipairs ( itemsPacks ) do
				setPedClothes (source,v[2],getElementData ( source, "cloth"..v[2] ) or 0)
			end
		else
			for i, v in ipairs ( itemsPacks ) do
				removePedClothes(source, v[2])
			end
		end
	end
end

addEvent("updatePlayerClothes", true)
addEventHandler("updatePlayerClothes", getRootElement(), updatePlayerClothesC)

function putPlayerClothesOnSpawn ()
	if getElementModel ( localPlayer ) == 0 then
		for i, v in ipairs ( itemsPacks ) do
			setPedClothes (localPlayer,v[2],getElementData ( localPlayer, "cloth"..v[2] ) or 0)
		end
	end
end

addEventHandler("onClientResourceStart", resourceRoot, function()
testPed = createPed(0,-1600.9000244141,-1620.6999511719,36.599998474121,241.908905,0,0)
setTimer(function()
	for i, v in ipairs ( itemsPacks ) do
		local cur_cloth = getElementData ( localPlayer, "cloth"..v[2]) or v[3]
		setPedClothes ( testPed, v[2], cur_cloth )
	end
	end,100,1)
end
)

addEvent("onClientPlayerDayZSpawn", true)
addEventHandler("onClientPlayerDayZSpawn", getRootElement(), putPlayerClothesOnSpawn)

addEvent("onClientPlayerDayZLogin", true)
addEventHandler("onClientPlayerDayZLogin", getRootElement(), putPlayerClothesOnSpawn)