local Logs = xmlLoadFile("Log.xml")
function CreateServerLog(LogTitle,LogText)
  if LogTitle and LogText then
    local time = getRealTime()
    local Hour = time.hour
    local Minute = time.minute
    local Second = time.second
    xmlNodeSetValue (xmlCreateChild(Logs, ""..LogTitle..""), ""..LogText.."    | ( "..Hour.." : "..Minute.." : "..Second.." )" )
    --outputDebugString(""..LogTitle.." : "..LogText.."")
    xmlSaveFile(Logs)
  end
end
