--Example Hub
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/qqwizzixxxx/qwizzixxxx-Lib/main/Lib.lua"))()
local Window = Library.CreateLib("qqwizzixxxx`s Example Hub", "Synapse")

local Tab = Window:NewTab("Welcome")

print("qqwizzixxxx`s Example Hub V1 Was Loaded")

local Section = Tab:NewSection("Hello Dear User!")

local Tab = Window:NewTab("Player")

local Section = Tab:NewSection("Player`s Hax")

Section:NewTextBox("Speed", "?", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewTextBox("JumpPower", "?", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

Section:NewToggle("Super Human", "?", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
    else
    	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 56
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

local Tab = Window:NewTab("Script Hub")

local Section = Tab:NewSection("Script Hub!")

Section:NewButton("Infinite Yeild", "?", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
