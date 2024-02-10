--[[
		Scripted by MohamadRiGeL
									--]]

local hostname = "127.0.0.1"
local username = "root"
local password = ""
local database = "mta"
local port = 3306

local gMySQLCon = nil

function connectToDatabase(res)

	gMySQLCon = dbConnect("mysql", "dbname=" .. database .. ";host=" .. hostname, username, password)
	
	if (not gMySQLCon) then
		cancelEvent(true, "[Error]: Database Connect Nashod!")
		return
	end
	
	outputServerLog("[Done]: Database Ba Movafaqiat Connect Shod!")

end
addEventHandler("onResourceStart", getResourceRootElement(), connectToDatabase, false)

function getMySQLC()
	return gMySQLCon
end