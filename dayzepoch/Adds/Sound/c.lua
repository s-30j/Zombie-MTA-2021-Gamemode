function onResourceStart()
	local sound = playSound3D("Adds/Sound/Jir_Jir.mp3", 1917.1110839844 ,-1681.6164550781 ,15.40129852294, true) 
    setSoundMaxDistance(sound, 30)
	local sound2 = playSound3D("Adds/Sound/Jir_Jir.mp3", -428.0791015625 ,-1519.005859375 ,21.577610015869, true) 
    setSoundMaxDistance(sound2, 30)
    local sound3 = playSound3D("Adds/Sound/Jir_Jir.mp3", -863.7880859375 ,-2190.8349609375 ,30.47478103637, true) 
    setSoundMaxDistance(sound2, 30)
    local sound4 = playSound3D("Adds/Sound/Jir_Jir.mp3", -747.501953125 ,1029.4482421875 ,18.725666046143, true) 
    setSoundMaxDistance(sound4, 30)
    local sound5 = playSound3D("Adds/Sound/Jir_Jir.mp3", 65.875 ,1729.2822265625 ,17.64062, true) 
    setSoundMaxDistance(sound5, 30)
    local sound6 = playSound3D("Adds/Sound/Jir_Jir.mp3", -960.1748046875 ,-496.939453125 ,25.95363807678, true) 
    setSoundMaxDistance(sound6, 30)
    local sound7 = playSound3D("Adds/Sound/Jir_Jir.mp3", -427.83203125 ,-1505.5234375 ,22.15720748901, true) 
    setSoundMaxDistance(sound7, 30)
    local sound8 = playSound3D("Adds/Sound/Jir_Jir.mp3", 112.8974609375 ,-1719.92578125 ,9.02195358276, true) 
    setSoundMaxDistance(sound8, 30)
    local sound10 = playSound3D("Adds/Sound/Qoor_Qoor.mp3", -660.14276123047 ,-1887.2119140625 ,7.0904669761658, true) 
    setSoundMaxDistance(sound10, 40)


    
    
end
addEventHandler("onClientResourceStart", resourceRoot, onResourceStart)