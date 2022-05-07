local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("shit-hub - Prison Life", "Sentinel");

local Tab1 = Window:NewTab("Guns");
local GunSection = Tab1:NewSection("Guns");

GunSection:NewButton("Grab All Guns", "Gets all guns", function()
    for _, v in ipairs(game.Workspace.Prison_ITEMS.giver:GetChildren()) do
        local GrabGunsArg = {
            [1] = game.Workspace.Prison_ITEMS.giver[v.Name].ITEMPICKUP
        }
        game.Workspace.Remote.ItemHandler:InvokeServer(unpack(GrabGunsArg))
    end
end)