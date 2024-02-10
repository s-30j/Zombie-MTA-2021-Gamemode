function changeMoney( dataName, oldValue )
	if getElementType(source) == "account" then
		if not(getElementData(source, "bDontUpdate")) and dataName ~= "ePlayerElement" and dataName ~= "bDontUpdate" then
			dbExec(getMySQLC(), "UPDATE `user` SET `" .. dataName .. "`= ? WHERE ID = ?", getElementData(source, dataName), getElementData(source, "ID"))
		end
	end
end
addEventHandler("onElementDataChange", getRootElement(), changeMoney)
