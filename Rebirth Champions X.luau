local player = game:GetService("Players").LocalPlayer
local ToggleValue1 = false

local function Fire(service, named)
    for _, v in pairs(game:FindFirstChild(service):GetDescendants()) do
        if (v.Name == named) then
            v:FireServer()
        end
    end
end


local function r_print(text)
    rconsoleprint(text)
end

local function r_debug(text)
    rconsoleprint(text..tostring("\n"))
end

local function r_input(text)
    rconsoleprint(text); rconsoleinput()
end

local commands = {}
local commands.AutoFarm = false;
local commands.Gamepasses = false;

if isfolder("shit-hub") then --// executed before
    
else
    makefolder("shit-hub")
    task.wait(5)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/happyspeler/shit-hub/main/Rebirth%20Champions%20X.luau", true))
    return;
end