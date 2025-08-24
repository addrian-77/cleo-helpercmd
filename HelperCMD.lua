local sampev = require ('lib.samp.events')
local imgui = require ('imgui')
local vkeys = require('vkeys')

local dialog = {
    show_main_menu = imgui.ImBool(false),
    show_cum_menu = imgui.ImBool(false),
    show_ce_menu = imgui.ImBool(false),
    show_licente_menu = imgui.ImBool(false)
}  

function main()
    while not isSampAvailable() do
        wait(100)
    end

    -- Dialog
    -- sampRegisterChatCommand("helpercmd", helpercmd)
    sampRegisterChatCommand("hcmd2", helpercmd)

    -- -- Licente
    -- sampRegisterChatCommand("cumlic", culmlic)
    
    -- -- Masini
    -- sampRegisterChatCommand("ds", ds)
    -- sampRegisterChatCommand("costa", costa)
    -- sampRegisterChatCommand("viteza", viteza)
    -- sampRegisterChatCommand("stock", stock)

    sampAddChatMessage("LUA HELPERCMD COMMANDS LOADED", 0xffffff)
    while true do
        wait(0)
    end
end

function onWindowMessage(msg, wparam, lparam)
    if msg == 0x101 and wparam == vkeys.VK_ESCAPE then
        sampAddChatMessage("released escape", 0xffffff)
    end
    if msg == 0x100 or msg == 0x101 then
        if wparam == vkeys.VK_ESCAPE then
            if dialog.show_main_menu.v == false then
                for key, value in pairs(dialog) do
                    if value.v == true then
                        if key ~= "show_main_menu" then
                            if msg == 0x101 then
                                sampAddChatMessage("if", 0xffffff)
                                value.v = false
                                dialog.show_main_menu.v = true
                            end
                            consumeWindowMessage(true, false)
                        end
                    end
                end
            else
                if msg == 0x101 then 
                    sampAddChatMessage("else", 0xffffff)
                    dialog.show_main_menu.v = false
                    imgui.Process = false
                end
                consumeWindowMessage(true, false)
            end 
        end
    end
end

-- Dialog logic
function imgui.OnDrawFrame()
    if dialog.show_main_menu.v then
        local sw, sh = getScreenResolution()
        imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(200, 300), imgui.Cond.FirstUseEver)
        imgui.Begin("HelperCMD main menu", imgui.WindowFlags.NoMove, imgui.WindowFlags.NoCollapse, imgui.WindowFlags.NoResize)
        imgui.Text("sample text in main menu")
        if imgui.Button("Next") then
            dialog.show_main_menu.v = false
            dialog.show_cum_menu.v = true
        end
        imgui.End()
    end
    if dialog.show_cum_menu.v then
        local sw, sh = getScreenResolution()
        imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(200, 300), imgui.Cond.FirstUseEver)
        imgui.Begin("HelperCMD cum menu", imgui.WindowFlags.NoMove, imgui.WindowFlags.NoCollapse, imgui.WindowFlags.NoResize)
        imgui.Text("sample text in CUM MENU")
        if imgui.Button("Previous") then
            dialog.show_main_menu.v = true
            dialog.show_cum_menu.v = false
        end
        imgui.End()
    end
end

-- Commands implementation
function helpercmd()
    sampAddChatMessage("reached dialog", 0xffffff)
    dialog.show_main_menu.v = true
    imgui.Process = true
    sampAddChatMessage("reached dialog", 0xffffff)    
end