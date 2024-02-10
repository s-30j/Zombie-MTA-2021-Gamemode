local font = guiCreateFont("Data/font/prototype.ttf", 13)
local font1 = guiCreateFont("Data/font/prototype.ttf", 15)
local font2 = guiCreateFont("Data/font/font.ttf", 20)
local font3 = guiCreateFont("Data/font/GOTHIC.ttf", 14)
local font4 = guiCreateFont("Data/font/GOTHIC.ttf", 13)
local font4R = guiCreateFont("Data/font/GOTHIC.ttf", 14)

local font5 = guiCreateFont("Data/font/GOTHIC.ttf", 11.5)
local font5R = guiCreateFont("Data/font/GOTHIC.ttf", 13.5)
local fontmamoriat = guiCreateFont("Data/font/GOTHIC.ttf", 13)
local fontmamoriatR = guiCreateFont("Data/font/GOTHIC.ttf", 14)
local font6 = guiCreateFont("Data/font/ARIALBD.ttf", 12)
local fontsoon = guiCreateFont("Data/font/GOTHIC.ttf", 16)
local screenW, screenH = guiGetScreenSize()
---------------------

addEvent("PlayDaryaft",true)
addEventHandler("PlayDaryaft",getLocalPlayer(),function(player)
		sound = playSound("Data/sound/daryaft.mp3",false)
		setSoundVolume(sound,0.4)
end)


windowchallenge = guiCreateWindow(320, 120, 700, 470, "Shop Zombie MTA", false)
challengeimg = guiCreateStaticImage(5,47,680,415,"Data/image/Cup.png",false, windowchallenge)
guiSetProperty(windowchallenge, "AlwaysOnTop", "True")
guiWindowSetSizable(windowchallenge, false)
guiSetVisible(windowchallenge, false)
guiSetProperty(windowchallenge, "CaptionColour", "FFFFFFFF")



--- Tabs ----

Tab11 = guiCreateTabPanel(9, 22, 680, 460, false, windowchallenge)
Tab1 = guiCreateTab("weapon", Tab11)
Tab3 = guiCreateTab("Ammo", Tab11)
Tab4 = guiCreateTab("item", Tab11)
Tab2 = guiCreateTab("Vehicle", Tab11)






local font111 = guiCreateFont("Data/font/prototype.ttf", 11)
local font211 = guiCreateFont("Data/font/font.ttf", 13)
local font311 = guiCreateFont("Data/font/GOTHIC.ttf", 11)

-------------------------------------------[  chalesh  ]-----------------------------------
scrollitm = guiCreateScrollPane(10, 25, 664, 395, false, Tab4)--- scroll

goldlable23 = guiCreateLabel(310, 130, 360, 50, "Your ZP : ", false, scrollitm)
guiLabelSetColor(goldlable23, 70 , 194 , 235 )
guiSetFont(goldlable23, font6)

