local Worm = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/main.lua"))() --Script For The Windows To Work 
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/InterfaceManager.lua"))()
local Player = game.Players.LocalPlayer

local Window = Worm:CreateWindow({
    Title = "Worm",
    SubTitle = "",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

function MakeScriptHub() 
  print("ASDDSFDSFFDSFDS")
end

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Worm.Options

do

Worm:Notify({
        Title = "Logged In!",
        Content = "Successfully Loaded Pls Enter The Key",
        Duration = 2
    })

getgenv().Key = "Password"
getgenv().KeyInput = "string"

local Input = Tabs.Main:AddInput("Input", {
        Title = "Type Key",
        Default = "",
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = true,
        Callback = function(txt)
            getgenv().KeyInput = txt
        end
    })



    Tabs.Main:AddButton({
        Title = "Check Key",
        Description = "Checks The Key",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                        
                                    if getgenv().KeyInput == getgenv().Key then
                                    
                                    Worm:Notify({
    Title = "Checking Key",
    Content = "Please Wait",
    Duration = 3
})
wait(3)
Worm:Notify({
    Title = "Correct Key",
    Content = "The Script Will Load In A Few Seconds.",
    Duration = 2
})
wait(2)
Worm:Destroy()
wait(1)
MakeScriptHub()

else
                            Worm:Notify({
    Title = "Checking Key",
    Content = "Please Wait",
    Duration = 1
})
wait(1)
Worm:Notify({
    Title = "Incorrect Key",
    Content = "Please Get Key The Key.",
    Duration = 2
})
                        end
                                end

                    },
                    {
                        Title = "Cancel",
                        Callback = function()

                        end
                    }
                }
            })
        end
    })

    SaveManager:SetLibrary(Worm)
    InterfaceManager:SetLibrary(Worm)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:SetFolder("WormScriptHub")
    SaveManager:SetFolder("WormScriptHub/specific-game")

    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)


    Window:SelectTab(1)

    Worm:Notify({
        Title = "Worm",
        Content = "The script has been loaded.",
        Duration = 8
    })
    SaveManager:LoadAutoloadConfig()
end
