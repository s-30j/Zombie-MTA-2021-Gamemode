local Logs = xmlLoadFile("Log.xml")
function CreateServerLog(LogTitle,LogText)
  if LogTitle and LogText then
    local time = getRealTime()
    local Hour = time.hour
    local Minute = time.minute
    local Second = time.second
        local Day = time.monthday
    local Month = time.month
    local Year = time.year
    xmlNodeSetValue (xmlCreateChild(Logs, ""..LogTitle..""), ""..LogText.." | ( "..Hour.." : "..Minute.." : "..Second.." ) | ( "..Year.." / "..Month.." / "..Day.." ) " )
    --outputDebugString(""..LogTitle.." : "..LogText.."")
    xmlSaveFile(Logs)
  end
end

--[[
function easy (command)
  if (command ~= "say" and command ~= "Toggle" and command ~= "Previous" and command ~= "Next" and command ~= "Reload" and command ~= "NxNxCigarNakesh" and command ~= "NxNxCigarBekesh" )  then
    for index, test in pairs( getElementsByType 'player' ) do
      if getElementData(test, "fzmode") == true then
        outputChatBox("#ffffff[FZ-Mode]- Player#ff0000 "..getPlayerName(source).."#ffffff Az Command#ff0000  "..command.."#ffffff  Estefade Kard.", test, 255, 255, 255, true)
      end
    end
  end
end
addEventHandler("onPlayerCommand",root,easy)]]





