--Old ReadMe

--Lib Functions Here:

--[Example] Hub:loadstring(game:HttpGet(""))()

--Lib
local Library = loadstring(game:HttpGet(""))()

--Window
local Window = Library.CreateLib("TITLE", "DarkTheme")

--[ Themes:
    LightTheme
    DarkTheme
    GrapeTheme
    BloodTheme
    Ocean
    Midnight
    Sentinel
    Synapse
    Sky ]--


--New Tab
local Tab = Window:NewTab("TabName")

--New Section
local Section = Tab:NewSection("Section Name")

--Update Section
Section:UpdateSection("Section New Title")

--New Label
Section:NewLabel("LabelText")

--Update Label
label:UpdateLabel("New Text")

--New Button
--You Can Put Your Script
Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Test")
end)

--Update Button
button:UpdateButton("New Text")

--New Toggle
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

--Update Toggles
getgenv().Toggled = false

local toggle = Section:NewToggle("Toggle", "Info", (state)
    getgenv().Toggled = state
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if getgenv().Toggled then
		toggle:UpdateToggle("Toggle On")
	else
		toggle:UpdateToggle("Toggle Off")
	end
end)

--New Slider
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

--New TextBox
Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

--New KeyBinds
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

--Toggling UI with Keybinds
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

--New DropDown
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

--DropDown ReFresh
local oldList = {
  "2019",
  "2020"
}
local newList = {
  "2021",
  "2022"
}
local dropdown = Section:NewDropdown("Dropdown","Info", oldList, function()

end)
Section:NewButton("Update Dropdown", "Refreshes Dropdown", function()
  dropdown:Refresh(newList)
end)

--New Color Picker
Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

--You Own Theme
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255), -- Edit()
    Background = Color3.fromRGB(0, 0, 0), --Edit()
    Header = Color3.fromRGB(0, 0, 0), --Edit()
    TextColor = Color3.fromRGB(255,255,255), --Edit()
    ElementColor = Color3.fromRGB(20, 20, 20) --Edit()
}ge Here:  local Window = Library.CreateLib("TITLE", colors)

--Change Here:local Window = Library.CreateLib("TITLE", colors)

--Custom Ui
for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end

Have Fun😀
