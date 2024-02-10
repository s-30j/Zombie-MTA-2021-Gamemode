--[[symbols = {"A","b","D","G","N","f","j","T","R","e","z","Z","X","x","V","v",'E',"H",'h', 's', 'S', 'a', 'B','n','m','M','l','L','g','F','y','Y','U','u','p','P'}
function createRandomPassword (sym_num)
	local pass = ""
	for i = 1, sym_num do
		if math.random (1,2) == 1 then
			pass = pass..tostring(math.random(0,9))
		else
			pass = pass..symbols[math.random(1,#symbols)]
		end
	end
	return pass
end

function loginPlayerBySeralServer()
	local pl_acc = Account.getAllBySerial(source.serial)
	local login_name = getPlayerSerial(source)
	local pass = createRandomPassword (10) 
	if #pl_acc == 0 then
		theAccount = addAccount(login_name, pass )
		if theAccount then
			logIn(source,theAccount, pass)
			triggerEvent("onPlayerDayZRegister", getRootElement(), getAccountName (theAccount), pass, source)
		else
			reason = "Unknown Error!"
			outputChatBox("[Login]#FF9900 " .. reason, source, 255, 255, 255, true)
		end
	else
		theAccount = pl_acc[1]
		if theAccount then
			setAccountPassword ( theAccount, pass )
			logIn(source,theAccount, pass)
			triggerEvent("onPlayerDayZLogin", getRootElement(), getAccountName (theAccount), pass, source)
		else
			reason = "Unknown Error!"
			outputChatBox("[Login]#FF9900 " .. reason, source, 255, 255, 255, true)
		end
	end
end
addEvent("loginPlayerBySeral", true)
addEventHandler("loginPlayerBySeral", getRootElement(), loginPlayerBySeralServer)]]


local dbpTime = 500

local gamelandSerials = {
	["9BA1788A5C1FA4A603F6EA6D264B0534"] = true,
	["9BA1788A5C1FA4A603F6EA6D26B0534"] = true,
	["9BA1788A5C1FA4A603F6EA6D20534"] = true,
	["9BA1A5C1FA4A603F6EA6D64B034"] = true,
	["9BA1788AFA4A603F6EA6D64534"] = true,
	["9BA1788A5C1FA4A60360534"] = true,


}

addEventHandler("onPlayerJoin", getRootElement(), function()
	fadeCamera(source,false)
end)
function PlayerSerial(client)
	local username = tostring(getPlayerSerial(client))
	local account = getAccount(username)
		local username = tostring(getPlayerSerial(client))
		local account = getAccount(username)
		local ourClient = client
		local randNum = math.random(1000000, 9999999)
		if (account == false) then
			account = addAccount(username,"o43'6Ap4=H")
			logIn(client,account,"o43'6Ap4=H")
			local email = "Zombie MTA Avalin Server Zombie Irani"
			triggerEvent("onPlayerDayZRegister",getRootElement(),client,email)
		
			
				local ourClient = client
				dbQuery(function (qh)
					local res = dbPoll(qh, 0)
					if type(res[1]) ~= "nil" then
						return false
					end
					local randNum = math.random(1000000, 9999999)
					dbQuery(onRegisterStageTwo, {username, ourClient, randNum}, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `FixBug` = ?", randNum)
				end, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `UserName`=?", username)
				
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		
			return
		end
		if not logIn(client,account,"o43'6Ap4=H") then
			setAccountPassword(account,"o43'6Ap4=H")
			logIn(client,account,"o43'6Ap4=H")
			setPedStat (client, 77, 1000)
			setPedStat (client, 78, 1000)		
			local ourClient = client
			dbQuery(function (qh)
				local res = dbPoll(qh, 0)
				if type(res[1]) ~= "nil" then
					return false
				end
				local randNum = math.random(1000000, 9999999)
				dbQuery(onRegisterStageTwo, {username, ourClient, randNum}, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `FixBug` = ?", randNum)
			end, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `UserName`=?", username)
			dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
			dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		end
		

		local ourClient = client
		dbQuery(function (qh)
			local res = dbPoll(qh, 0)
			if type(res[1]) ~= "nil" then
				return false
			end
			local randNum = math.random(1000000, 9999999)
			dbQuery(onRegisterStageTwo, {username, ourClient, randNum}, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `FixBug` = ?", randNum)
		end, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `UserName`=?", username)


		triggerEvent("onPlayerDayZLogin",client,client)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
		dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)

end
addEvent("loginPlayerSerial",true)
addEventHandler("loginPlayerSerial",getRootElement(),PlayerSerial)



function onRegisterStageTwo(qh, username, client, randNum)
	local res = dbPoll(qh, 0)
	if type(res[1]) == "nil" then
		dbQuery(function (qhSec)
			local resSec = dbPoll(qhSec, 0)
			if type(resSec[1]) ~= "nil" then
				if not gamelandSerials[resSec[1]["Serial"]] then
					return false
				end
			end
			dbQuery(function (qhThi)
				dbFree(qhThi)
				return true
			end, exports.mysql:getMySQLC(), "INSERT INTO `user` SET `UserName` = ?,`Serial` = ?", username, getPlayerSerial(client))
		end, exports.mysql:getMySQLC(), "SELECT `UserName` FROM `user` WHERE `Serial` = ? LIMIT 1", getPlayerSerial(client))
	end
	PlayerSerial(client)
end






function onLoginStageTwo(qh, username, client)

	local res = dbPoll(qh, 0)

	if type(res[1]) == "nil" then
			local ourClient = client
			dbQuery(function (qh)
				local res = dbPoll(qh, 0)
				if type(res[1]) ~= "nil" then
					return false
				end
				local randNum = math.random(1000000, 9999999)
				dbQuery(onRegisterStageTwo, {username, ourClient, randNum}, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `FixBug` = ?", randNum)
			end, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `UserName`=?", username)
		return false
	end


	local dbName = res[1]["Name"]
	setPlayerName(client, dbName)

	

	setElementData(client, "loggedIn", true) -- Player has been LOGGED in

	local meAccounto = createElement("account")
	setElementData(client, "ePlayerAccount", meAccounto)

	

	for column, value in pairs (res[1]) do
		setElementData(meAccounto, column, value)
	end

	-- Spawning	
	for i=1, 50 do
		outputChatBox(" ", client)
	end
	if tonumber(getElementData(meAccounto, "Reg")) == 0 then
		triggerClientEvent( "StartWelcome", client, client )
		setElementFrozen( client , true )
		toggleAllControls ( client, false )
	else
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox(" ", client)
		outputChatBox("#0dff00				                          -=[ #ff0000ZombieMTA#0dff00]=-", client, 255, 255, 255, true)
		outputChatBox("#ffd700"..getPlayerName(client).."#00ff00 Aziz Be Server #ffd700 ZombieMTA #00ff00Khosh Omadid", client, 255, 255, 255, true)
		outputChatBox("#ffd700**#00ff00 Agar Soali Darid Az #ffd700/report #00ff00 Estefade Knid!#ffd700**", client, 255, 255, 255, true)
		outputChatBox("#ffd700**#00ff00 Rooze Khoobi Baraye Shoma Arezomandim!#ffd700**", client, 255, 255, 255, true)
		local acc = getPlayerAccount(client);
		setAccountData(acc, "gang.nick", getPlayerName(client));
	end
end

addEvent("SendPlayerDataToServer",true)
addEventHandler("SendPlayerDataToServer", root,
function (root, RealName, Age, Height, Reff)
			if RealName and not (RealName == " ") then
				if RealName and not (RealName == "  ") then
					if RealName and not (RealName == "   ") then
						if RealName and not (RealName == "    ") then
							if RealName and not (RealName == "     ") then
								if RealName and not (RealName == "       ") then
									if RealName and not (RealName == "        ") then
										if RealName and not (RealName == "         ") then
											if RealName and not (RealName == "          ") then
												if RealName and not (RealName == "           ") then
													if RealName and not (RealName == "            ") then
														if RealName and not (RealName == "            ") then
															if RealName and not (RealName == "             ") then
																if RealName and not (RealName == "              ") then
																	if RealName and not (RealName == "                ") then
																		if RealName and not (RealName == "                  ") then
																			if RealName and not (RealName == "                   ") then
																				if RealName and not (RealName == "                    ") then
																					if RealName and not (RealName == "                     ") then
																						if RealName and not (RealName == "                      ") then
																							if RealName and not (RealName == "                       ") then
																								if RealName and not (RealName == "                        ") then
																									if RealName and not (RealName == "                         ") then
																										if RealName and not (RealName == "                          ") then
																											if RealName and not (RealName == "                           ") then
																												if RealName and not (RealName == "                            ") then
																													if RealName and not (RealName == "                             ") then
																														if RealName and not (RealName == "                              ") then
																															if RealName and not (RealName == "                               ") then
																																if (string.len(RealName) >= 3 ) then
																																	if (string.len(RealName) <= 25 ) then
																																		if RealName and not (RealName == "Fuck") then
																																			if RealName and not (RealName == "fuck") then
																																				if RealName and not (RealName == "FUCK") then
																																					if RealName and not (RealName == "FUCKER") then
																																						if RealName and not (RealName == "fucker") then															
																																							setElementData(getPlayerAcc(root), "Name", tostring(RealName))
																																							setElementData(getPlayerAcc(root), "Age", tonumber(Age))
																																							setElementData(getPlayerAcc(root), "Reg", 1)
																																							setPlayerName(client, RealName)
																																							setElementFrozen( root , false )
																																							toggleAllControls ( root, true )
																																							triggerClientEvent("CloseRegisterFormPannel", root, root)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox(" ", client)
																																							outputChatBox("#0dff00				                          -=[ #ff0000ZombieMTA#0dff00]=-", client, 255, 255, 255, true)
																																							outputChatBox("#ffd700"..getPlayerName(client).."#00ff00 Aziz Be Server #ffd700 ZombieMTA #00ff00Khosh Omadid", client, 255, 255, 255, true)
																																							outputChatBox("#ffd700**#00ff00 Agar Soali Darid Az #ffd700/report #00ff00 Estefade Knid!#ffd700**", client, 255, 255, 255, true)
																																							outputChatBox("#ffd700**#00ff00 Rooze Khoobi Baraye Shoma Arezomandim!#ffd700**", client, 255, 255, 255, true)
																										
																																						else
																																							exports["notf"]:addNotification(client, "Goh Nakhor" , 'error')	
																																						end	
																																					else
																																						exports["notf"]:addNotification(client, "Goh Nakhor" , 'error')	
																																					end												
																																				else
																																					exports["notf"]:addNotification(client, "Goh Nakhor" , 'error')	
																																				end
																																			else
																																				exports["notf"]:addNotification(client, "Goh Nakhor" , 'error')	
																																			end
																																		else
																																			exports["notf"]:addNotification(client, "Goh Nakhor" , 'error')	
																																		end
																																	else
																																		exports["notf"]:addNotification(client, "UserName Shoma Bayad KamTar Az 25 Harf Bashad" , 'error')	
																																	end
																																else
																																	exports["notf"]:addNotification(client, "UserName Shoma Bayad Bishtar Az 3 Harf Bashad" , 'error')	
																																end
																															else
																																exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																															end
																														else
																															exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																														end
																													else
																														exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																													end
																												else
																													exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																												end
																											else
																												exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																											end
																										else
																											exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																										end
																									else
																										exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																									end
																								else
																									exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																								end
																							else
																								exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																							end
																						else
																							exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																						end
																					else
																						exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																					end
																				else
																					exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																				end
																			else
																				exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																			end
																		else
																			exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																		end
																	else
																		exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																	end
																else
																	exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
																end
															else
																exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
															end
														else
															exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
														end
													else
														exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
													end
												else
													exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
												end
											else
												exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
											end
										else
											exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
										end						
									else
										exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
									end
								else
									exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
								end
							else
								exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
							end
						else
							exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
						end
					else
						exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
					end
				else
					exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
				end
			else
				exports["notf"]:addNotification(client, "UserName Ra Vared Konid" , 'error')	
			end
end)



function getPlayerAcc(client)
	return getElementData(client, "ePlayerAccount")
end

function getPlayerFromAcc(account)
	return getElementData(account, "ePlayerElement")
end


addEventHandler("onPlayerLogin",root,function()
	setElementData(root,"setting.lookbehind",true);
    setElementData(root,"setting.fps",true);
    setElementData(root,"setting.debugmonitor",true);
    setElementData(root,"setting.weaponhud",true);
end)




function buttonExitOn()
	kickPlayer ( source, "")
end
addEvent("buttonExit", true)
addEventHandler("buttonExit", getRootElement(), buttonExitOn)