-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(260, 185, 120, 100, "Data/itm/c4.png", false, scrollitm)
labal111 = guiCreateLabel(40, 185, 360, 50, "C4 2X", false, scrollitm)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 215, 360, 50, "Baraye Safe ^ Base", false, scrollitm)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 245, 360, 50, "150 ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 245, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
----------------------------22222222-------------------------------
imgg20 = guiCreateStaticImage(240, 295, 150, 80, "Data/itm/tent.png", false, scrollitm)
labal333 = guiCreateLabel(30, 290, 360, 50, "Tent", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 330, 450, 50, "Tent Baraye Loot Ha", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 370, 360, 50, "12 ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 370, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
----------------------------333333333-------------------------------
imgg20 = guiCreateStaticImage(270, 414, 100, 90, "Data/itm/safe.png", false, scrollitm)
labal333 = guiCreateLabel(30, 414, 360, 50, "Safe", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 440, 450, 50, "Safe Baraye Loot Ha", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 470, 460, 50, "90 ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 470, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------444444444444444444444--------------------------
imgg20 = guiCreateStaticImage(220, 510, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 510, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 540, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 570, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 570, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------555555555555555555555--------------------------
imgg20 = guiCreateStaticImage(220, 610, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 620, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 650, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 680, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 680, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------66666666666666666666--------------------------
imgg20 = guiCreateStaticImage(220, 710, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 720, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 750, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 780, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 780, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------77777777777777777777--------------------------
imgg20 = guiCreateStaticImage(220, 812, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 827, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 856, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 890, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 890, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------888888888888888888--------------------------
imgg20 = guiCreateStaticImage(220, 922, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 927, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 956, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 990, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 990, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------9999999999999999--------------------------
imgg20 = guiCreateStaticImage(220, 1022, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1027, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1056, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1090, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1090, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------111111111111111111--------------------------
imgg20 = guiCreateStaticImage(220, 1132, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1137, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1166, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1200, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1200, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------2222222222222222222--------------------------
imgg20 = guiCreateStaticImage(220, 1236	, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1240, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1276, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1310, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1310, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------33333333333333333333--------------------------
imgg20 = guiCreateStaticImage(220, 1336	, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1345, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1376, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1415, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1415, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------4444444444444444444444--------------------------
imgg20 = guiCreateStaticImage(220, 1436	, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1445, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1476, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1515, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1515, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------555555555555555555555--------------------------
imgg20 = guiCreateStaticImage(220, 1536	, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1545, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1576, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1615, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1615, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------6666666666666666666666--------------------------
imgg20 = guiCreateStaticImage(220, 1636	, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1645, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1676, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1715, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1715, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------77777777777777777777777--------------------------
imgg20 = guiCreateStaticImage(220, 1736	, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1745, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1776, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1815, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1815, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------88888888888888888888888--------------------------
imgg20 = guiCreateStaticImage(220, 1836	, 170, 100, "", false, scrollitm)
labal333 = guiCreateLabel(30, 1845, 360, 50, "new item", false, scrollitm)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1876, 450, 50, "???", false, scrollitm)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1915, 460, 50, "? ZP", false, scrollitm)
img1 = guiCreateStaticImage(60, 1915, 26, 26, "Data/image/img1.png", false, scrollitm)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)

khat1 = guiCreateLabel(30, 160, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat1, 100 , 100 , 100)
khat2 = guiCreateLabel(30, 265, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat2, 100 , 100 , 100)
khat3 = guiCreateLabel(30, 390, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat3, 100 , 100 , 100)
khat4 = guiCreateLabel(30, 494, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat4, 100 , 100 , 100)
khat5 = guiCreateLabel(30, 599, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat5, 100 , 100 , 100)
khat6 = guiCreateLabel(30, 703, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat6, 100 , 100 , 100)
khat7 = guiCreateLabel(30, 807, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat7, 100 , 100 , 100)
khat8 = guiCreateLabel(30, 911, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat8, 80 , 80 , 80)
khat9 = guiCreateLabel(30, 1015, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat9, 80 , 80 , 80)
khat10 = guiCreateLabel(30, 1122, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat10, 80 , 80 , 80)
khat11 = guiCreateLabel(30, 1226, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat11, 80 , 80 , 80)
khat12 = guiCreateLabel(30, 1330, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat12, 80 , 80 , 80)
khat13 = guiCreateLabel(30, 1434, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat13, 80 , 80 , 80)
khat14 = guiCreateLabel(30, 1530, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat14, 80 , 80 , 80)
khat15 = guiCreateLabel(30, 1630, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat15, 80 , 80 , 80)
khat16 = guiCreateLabel(30, 1730, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat16, 80 , 80 , 80)
khat17 = guiCreateLabel(30, 1830, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat17, 80 , 80 , 80)
khat18 = guiCreateLabel(30, 1930, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollitm)
guiLabelSetColor(khat18, 80 , 80 , 80)


daryafit2 = guiCreateButton(535, 214, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit2, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit2, font3)

daryafit3 = guiCreateButton(535, 339, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit3, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit3, font3)

daryafit4 = guiCreateButton(535, 443, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit4, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit4, font3)

daryafit5 = guiCreateButton(535, 548, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit5, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit5, font3)

-- Challenge 6
daryafit6 = guiCreateButton(535, 653, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit6, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit6, font3)

-- Challenge 7
daryafit7 = guiCreateButton(535, 758, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit7, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit7, font3)

-- Challenge 8
daryafit8 = guiCreateButton(535, 863, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit8, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit8, font3)

-- Challenge 9
daryafit9 = guiCreateButton(535, 968, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit9, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit9, font3)

-- Challenge 10
daryafit10 = guiCreateButton(535, 1073, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit10, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit10, font3)

-- Challenge 11
daryafit11 = guiCreateButton(535, 1178, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit11, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit11, font3)
--guiSetEnabled(daryaft11, false)

-- Challenge 12
daryafit12 = guiCreateButton(535, 1283, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit12, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit12, font3)
--guiSetEnabled(daryaft12, false)

-- Challenge 13
daryafit13 = guiCreateButton(535, 1388, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit13, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit13, font3)

-- Challenge 14
daryafit14 = guiCreateButton(535, 1488, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit14, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit14, font3)
--guiSetEnabled(daryaft14, false)

-- Challenge 15
daryafit15 = guiCreateButton(535, 1588, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit15, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit15, font3)
--guiSetEnabled(daryaft15, false)

-- Challenge 16
daryafit16 = guiCreateButton(535, 1688, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit16, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit16, font3)
--guiSetEnabled(daryaft16, false)

-- Challenge 17
daryafit17 = guiCreateButton(535, 1788, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit17, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit17, font3)
----guiSetEnabled(daryaft17, false)

-- Challenge 18
daryafit18 = guiCreateButton(535, 1888, 100, 35, "Buy", false, scrollitm)
guiSetProperty(daryafit18, "NormalTextColour", "FF00FF00")
guiSetFont(daryafit18, font3)












-------------------------------------------------------------------------------



-------------------------------------------[  Ammo  ]-----------------------------------
scrollAmmo = guiCreateScrollPane(10, 25, 664, 395, false, Tab3)--- scroll

goldlable2 = guiCreateLabel(310, 130, 360, 50, "Your ZP : ", false, scrollAmmo)
guiLabelSetColor(goldlable2, 70 , 194 , 235 )
guiSetFont(goldlable2, font6)

-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(260, 170, 200, 100, "Data/mags/bolt.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 185, 360, 50, "Bolt", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 215, 360, 50, "Gun : Crossbow", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 245, 360, 50, "4 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 245, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
------==-------------------------------====--------------------------------
imgg20 = guiCreateStaticImage(300, 290, 100, 80, "Data/mags/heavy.png", false, scrollAmmo)
labal333 = guiCreateLabel(30, 290, 360, 50, "5_56Box Mag", false, scrollAmmo)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 330, 450, 50, "Gun : MK 48 CCO & RPK", false, scrollAmmo)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 370, 360, 50, "15 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 370, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 410, 120, 80, "Data/mags/pistol.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 410, 360, 50, "_45ACP Mag", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 445, 360, 50, "Gun : G17 & M9 SD & M1911", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 475, 360, 50, "2 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 475, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 520, 120, 80, "Data/mags/revolver.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 510, 360, 50, "_45ACP Clip", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 545, 360, 50, "Gun : Revolver", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 575, 360, 50, "5 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 575, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 620, 120, 80, "Data/mags/semirifle.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 615, 360, 50, "5_45x39 Mag", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 650, 360, 50, "Gun : Micro UZI & MP5A5", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 680, 360, 50, "5 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 680, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 725, 120, 80, "Data/mags/m4rifle.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 720, 360, 50, "7_62x39 Mag", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 755, 360, 50, "Gun : M4A1 Holo", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 785, 360, 50, "5 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 785, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 825, 120, 80, "Data/mags/rifle.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 820, 360, 50, "7_62 Mag", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 855, 360, 50, "Gun : SA-58V ACOG & AK & AKS &&", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 885, 360, 50, "8 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 885, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 930, 120, 80, "Data/mags/shotgun.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 925, 360, 50, "_10 Bullets", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 960, 360, 50, "Gun : Winchester 1866 & Saiga 12K", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 990, 360, 50, "3 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 990, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 1035, 120, 80, "Data/mags/sniper.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 1030, 360, 50, "_300 Bullets", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 1065, 360, 50, "Gun : CZ 550 & SVD Dragunov & M24", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 1095, 360, 50, "7 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 1095, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(300, 1140, 120, 80, "Data/mags/sniper2.png", false, scrollAmmo)
labal111 = guiCreateLabel(30, 1135, 360, 50, "_303 Bullets", false, scrollAmmo)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 1170, 360, 50, "Gun : VKS & DMR", false, scrollAmmo)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 1200, 360, 50, "10 ZP", false, scrollAmmo)
img1 = guiCreateStaticImage(60, 1200, 26, 26, "Data/image/img1.png", false, scrollAmmo)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)


daryaftAmmo1 = guiCreateButton(535, 214, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo1, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo1, font3)

daryaftAmmo2 = guiCreateButton(535, 339, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo2, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo2, font3)

daryaftAmmo3 = guiCreateButton(535, 443, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo3, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo3, font3)

daryaftAmmo4 = guiCreateButton(535, 548, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo4, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo4, font3)

-- Challenge 6
daryaftAmmo5 = guiCreateButton(535, 653, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo5, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo5, font3)

-- Challenge 7
daryaftAmmo6 = guiCreateButton(535, 758, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo6, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo6, font3)

-- Challenge 8
daryaftAmmo7 = guiCreateButton(535, 863, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo7, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo7, font3)

-- Challenge 9
daryaftAmmo8 = guiCreateButton(535, 968, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo8, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo8, font3)

-- Challenge 10
daryaftAmmo9 = guiCreateButton(535, 1073, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo9, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo9, font3)

-- Challenge 11
daryaftAmmo10 = guiCreateButton(535, 1178, 100, 35, "Buy", false, scrollAmmo)
guiSetProperty(daryaftAmmo10, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftAmmo10, font3)
--guiSetEnabled(daryaft11, false)


khat1 = guiCreateLabel(30, 160, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat1, 100 , 100 , 100)
khat2 = guiCreateLabel(30, 265, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat2, 100 , 100 , 100)
khat3 = guiCreateLabel(30, 390, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat3, 100 , 100 , 100)
khat4 = guiCreateLabel(30, 494, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat4, 100 , 100 , 100)
khat5 = guiCreateLabel(30, 599, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat5, 100 , 100 , 100)
khat6 = guiCreateLabel(30, 703, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat6, 100 , 100 , 100)
khat7 = guiCreateLabel(30, 807, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat7, 100 , 100 , 100)
khat8 = guiCreateLabel(30, 911, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat8, 80 , 80 , 80)
khat9 = guiCreateLabel(30, 1015, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat9, 80 , 80 , 80)
khat10 = guiCreateLabel(30, 1122, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat10, 80 , 80 , 80)
khat11 = guiCreateLabel(30, 1226, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollAmmo)
guiLabelSetColor(khat11, 80 , 80 , 80)





-------------------------------------------[  Veh  ]-----------------------------------
scrollVehicle = guiCreateScrollPane(10, 25, 664, 395, false, Tab2)--- scroll

goldlable1 = guiCreateLabel(310, 130, 360, 50, "Your ZP : ", false, scrollVehicle)
guiLabelSetColor(goldlable1, 70 , 194 , 235 )
guiSetFont(goldlable1, font6)

-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(220, 170, 200, 100, "Data/wp/MH6J.png", false, scrollVehicle)
labal111 = guiCreateLabel(30, 185, 360, 50, "Heli MH6J", false, scrollVehicle)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 215, 360, 50, "speed : 200 KM/H", false, scrollVehicle)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 245, 360, 50, "490 ZP", false, scrollVehicle)
img1 = guiCreateStaticImage(60, 245, 26, 26, "Data/image/img1.png", false, scrollVehicle)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
------==-------------------------------====--------------------------------
imgg20 = guiCreateStaticImage(220, 290, 200, 100, "Data/wp/AH6X.png", false, scrollVehicle)
labal333 = guiCreateLabel(30, 290, 360, 50, "Heli AH6X", false, scrollVehicle)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 330, 450, 50, "speed : 200 KM/H", false, scrollVehicle)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 370, 360, 50, "500 ZP", false, scrollVehicle)
img1 = guiCreateStaticImage(60, 370, 26, 26, "Data/image/img1.png", false, scrollVehicle)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------==-------------------------------====--------------------------------
imgg20 = guiCreateStaticImage(220, 403, 200, 100, "Data/veh/motor.png", false, scrollVehicle)
labal333 = guiCreateLabel(30, 410, 360, 50, "Motor", false, scrollVehicle)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 440, 450, 50, "speed : 160 KM/H", false, scrollVehicle)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 475, 360, 50, "180 ZP", false, scrollVehicle)
img1 = guiCreateStaticImage(60, 475, 26, 26, "Data/image/img1.png", false, scrollVehicle)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------==-------------------------------====--------------------------------
imgg20 = guiCreateStaticImage(220, 503, 200, 100, "Data/veh/UAZ.png", false, scrollVehicle)
labal333 = guiCreateLabel(30, 510, 360, 50, "UAZ", false, scrollVehicle)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 540, 450, 50, "speed : 130 KM/H", false, scrollVehicle)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 575, 360, 50, "200 ZP", false, scrollVehicle)
img1 = guiCreateStaticImage(60, 575, 26, 26, "Data/image/img1.png", false, scrollVehicle)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------==-------------------------------====--------------------------------
imgg20 = guiCreateStaticImage(220, 605, 200, 100, "Data/veh/FBI.png", false, scrollVehicle)
labal333 = guiCreateLabel(30, 615, 360, 50, "FBI", false, scrollVehicle)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 640, 450, 50, "speed : 160 KM/H", false, scrollVehicle)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 680, 360, 50, "360 ZP", false, scrollVehicle)
img1 = guiCreateStaticImage(60, 680, 26, 26, "Data/image/img1.png", false, scrollVehicle)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------==-------------------------------====--------------------------------
imgg20 = guiCreateStaticImage(220, 725, 200, 100, "Data/veh/Bobcat.png", false, scrollVehicle)
labal333 = guiCreateLabel(30, 725, 360, 50, "Bobcat", false, scrollVehicle)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 750, 450, 50, "speed : 140 KM/H", false, scrollVehicle)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 790, 360, 50, "280 ZP", false, scrollVehicle)
img1 = guiCreateStaticImage(60, 790, 26, 26, "Data/image/img1.png", false, scrollVehicle)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)





