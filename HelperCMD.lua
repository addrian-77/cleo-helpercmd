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
        imgui.Process = true
    end
end

-- function onWindowMessage(msg, wparam, lparam)
--     if msg == 0x100 or msg == 0x101 then
--         if wparam == keys.VK_ESCAPE and not isPauseMenuActive() then
--             consumeWindowMessage(true, false)
--             for key, value in pairs(dialog) do
--                 if value.v == true then
--                     if key ~= dialog.show_main_menu then
--                         dialog.show_main_menu.v = true
--                         value.v = false
--                     end
--                 end
--             end
--         end
--     end
-- end

-- Dialog logic
function imgui.OnDrawFrame()
    if dialog.show_main_menu.v then
        imgui.Begin("HelperCMD main menu")
        imgui.Text("sample text in main menu")
        if imgui.Button("Next") then
            dialog.show_main_menu.v = false
            dialog.show_cum_menu.v = true
        end
        imgui.End()
    end
    if dialog.show_cum_menu.v then
        imgui.Begin("HelperCMD CUM MENU")
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
    sampAddChatMessage("reached dialog", 0xffffff)    
end