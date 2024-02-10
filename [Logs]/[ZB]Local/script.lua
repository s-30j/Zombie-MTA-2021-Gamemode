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
   -- outputDebugString(""..LogTitle.." : "..LogText.."")
    xmlSaveFile(Logs)
  end
end
