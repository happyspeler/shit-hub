local player = game:GetService("Players").LocalPlayer

local function Fire(service, named)
    for _, v in pairs(game:FindFirstChild(service):GetDescendants()) do
        if (v.Name == named) then
            v:FireServer()
        end
    end
end

