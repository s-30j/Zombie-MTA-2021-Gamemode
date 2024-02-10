-- Tiny optimisations
local min = math.min
local floor = math.floor
local format = string.format

-- Local variables
local screenX, screenY = guiGetScreenSize()
local isVisible = false 

-- Local tables
local data = {}

-- Local functions
local function renderBrowser()
    dxDrawImage(0, 0, screenX, screenY, data.browser)
end

local function loadBrowser()
    loadBrowserURL(source, "http://mta/local/html/box.html")
end

local function init()
    data.browser = createBrowser(screenX, screenY, true, true)

    if data.browser then
        addEventHandler("onClientBrowserCreated", data.browser, loadBrowser)
    end
end

local function showTransferBox()
    isVisible = true
    addEventHandler("onClientRender", root, renderBrowser)
end

local function hideTransferBox()
    isVisible = false
    removeEventHandler("onClientRender", root, renderBrowser)
end

local function progressChange(downloadedSize, totalSize)
    if not data.browser then
        return false
    end

    if isVisible == false then
        showTransferBox()
    else
        local percentage = floor(min((downloadedSize / totalSize) * 100, 100))
        local downloaded = format("%.2f", downloadedSize / 1024 / 1024)
        local total = format("%.2f", totalSize / 1024 / 1024)

        executeBrowserJavascript(data.browser, "document.querySelector('.bar-progress').style.width = '" .. percentage .. "%'")
        executeBrowserJavascript(data.browser, "document.querySelector('.text-progress span').innerHTML = 'Dar Hal Download Server ... (" .. floor(percentage) .. "%)'")
        executeBrowserJavascript(data.browser, "document.querySelector('.text-progress small').innerHTML = '" .. downloaded .. " MB of " .. total .. " MB'")
    end
end

local function everyResource(res)
    if getResourceName(res) ~= "transferbox" then
        hideTransferBox()
    end
end

-- MTA Events
addEventHandler("onClientResourceStart", resourceRoot, init)
addEventHandler("onClientResourceStart", root, everyResource)
addEventHandler("onClientTransferBoxProgressChange", root, progressChange)