
--// Functions
local function Fire(service, named)
    for _, v in ipairs(game:FindFirstChild(service):GetDescendants()) do
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


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/elsiahrekeno/reductui/main/source.lua"))()

local Window = Library.Window({
    Title = "shit-hub"
})

local Category = Window.Category({
    Title = "very shit."
})

