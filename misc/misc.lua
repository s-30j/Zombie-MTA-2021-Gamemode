local ids = {} 
	
function isNumeric(text) 
  if type(text)~="string" and type(text)~="number" then return false end 
  return tonumber(text) and true or false 
end 
    
function getPlayerID(player) 
    for k, v in ipairs(ids) do 
        if v == player then return k end 
    end 
end 
  
function freeID() 
    local id = getElementData(source,"TarafID") 
    if not id then return end 
    ids[id] = nil 
end 
addEventHandler("onPlayerQuit",root,freeID) 
  
function getPlayerByID(id) 
    local player = ids[id] 
    return player or false 
end 
									  
function getPlayerByName(name)
	if isNumeric(name) then
		local tID = tonumber(name)
		if (tID > 0 and tID < 4000) then return getPlayerByID(name) end
	end
	
    local name = name and name:gsub("#%x%x%x%x%x%x", ""):lower() or nil
    if name then
        for _, player in ipairs(getElementsByType("player")) do
            local name_ = getPlayerName(player):gsub("#%x%x%x%x%x%x", ""):lower()
            if name_:find(name, 1, true) then
                return player
            end
        end
    end
end

function strins(string, pos, whattoinsert)
    local t = {}
    local iPosPass = 0
    string:gsub(".", function(c)
        if iPosPass == pos then
            whattoinsert:gsub(".", function(w)
                table.insert(t, w)
            end)
        end
        table.insert(t, c)
        iPosPass = iPosPass+1
    end)
    local stringResult = ""
    for _, v in ipairs(t) do
        stringResult = stringResult .. tostring(v)
    end
    return stringResult
end

function FormatPN(number)
    return strins(tostring(number), 3, "-")
end

function sendError(player, string)
    outputChatBox("Error: " .. string, player, 255, 255, 0, true)
end

function sendPlayerNotCon(player)
    sendError(player, "Bazikone morede nazar yaft nashod.")
end

addEventHandler("onPlayerJoin", root, function()
	for i=1,getMaxPlayers() do 
        if not ids[i] then 
            ids[i] = source 
            setElementData(source, "TarafID", i) 
            break 
        end
    end 
end)

addEvent("OnGlobalTimer")

addEventHandler("onResourceStart", getResourceRootElement(), function(rs)
	exports["e_scoreboard"]:scoreboardAddColumn("TarafID", root, 20, "ID", 1)
	for k, v in ipairs(getElementsByType("player")) do 
        local id = getElementData(v,"TarafID") 
        if id then ids[id] = v end 
    end 
	setTimer(function ()
		triggerEvent("OnGlobalTimer", root)
	end, 1000, 0)
end)

function findPlayer( partofname )
        local player = getPlayerFromName ( tostring(partofname) )
        if player then
            return player
        end
        for _, player in pairs( getElementsByType 'player' ) do
            if tonumber(getElementData(player,"TarafID")) == tonumber(partofname) then
                if getElementData(player, "loggedIn") == true then
                    return player
                end
            end
        end

        for _, player in pairs( getElementsByType 'player' ) do
            if string.find ( string.gsub ( getPlayerName ( player ):lower( ), "#%x%x%x%x%x%x", "" ), partofname:lower( ), 1, true ) then
                if getElementData(player, "loggedIn") == true then
                    return player
                end
            end
        end
end

addEventHandler("onResourceStart", getResourceRootElement(), function (rs)
	bLastHour = getRealTime().hour
end)