daryaftVeh = guiCreateButton(535, 214, 100, 35, "Buy", false, scrollVehicle)
guiSetProperty(daryaftVeh, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftVeh, font3)

daryaftVeh2 = guiCreateButton(535, 339, 100, 35, "Buy", false, scrollVehicle)
guiSetProperty(daryaftVeh2, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftVeh2, font3)

daryaftVeh3 = guiCreateButton(535, 439, 100, 35, "Buy", false, scrollVehicle)
guiSetProperty(daryaftVeh3, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftVeh3, font3)


daryaftVeh4 = guiCreateButton(535, 539, 100, 35, "Buy", false, scrollVehicle)
guiSetProperty(daryaftVeh4, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftVeh4, font3)

daryaftVeh5 = guiCreateButton(535, 639, 100, 35, "Buy", false, scrollVehicle)
guiSetProperty(daryaftVeh5, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftVeh5, font3)

daryaftVeh6 = guiCreateButton(535, 739, 100, 35, "Buy", false, scrollVehicle)
guiSetProperty(daryaftVeh6, "NormalTextColour", "FF00FF00")
guiSetFont(daryaftVeh6, font3)


khat1 = guiCreateLabel(30, 160, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat1, 100 , 100 , 100)
khat2 = guiCreateLabel(30, 265, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat2, 100 , 100 , 100)
khat3 = guiCreateLabel(30, 390, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat3, 100 , 100 , 100)
khat4 = guiCreateLabel(30, 494, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat4, 100 , 100 , 100)
khat5 = guiCreateLabel(30, 599, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat5, 100 , 100 , 100)
khat6 = guiCreateLabel(30, 703, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat6, 100 , 100 , 100)
khat7 = guiCreateLabel(30, 807, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat7, 100 , 100 , 100)
khat8 = guiCreateLabel(30, 911, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat8, 80 , 80 , 80)
khat9 = guiCreateLabel(30, 1015, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat9, 80 , 80 , 80)
khat10 = guiCreateLabel(30, 1122, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollVehicle)
guiLabelSetColor(khat10, 80 , 80 , 80)

