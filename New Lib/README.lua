--[Xdddd

Example Hub:loadstring(game:HttpGet("https://raw.githubusercontent.com/qqwizzixxxx/qwizzixxxx-Lib/main/New%20Lib/Example.lua"))() 
]--

--Lib
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/qqwizzixxxx/qwizzixxxx-Lib/main/New%20Lib/New%20Lib.lua'))()

--Window
local Window = library:CreateWindow("Name", "Version", 10044538000)

--New Tab
local Tab = Window:CreateTab("Scripts")

--New Page
local Page = Tab:CreateFrame("Page 1")

--New Button
Button = Page:CreateButton("Button", "Description", function()
CreateNotification("Title", "Description", function(value)
if value == true then
print(true)
else
print(false)
end
end)
end)

--New Toggle
Toggle = Page:CreateToggle("Toggle", "Description", function(arg)
Toggle:UpdateToggle("New Title", "New Description")
print(arg)
end)

--New KeyBind
Bind = Page:CreateBind("KeyBind", "F", function(arg)
Bind:UpdateBind("New Title")
print(arg)
end)

--New TextBox
TextBox = Page:CreateBox("TextBox", 10044538000, function(arg)
TextBox:UpdateBox("New Title")
print(arg)
end)

--New Slider
Page:CreateSlider("Slider", 16, 500,function(arg)
   print(arg)
end)

--New Label
Label = Page:CreateLabel("Label")
Label:UpdateLabel("New Title")

--Have Fun😀
