addEvent("playAirdropSound",true)
addEventHandler("playAirdropSound",getRootElement(),function()
	playSound("Sounds/Airdrop"..math.random(1)..".mp3")
end)