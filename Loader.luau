local _Settings = getgenv()._Settings;
local plr = game:GetService("Players").LocalPlayer;
local c_plr = plr.Character;

if _Settings.ESP == true then --// No boolean needed
    --// ESP made by iRc7
    print("ESP is enabled!")
    local esp_name = "shit-esp"
    local esp_settings = { ---- table for esp settings
        colour = 255, 0, 0
    }

    local gui = Instance.new("BillboardGui")
    local esp = Instance.new("TextLabel",gui) ---- new instances to make the billboard gui and the textlabel



    gui.Name = esp_name; ---- properties of the esp
    gui.ResetOnSpawn = false
    gui.AlwaysOnTop = true;
    gui.LightInfluence = 0;
    gui.Size = UDim2.new(1.75, 0, 1.75, 0);
    esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    esp.Text = ""
    esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
    esp.BorderSizePixel = 4;
    esp.BorderColor3 = Color3.new(esp_settings.colour)
    esp.BorderSizePixel = 0
    esp.Font = "GothamSemibold"
    esp.TextSize = _Settings.ESP_TextSize
    esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour

    game:GetService("RunService").RenderStepped:Connect(function() ---- loops faster than a while loop :)
        for i,v in pairs (game:GetService("Players"):GetPlayers()) do
            if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild(esp_name)==nil  then -- creating checks for team check, local player etc
                esp.Text = v.Name
                gui:Clone().Parent = v.Character.Head
        end
    end
    end)
else
    print("ESP Disabled");
end

local GameId = game.PlaceId;

--// Checking games

if GameId == 155615604 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/happyspeler/shit-hub/main/Games/Prison%20Life.lua"))
end