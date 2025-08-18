local Worm = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/InterfaceManager.lua"))()

local Window = Worm:CreateWindow({
    Title = "Worm",
    SubTitle = "- TYPE://SOUL",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    ESP = Window:AddTab({ Title = "ESP", Icon = "eye" }),
    Parry = Window:AddTab({ Title = "Parry", Icon = "shield" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Worm.Options

do
    local Section = Tabs.Main:AddSection("Auto Farm")

        

end

SaveManager:SetLibrary(Worm)
InterfaceManager:SetLibrary(Worm)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("WormScriptHub")
SaveManager:SetFolder("WormScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

SaveManager:LoadAutoloadConfig()