---------  **********----------           TabReferral           **********----------**********----------


local font111 = guiCreateFont("Data/font/prototype.ttf", 11)
local font211 = guiCreateFont("Data/font/font.ttf", 13)
local font311 = guiCreateFont("Data/font/GOTHIC.ttf", 11)

-------------------------------------------[  chalesh  ]-----------------------------------
scrollchallenge = guiCreateScrollPane(10, 25, 664, 395, false, Tab1)--- scroll

goldlable = guiCreateLabel(310, 130, 360, 50, "Your ZP : ", false, scrollchallenge)
guiLabelSetColor(goldlable, 70 , 194 , 235 )
guiSetFont(goldlable, font6)

-----------------------------------------------11111------------------------------------------------------
imgg19 = guiCreateStaticImage(220, 185, 170, 100, "Data/wp/aksgold.png", false, scrollchallenge)
labal111 = guiCreateLabel(30, 185, 360, 50, "Aks-Gold", false, scrollchallenge)
guiLabelSetColor(labal111, 70 , 194 , 235 )
guiSetFont(labal111, fontmamoriat)
labal1 = guiCreateLabel(30, 215, 360, 50, "Damage : 4500", false, scrollchallenge)
guiLabelSetColor(labal1, 255 , 255 , 255 )
guiSetFont(labal1, font6)
labal11 = guiCreateLabel(100, 245, 360, 50, "80 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 245, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal11, 203 , 253 , 172 )
guiSetFont(labal11, font5)
----------------------------22222222-------------------------------
imgg20 = guiCreateStaticImage(220, 295, 170, 100, "Data/wp/ak107.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 290, 360, 50, "AK-107", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 330, 450, 50, "Damage : 3600", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 370, 360, 50, "70 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 370, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
----------------------------333333333-------------------------------
imgg20 = guiCreateStaticImage(220, 414, 170, 100, "Data/wp/aks74u.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 414, 360, 50, "AKS-74U", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 440, 450, 50, "Damage : 3850", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 470, 460, 50, "75 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 470, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------444444444444444444444--------------------------
imgg20 = guiCreateStaticImage(220, 510, 170, 100, "Data/wp/m4a1holo.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 510, 360, 50, "M4A1-Holo", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 540, 450, 50, "Damage : ", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 570, 460, 50, "65 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 570, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------555555555555555555555--------------------------
imgg20 = guiCreateStaticImage(220, 610, 170, 100, "Data/wp/rpk.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 620, 360, 50, "RPK", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 650, 450, 50, "Damage : 2800", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 680, 460, 50, "70 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 680, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------66666666666666666666--------------------------
imgg20 = guiCreateStaticImage(220, 710, 170, 100, "Data/wp/mk48.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 720, 360, 50, "MK 48 CCO", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 750, 450, 50, "Damage : 3200", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 780, 460, 50, "80 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 780, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------77777777777777777777--------------------------
imgg20 = guiCreateStaticImage(220, 812, 170, 100, "Data/wp/sa58.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 827, 360, 50, "SA-58V ACOG", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 856, 450, 50, "Damage : 2755", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 890, 460, 50, "70 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 890, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------888888888888888888--------------------------
imgg20 = guiCreateStaticImage(220, 922, 170, 100, "Data/wp/mp5a5.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 927, 360, 50, "MP5A5", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 956, 450, 50, "Damage : 2132", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 990, 460, 50, "50 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 990, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------9999999999999999--------------------------
imgg20 = guiCreateStaticImage(220, 1022, 170, 100, "Data/wp/microuzi.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1027, 360, 50, "Micro UZI", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1056, 450, 50, "Damage : 1934", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1090, 460, 50, "40 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1090, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------111111111111111111--------------------------
imgg20 = guiCreateStaticImage(220, 1132, 170, 100, "Data/wp/winchester1866.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1137, 360, 50, "Winchester 1866", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1166, 450, 50, "Damage : 4276", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1200, 460, 50, "30 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1200, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------2222222222222222222--------------------------
imgg20 = guiCreateStaticImage(220, 1236	, 170, 100, "Data/wp/saiga12k.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1240, 360, 50, "Saiga 12K", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1276, 450, 50, "Damage : 2321", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1310, 460, 50, "20 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1310, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------33333333333333333333--------------------------
imgg20 = guiCreateStaticImage(220, 1336	, 170, 100, "Data/wp/crossbow.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1345, 360, 50, "Crossbow", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1376, 450, 50, "Damage : 3900", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1415, 460, 50, "37 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1415, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------4444444444444444444444--------------------------
imgg20 = guiCreateStaticImage(220, 1436	, 170, 100, "Data/wp/m24.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1445, 360, 50, "M24", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1476, 450, 50, "Damage : 5600", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1515, 460, 50, "100 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1515, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------555555555555555555555--------------------------
imgg20 = guiCreateStaticImage(220, 1536	, 170, 100, "Data/wp/svdcamo.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1545, 360, 50, "SVD Dragunov Camo", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1576, 450, 50, "Damage : 7500", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1615, 460, 50, "150 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1615, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------6666666666666666666666--------------------------
imgg20 = guiCreateStaticImage(220, 1636	, 170, 100, "Data/wp/cz550.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1645, 360, 50, "CZ 550", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1676, 450, 50, "Damage : 7800", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1715, 460, 50, "160 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1715, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------77777777777777777777777--------------------------
imgg20 = guiCreateStaticImage(220, 1736	, 170, 100, "Data/wp/dmr.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1745, 360, 50, "DMR", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1776, 450, 50, "Damage : 9200", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1815, 460, 50, "200 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1815, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)
------------------------88888888888888888888888--------------------------
imgg20 = guiCreateStaticImage(220, 1836	, 170, 100, "Data/wp/vks.png", false, scrollchallenge)
labal333 = guiCreateLabel(30, 1845, 360, 50, "VKS", false, scrollchallenge)
guiLabelSetColor(labal333, 70 , 194 , 235 )
guiSetFont(labal333, fontmamoriat)
labal3 = guiCreateLabel(30, 1876, 450, 50, "Damage : 47000", false, scrollchallenge)
guiLabelSetColor(labal3, 255 , 255 , 255 )
guiSetFont(labal3, font6)
labal33 = guiCreateLabel(100, 1915, 460, 50, "500 ZP", false, scrollchallenge)
img1 = guiCreateStaticImage(60, 1915, 26, 26, "Data/image/img1.png", false, scrollchallenge)
guiLabelSetColor(labal33, 203 , 253 , 172 )
guiSetFont(labal33, font5)

khat1 = guiCreateLabel(30, 160, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat1, 100 , 100 , 100)
khat2 = guiCreateLabel(30, 265, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat2, 100 , 100 , 100)
khat3 = guiCreateLabel(30, 390, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat3, 100 , 100 , 100)
khat4 = guiCreateLabel(30, 494, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat4, 100 , 100 , 100)
khat5 = guiCreateLabel(30, 599, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat5, 100 , 100 , 100)
khat6 = guiCreateLabel(30, 703, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat6, 100 , 100 , 100)
khat7 = guiCreateLabel(30, 807, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat7, 100 , 100 , 100)
khat8 = guiCreateLabel(30, 911, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat8, 80 , 80 , 80)
khat9 = guiCreateLabel(30, 1015, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat9, 80 , 80 , 80)
khat10 = guiCreateLabel(30, 1122, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat10, 80 , 80 , 80)
khat11 = guiCreateLabel(30, 1226, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat11, 80 , 80 , 80)
khat12 = guiCreateLabel(30, 1330, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat12, 80 , 80 , 80)
khat13 = guiCreateLabel(30, 1434, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat13, 80 , 80 , 80)
khat14 = guiCreateLabel(30, 1530, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat14, 80 , 80 , 80)
khat15 = guiCreateLabel(30, 1630, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat15, 80 , 80 , 80)
khat16 = guiCreateLabel(30, 1730, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat16, 80 , 80 , 80)
khat17 = guiCreateLabel(30, 1830, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat17, 80 , 80 , 80)
khat18 = guiCreateLabel(30, 1930, 600, 20, "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ", false, scrollchallenge)
guiLabelSetColor(khat18, 80 , 80 , 80)


daryaft2 = guiCreateButton(535, 214, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft2, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft2, font3)

daryaft3 = guiCreateButton(535, 339, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft3, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft3, font3)

daryaft4 = guiCreateButton(535, 443, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft4, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft4, font3)

daryaft5 = guiCreateButton(535, 548, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft5, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft5, font3)

-- Challenge 6
daryaft6 = guiCreateButton(535, 653, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft6, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft6, font3)

-- Challenge 7
daryaft7 = guiCreateButton(535, 758, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft7, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft7, font3)

-- Challenge 8
daryaft8 = guiCreateButton(535, 863, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft8, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft8, font3)

-- Challenge 9
daryaft9 = guiCreateButton(535, 968, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft9, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft9, font3)

-- Challenge 10
daryaft10 = guiCreateButton(535, 1073, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft10, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft10, font3)

-- Challenge 11
daryaft11 = guiCreateButton(535, 1178, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft11, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft11, font3)
--guiSetEnabled(daryaft11, false)

-- Challenge 12
daryaft12 = guiCreateButton(535, 1283, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft12, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft12, font3)
--guiSetEnabled(daryaft12, false)

-- Challenge 13
daryaft13 = guiCreateButton(535, 1388, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft13, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft13, font3)

-- Challenge 14
daryaft14 = guiCreateButton(535, 1488, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft14, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft14, font3)
--guiSetEnabled(daryaft14, false)

-- Challenge 15
daryaft15 = guiCreateButton(535, 1588, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft15, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft15, font3)
--guiSetEnabled(daryaft15, false)

-- Challenge 16
daryaft16 = guiCreateButton(535, 1688, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft16, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft16, font3)
--guiSetEnabled(daryaft16, false)

-- Challenge 17
daryaft17 = guiCreateButton(535, 1788, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft17, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft17, font3)
----guiSetEnabled(daryaft17, false)

-- Challenge 18
daryaft18 = guiCreateButton(535, 1888, 100, 35, "Buy", false, scrollchallenge)
guiSetProperty(daryaft18, "NormalTextColour", "FF00FF00")
guiSetFont(daryaft18, font3)



--> Bad Az Click Jayze Bede
addEventHandler("onClientGUIClick", getRootElement(),
function ()
	if source == daryaft2 then
		triggerServerEvent("Bede1", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft3 then
		triggerServerEvent("Bede2", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft4 then
		triggerServerEvent("Bede3", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft5 then
		triggerServerEvent("Bede4", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft6 then
		triggerServerEvent("Bede5", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft7 then
		triggerServerEvent("Bede6", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft8 then
		triggerServerEvent("Bede7", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft9 then
		triggerServerEvent("Bede8", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft10 then
		triggerServerEvent("Bede9", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft11 then
		triggerServerEvent("Bede10", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft12 then
		triggerServerEvent("Bede11", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft13 then
		triggerServerEvent("Bede12", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft14 then
		triggerServerEvent("Bede13", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft15 then
		triggerServerEvent("Bede14", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft16 then
		triggerServerEvent("Bede15", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft17 then
		triggerServerEvent("Bede16", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaft18 then
		triggerServerEvent("Bede17", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo1 then
		triggerServerEvent("Ammo1", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo2 then
		triggerServerEvent("Ammo2", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo3 then
		triggerServerEvent("Ammo3", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo4 then
		triggerServerEvent("Ammo4", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo5 then
		triggerServerEvent("Ammo5", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo6 then
		triggerServerEvent("Ammo6", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo7 then
		triggerServerEvent("Ammo7", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo8 then
		triggerServerEvent("Ammo8", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo9 then
		triggerServerEvent("Ammo9", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftAmmo10 then
		triggerServerEvent("Ammo10", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryafit2 then
		triggerServerEvent("item1", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryafit3 then
		triggerServerEvent("item2", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryafit4 then
		triggerServerEvent("item3", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftVeh then
		triggerServerEvent("BedeV1", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftVeh2 then
		triggerServerEvent("BedeV2", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftVeh3 then
		triggerServerEvent("BedeV3", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftVeh4 then
		triggerServerEvent("BedeV4", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftVeh5 then
		triggerServerEvent("BedeV5", getLocalPlayer(), getLocalPlayer() )
	elseif source == daryaftVeh6 then
		triggerServerEvent("BedeV6", getLocalPlayer(), getLocalPlayer() )
	end
end)





--|||--------------------------------------|||--
bindKey('F6', 'down',
--addCommandHandler("test",
function ()
    --if getElementData(getLocalPlayer(), "loggedIn") == true then
        local windowState = guiGetProperty(windowchallenge, "Visible")
	    if windowState == "False" then
		    guiSetProperty(windowchallenge, "Visible", "True")
		    showCursor(true)
			triggerServerEvent("PanelUpdAteBeshe", getLocalPlayer(), getLocalPlayer() )
    	else
        guiSetProperty(windowchallenge, "Visible", "False")
            showCursor(false)
        end
	--end
end)


function updateStats( root, goldtedad)
	if root == getLocalPlayer() then
		    gold = tostring(goldtedad)
			guiSetText ( goldlable, "Your ZP : "..gold)   
			guiSetText ( goldlable1, "Your ZP : "..gold)   
			guiSetText ( goldlable2, "Your ZP : "..gold)   
			guiSetText ( goldlable23, "Your ZP : "..gold)   
			
	end
end
addEvent("upstatss",true)
addEventHandler("upstatss", getRootElement(), updateStats)