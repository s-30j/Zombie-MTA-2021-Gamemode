
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
	setElementFrozen(source, true)
	setElementModel(source,20)
end)

addEventHandler("onResourceStart", resourceRoot,
function()
	for k, player in ipairs (getElementsByType("player")) do	
		if getElementData(player, "loggedIn") == true then
			setElementFrozen(player, true)
			setElementModel(player,20)

			
			local username = tostring(getPlayerSerial(player))
			local pl_acc = getAccount(username)
			if (pl_acc == false) then
				return
			end
			--local pl_acc = Account.getAllBySerial(source.serial)
			local cloth0 = getAccountData ( pl_acc, "cloth0" ) or 0
			local cloth2 = getAccountData ( pl_acc, "cloth2" ) or 0
			local cloth3 = getAccountData ( pl_acc, "cloth3" ) or 0
			local cloth15 = getAccountData ( pl_acc, "cloth15" ) or 0
			local cloth16 = getAccountData ( pl_acc, "cloth16" ) or 0
			setElementData ( player, "cloth0", cloth0 )
			setElementData ( player, "cloth2", cloth2 )
			setElementData ( player, "cloth3", cloth3 )
			setElementData ( player, "cloth15", cloth15 )
			setElementData ( player, "cloth16", cloth16 )
			triggerClientEvent ( player, "updateTestPedClothes", player, cloth0, cloth2, cloth3, cloth15, cloth16 )
		end
	end
end)

function PlayerSerial(client)

		local username = tostring(getPlayerSerial(client))
		local account = getAccount(username)
		local ourClient = client
		local randNum = math.random(1000000, 9999999)
		if (account == false) then
			account = addAccount(username,"o43'6Ap4=H")
			logIn(client,account,"o43'6Ap4=H")
			dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)

			local email = "Zombie MTA Avalin Server Zombie Irani"
			triggerEvent("onPlayerDayZRegister",getRootElement(),client,email)
			triggerClientEvent("unbug",getRootElement(),client)
			
				local ourClient = client
				dbQuery(function (qh)
					local res = dbPoll(qh, 0)
					if type(res[1]) ~= "nil" then
						return false
					end
					local randNum = math.random(1000000, 9999999)
					dbQuery(onRegisterStageTwo, {username, ourClient, randNum}, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `FixBug` = ?", randNum)
					dbQuery(onLoginStageTwo, {username, client}, exports.mysql:getMySQLC(), "SELECT * FROM `user` WHERE `UserName` = ? LIMIT 1", username)
				end, exports.mysql:getMySQLC(), "SELECT `ID` FROM `user` WHERE `UserName`=?", username)
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
		setElementFrozen(client, false)
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

addEventHandler("onPlayerJoin", getRootElement(), function()
	
	local username = tostring(getPlayerSerial(source))
	local pl_acc = getAccount(username)
	if (pl_acc == false) then
		return
	end
	--local pl_acc = Account.getAllBySerial(source.serial)
		local cloth0 = getAccountData ( pl_acc, "cloth0" ) or 0
		local cloth2 = getAccountData ( pl_acc, "cloth2" ) or 0
		local cloth3 = getAccountData ( pl_acc, "cloth3" ) or 0
		local cloth15 = getAccountData ( pl_acc, "cloth15" ) or 0
		local cloth16 = getAccountData ( pl_acc, "cloth16" ) or 0
		setElementData ( source, "cloth0", cloth0 )
		setElementData ( source, "cloth2", cloth2 )
		setElementData ( source, "cloth3", cloth3 )
		setElementData ( source, "cloth15", cloth15 )
		setElementData ( source, "cloth16", cloth16 )
		triggerClientEvent ( source, "updateTestPedClothes", source, cloth0, cloth2, cloth3, cloth15, cloth16 )

end)






function buttonExitOn()
	kickPlayer ( source, "")
end
addEvent("buttonExit", true)
addEventHandler("buttonExit", getRootElement(), buttonExitOn)


