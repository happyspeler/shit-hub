local _Settings = getgenv()._Settings
local c_plr = game:GetService("Players").LocalPlayer.Character;
local plr = game:GetService("Players").LocalPlayer
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
            if v ~= plr and v.Character.Head:FindFirstChild(esp_name)==nil  then -- creating checks for team check, local player etc
                local Distance = (c_plr.Head.Position - v.Character.Head.Position).Magnitude
                local RoundedDistance = math.floor(Distance)
                esp.Text = v.Name.."| Distance: "..RoundedDistance
                gui:Clone().Parent = v.Character.Head
            end
        end
    end)
else
    print("ESP Disabled");
end

local GameId = game.PlaceId;

