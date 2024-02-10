legacygate = createObject ( 16775, -2173.3955078125 ,631.65979003906 ,65.56336975097, 0, 0, 0 )
legacycol = createColCircle ( -2176.0009765625 ,631.41369628906 ,6.56336975097)

function openlegacygate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map1")) then
			moveObject(legacygate,3000,-2176.0009765625 ,631.41369628906 ,50.56336975097)
			setTimer(
			function()
				moveObject(legacygate,3000,-2173.3955078125 ,631.65979003906 ,65.56336975097)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", legacycol, openlegacygate )

function closelegacygate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map1")) then
			moveObject(legacygate,3000,-2173.3955078125 ,631.65979003906 ,65.56336975097)
		end
	end
end
addEventHandler( "onColShapeLeave", legacycol, closelegacygate )


MmRaminGate = createObject ( 16775, -2241.20818359375 ,643.871484375 ,49.44786071777, 0, 0, 90 )
MmRamincol = createColCircle ( -2241.20818359375 ,643.871484375 ,6.44786071777)

function openmmraminGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map1")) then
			moveObject(MmRaminGate,3000,-2241.20818359375 ,643.871484375 ,30.44786071777)
			setTimer(
			function()
				moveObject(MmRaminGate,3000,-2241.20818359375 ,643.871484375 ,49.44786071777)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", MmRamincol, openmmraminGate )

function closemmraminGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map1")) then
			moveObject(MmRaminGate,3000,-2241.20818359375 ,643.871484375 ,49.44786071777)
		end
	end
end
addEventHandler( "onColShapeLeave", MmRamincol, closemmraminGate )


AmirGate = createObject ( 16775, 951.9521484375 ,-1383.611328125 ,12.3437, 0, 0, 0 )
AmirCol = createColCircle ( 951.59765625 ,-1390.8916015625 ,13.23058223724)

function openAmirGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map2")) then
			moveObject(AmirGate,1000, 951.9521484375 ,-1383.611328125 ,5.3437)
			setTimer(
			function()
				moveObject(AmirGate,1000, 951.9521484375 ,-1383.611328125 ,12.3437)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", AmirCol, openAmirGate )

function closeAmirGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map2")) then
			moveObject(AmirGate,1000, 951.9521484375 ,-1383.611328125 ,12.3437)
		end
	end
end
addEventHandler( "onColShapeLeave", AmirCol, closeAmirGate )


RezaGate = createObject ( 16775, 2261 , -2497.1000976562 , 11.699999809265, 0, 0, 0 )
RezaCol = createColCircle ( 2260.2907714844 ,-2497.5556640625 ,8.69683456420)

function openRezaGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map7")) then
			moveObject(RezaGate,1000, 2261 , -2497.1000976562 , 2.699999809265)
			setTimer(
			function()
				moveObject(RezaGate,1000, 2261 , -2497.1000976562 , 11.699999809265)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", RezaCol, openRezaGate )

function closeRezaGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map7")) then
			moveObject(RezaGate,1000, 2261 , -2497.1000976562 , 11.699999809265)
		end
	end
end
addEventHandler( "onColShapeLeave", RezaCol, closeRezaGate )




Reza2Gate = createObject ( 974, 2361.8999,-660.59998 ,130.3, 0, 90, 90 )
Reza2Col = createColCircle ( 2361.8999,-660.59998 ,3.3)

function openReza2Gate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map3")) then
			moveObject(Reza2Gate,1000, 2361.8999,-660.59998 ,120.3)
			setTimer(
			function()
				moveObject(Reza2Gate,1000, 2361.8999,-660.59998 ,130.3)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", Reza2Col, openReza2Gate )

function closeReza2Gate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map3")) then
			moveObject(Reza2Gate,1000, 2361.8999,-660.59998 ,130.3)
		end
	end
end
addEventHandler( "onColShapeLeave", Reza2Col, closeReza2Gate )


YamcGate = createObject ( 16775, -1770.4541015625 ,984.9521484375 ,24.5078, 0, 0, 90 )
YamcCol = createColCircle ( -1769.3193359375 ,985.9189453125 ,23.46386337280)

function openYamcGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map5")) then
			moveObject(YamcGate,1000, -1770.4541015625 ,984.9521484375 ,10.5078)
			setTimer(
			function()
				moveObject(YamcGate,1000, -1770.4541015625 ,984.9521484375 ,24.5078)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", YamcCol, openYamcGate )

function closeYamcGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map5")) then
			moveObject(YamcGate,1000, -1770.4541015625 ,984.9521484375 ,24.5078)
		end
	end
end
addEventHandler( "onColShapeLeave", YamcCol, closeYamcGate )


MahyGate = createObject ( 16775, 362.546875 ,-1471.383984375 ,31.00037673950, 0, 0, 37 )
MahyCol = createColCircle ( 360.71875 ,-1466.4404296875 ,6.30056190490)

MahyGate2 = createObject ( 16775, 308.0291015625 ,-1553.58984375 ,31.00339105224, 0, 0, -37 )
MahyCol2 = createColCircle ( 310.6337890625 ,-1555.9521484375 ,6.047607421875)

function openMahyGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map666")) then
			moveObject(MahyGate,1000, 362.546875 ,-1471.383984375 ,25.00037673950)
			setTimer(
			function()
				moveObject(MahyGate,1000, 362.546875 ,-1471.383984375 ,31.00037673950)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", MahyCol, openMahyGate )

function closeMahyGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map666")) then
			moveObject(MahyGate,1000, 362.546875 ,-1471.383984375 ,31.00037673950)
		end
	end
end
addEventHandler( "onColShapeLeave", MahyCol, closeMahyGate )

function openMahyGate2(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map666")) then
			moveObject(MahyGate2,1000, 308.0291015625 ,-1553.58984375 ,25.00339105224)
			setTimer(
			function()
				moveObject(MahyGate2,1000, 308.0291015625 ,-1553.58984375 ,31.00339105224)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", MahyCol2, openMahyGate2 )

function closeMahyGate2(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map666")) then
			moveObject(MahyGate2,1000, 308.0291015625 ,-1553.58984375 ,31.00339105224)
		end
	end
end
addEventHandler( "onColShapeLeave", MahyCol2, closeMahyGate2 )

--[[
VIPGate = createObject ( 16775, 2467.1999511719,943.10998535156,13.699999809265, 0, 0, 0 )
VIPCol = createColCircle ( 2467.1999511719,943.10998535156,13.699999809265)

function openVIPGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map4")) then
			moveObject(VIPGate,1000, 2467.1999511719,943.10998535156,2.699999809265)
			setTimer(
			function()
				moveObject(VIPGate,1000, 2467.1999511719,943.10998535156,13.699999809265)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", VIPCol, openVIPGate )

function closeVIPGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map4")) then
			moveObject(VIPGate,1000, 2467.1999511719,943.10998535156,13.699999809265)
		end
	end
end
addEventHandler( "onColShapeLeave", VIPCol, closeVIPGate )]]

MyGate = createObject ( 16775, 1496.06640625 ,-700.322265625 ,96, 0, 0, 0 )
MyCol = createColCircle ( 1495.48046875 ,-704.4111328125 ,10.043881225586)

function openMyGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("MyMap")) then
			moveObject(MyGate,1000, 1496.06640625 ,-700.322265625 ,80)
			setTimer(
			function()
				moveObject(MyGate,1000, 1496.06640625 ,-700.322265625 ,96)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", MyCol, openMyGate )

function closeMyGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("MyMap")) then
			moveObject(MyGate,1000, 1496.06640625 ,-700.322265625 ,96)
		end
	end
end
addEventHandler( "onColShapeLeave", MyCol, closeMyGate )




MahyGate3 = createObject ( 16775, 2365,2380.5,13.82, 0, 0, 90 )
MahyCol3 = createColCircle ( 2365,2380.5,6.82)

function openMahyGate3(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map2")) then
			moveObject(MahyGate3,1000, 2365,2380.5,2)
			setTimer(
			function()
				moveObject(MahyGate3,1000, 2365,2380.5,13.82)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", MahyCol3, openMahyGate3 )

function closeMahyGate3(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map2")) then
			moveObject(MahyGate3,1000, 2365,2380.5,13.82)
		end
	end
end
addEventHandler( "onColShapeLeave", MahyCol3, closeMahyGate3 )


mahdiGate = createObject ( 16775,  -541.6060546875 ,2584.3599609375 ,56.415424346924 , 0, 0, 90 )
mahdiCol = createColCircle (  -541.6060546875 ,2584.3599609375 ,6.415424346924)

function openmahdiGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map8")) then
			moveObject(mahdiGate,1000,  -541.6060546875 ,2584.3599609375 ,45.415424346924)
			setTimer(
			function()
				moveObject(mahdiGate,1000,  -541.6060546875 ,2584.3599609375 ,56.415424346924)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", mahdiCol, openmahdiGate )

function closemahdiGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map8")) then
			moveObject(mahdiGate,1000,   -541.6060546875 ,2584.3599609375 ,56.415424346924)
		end
	end
end
addEventHandler( "onColShapeLeave", mahdiCol, closemahdiGate)


JokerGate = createObject ( 16775, 2260.5107421875 ,-2151.115234375 ,7.07420396804, 0, 0, 45 )
JokerCol = createColCircle ( 2260.5107421875 ,-2151.115234375 ,6.07420396804)

function openJokerGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map9")) then
			moveObject(JokerGate,1000,  2260.5107421875 ,-2151.115234375 ,-2.07420396804)
			setTimer(
			function()
				moveObject(JokerGate,1000, 2260.5107421875 ,-2151.115234375 ,6.07420396804)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", JokerCol, openJokerGate )

function closeJokerGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map9")) then
			moveObject(JokerGate,1000,  2260.5107421875 ,-2151.115234375 ,6.07420396804)
		end
	end
end
addEventHandler( "onColShapeLeave", JokerCol, closeJokerGate)



FarzadGate = createObject ( 16775, -798.3369140625 ,1559.625 ,30.12444496154, 0, 0, 90 )
FarzadCol = createColCircle ( -798.3369140625 ,1559.625 ,6.12444496154)

function openFarzadGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map10")) then
			moveObject(FarzadGate,1000, -798.3369140625 ,1559.625 ,18.12444496154)
			setTimer(
			function()
				moveObject(FarzadGate,1000, -798.3369140625 ,1559.625 ,30.12444496154)
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", FarzadCol, openFarzadGate )

function closeFarzadGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map10")) then
			moveObject(FarzadGate,1000, -798.3369140625 ,1559.625 ,30.124444961544)
		end
	end
end
addEventHandler( "onColShapeLeave", FarzadCol, closeFarzadGate)

SpetGate = createObject ( 16775,  971.578125 ,2702.380078125 ,13.8203125, 0, 0, 90 )
SpetCol = createColCircle (  971.578125 ,2702.380078125 ,7.8203125)

function openSpetGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map11")) then
			moveObject(SpetGate,1000,  971.578125 ,2702.380078125 ,5.8203125 )
			setTimer(
			function()
				moveObject(SpetGate,1000,  971.578125 ,2702.380078125 ,13.8203125 )
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", SpetCol, openSpetGate )

function closeSpetGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map11")) then
			moveObject(SpetGate,1000,  971.578125 ,2702.380078125 ,13.8203125 )
		end
	end
end
addEventHandler( "onColShapeLeave", SpetCol, closeSpetGate)

loaGate = createObject ( 16775,   1535.189453125 ,-1451.4384765625 ,13.38688659668 , 0, 0, 0 )
loaCol = createColCircle (   1535.189453125 ,-1451.4384765625 ,5.38688659668 )

function openloaGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map12")) then
			moveObject(loaGate,1000,   1535.189453125 ,-1451.4384765625 ,1.38688659668  )
			setTimer(
			function()
				moveObject(loaGate,1000,   1535.189453125 ,-1451.4384765625 ,13.38688659668  )
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", loaCol, openloaGate )

function closeloaGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map12")) then
			moveObject(loaGate,1000,   1535.189453125 ,-1451.4384765625 ,13.38688659668  )
		end
	end
end
addEventHandler( "onColShapeLeave", loaCol, closeloaGate)

AlikGate = createObject ( 16775,   1689.359375 ,-1453.9521484375 ,13.546875 , 0, 0, 0 )
AlikCol = createColCircle (   1689.359375 ,-1453.9521484375 ,5.546875 )

function openAlikGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map13")) then
			moveObject(AlikGate,1000,   1689.359375 ,-1453.9521484375 ,1.546875  )
			setTimer(
			function()
				moveObject(AlikGate,1000,   1689.359375 ,-1453.9521484375 ,13.546875  )
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", AlikCol, openAlikGate )

function closeAlikGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map13")) then
			moveObject(AlikGate,1000,   1689.359375 ,-1453.9521484375 ,13.546875  )
		end
	end
end
addEventHandler( "onColShapeLeave", AlikCol, closeAlikGate)

KabrGate = createObject ( 16775,    2360.7978515625 ,-1271.81640625 ,23.971822738647  , 0, 0, 90 )
KabrCol = createColCircle (    2360.7978515625 ,-1271.81640625 ,6.971822738647  )

function openKabrGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map14")) then
			moveObject(KabrGate,1000,    2360.7978515625 ,-1271.81640625 ,10.971822738647   )
			setTimer(
			function()
				moveObject(KabrGate,1000,    2360.7978515625 ,-1271.81640625 ,23.971822738647   )
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", KabrCol, openKabrGate )

function closeKabrGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map14")) then
			moveObject(KabrGate,1000,    2360.7978515625 ,-1271.81640625 ,23.971822738647 )
		end
	end
end
addEventHandler( "onColShapeLeave", KabrCol, closeKabrGate)

Kabr2Gate = createObject ( 16775,  2313.5751953125 ,-1216.5169921875 ,22.514280700684 , 0, 0, 90 )
Kabr2Col = createColCircle (  2313.5751953125 ,-1217.9169921875 ,6.114280700684  )

function openKabr2Gate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map14")) then
			moveObject(Kabr2Gate,1000,   2313.5751953125 ,-1216.5169921875 ,15.114280700684    )
			setTimer(
			function()
				moveObject(Kabr2Gate,1000,  2313.5751953125 ,-1216.5169921875 ,22.514280700684  )
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", Kabr2Col, openKabr2Gate )

function closeKabr2Gate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map14")) then
			moveObject(Kabr2Gate,1000,  2313.5751953125 ,-1216.5169921875 ,22.514280700684 )
		end
	end
end
addEventHandler( "onColShapeLeave", Kabr2Col, closeKabr2Gate)

--[[
mojGate = createObject ( 16775,  997.298828125 ,1452.546875 ,13.9203125 , 0, 0, 90 )
mojCol = createColCircle (  997.298828125 ,1452.546875 ,5.8203125  )

function openmojGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map15")) then
			moveObject(mojGate,1000,   997.298828125 ,1452.546875 ,2.2203125     )
			setTimer(
			function()
				moveObject(mojGate,1000,  997.298828125 ,1452.546875 ,13.9203125   )
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", mojCol, openmojGate )

function closemojGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map15")) then
			moveObject(mojGate,1000,  997.298828125 ,1452.546875 ,13.9203125  )
		end
	end
end
addEventHandler( "onColShapeLeave", mojCol, closemojGate)]]

 
--[[
M_OGate = createObject ( 16775,  2560.9599609375 ,-1482.41796875 ,27.027013778687 , 0, 0, 90 )
M_OCol = createColCircle (  2560.9599609375 ,-1482.41796875 ,6.027013778687  )

function openM_OGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map16")) then
			moveObject(M_OGate,1000,   2560.9599609375 ,-1482.41796875 ,18.027013778687     )
			setTimer(
			function()
				moveObject(M_OGate,1000,  2560.9599609375 ,-1482.41796875 ,27.027013778687   )
			end, 30000, 1)
		end
	end
end
addEventHandler( "onColShapeHit", M_OCol, openM_OGate )

function closeM_OGate(thePlayer)
	if getElementData(thePlayer, "logedin") == true then
		local account = getAccountName(getPlayerAccount(thePlayer))
		if isObjectInACLGroup("user."..account,aclGetGroup("Map16")) then
			moveObject(M_OGate,1000,  2560.9599609375 ,-1482.41796875 ,27.027013778687  )
		end
	end
end
addEventHandler( "onColShapeLeave", M_OCol, closeM_OGate)]]