--Example Hub.lua

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/qqwizzixxxx/qwizzixxxx-Lib/main/Old%20Lib/Old%20Lib.lua"))()

Notification:Notify(
    {Title = "Hub Loading Wait 5 Seconds", Description = "Loading..."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)

wait(5)

local Window = Library.CreateLib("qqwizzixxxx`s Example Hub", "Synapse")

local Tab = Window:NewTab("Welcome")

local Section = Tab:NewSection("Hello Dear [["User"]]!")

Section:NewButton("Copy Discord Invite", "?", function()
    setclipboard("https://discord.gg/cRb8XgsNd7")

    Notification:Notify(
    {Title = "Discord", Description = "Copied"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)

local Tab = Window:NewTab("Player")

local Section = Tab:NewSection("Player`s Hax")

Section:NewTextBox("Speed", "?", function(txt)
	Notification:Notify(
    {Title = "WalkSpeed", Description = "WalkSpeed Edited"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "default"}
)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewTextBox("JumpPower", "?", function(txt)
	Notification:Notify(
    {Title = "JumpPower", Description = "JumpPower Edited"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "default"}
)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

Section:NewToggle("Super Human", "?", function(state)
    if state then
    	Notification:Notify(
    {Title = "Super Human", Description = "Super Human On"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "default"}
)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
    else
    	Notification:Notify(
    {Title = "Super Human", Description = "Super Human Off"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "default"}
)
    	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 56
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

local Tab = Window:NewTab("Script Hub")

local Section = Tab:NewSection("Script Hub!")

Section:NewButton("Infinite Yeild", "?", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
