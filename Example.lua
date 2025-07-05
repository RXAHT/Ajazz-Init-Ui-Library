local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Library = require(ReplicatedStorage.Ui)

local Window = Library:NewWindow({
	Title = "Ajazz Init",
})

Library:Notify({
	Text = "Your Welcome",
	Duration = 5 
})

local Button = Window:NewButton({
	Title = "Button",
	Callback = function()
		print("Button clicked!")
		Library:Notify({
			Text = "Notification",
			Duration = 5 
		})
	end
})

local Label = Window:NewLabel({
	Text = "Label",
	TextColor = Color3.fromRGB(255, 255, 255),
	Position = "Center"
})

local Toggle = Window:NewToggle({
	Title = "Toggle",
	Default = false,
	Callback = function(Value)
		print("Toggle:", Value)
	end
})

local Slider = Window:NewSlider({
	Title = "Slider",
	Min = 0,
	Max = 100,
	Default = 25,
	Callback = function(Value)
		print("Slider value:", Value)
	end
})

local Textbox = Window:NewTextbox({
	Title = "TextBox",
	Placeholder = "Text...",
	Callback = function(Value)
		print("Textbox:", Value)
	end
})

local Selection = Window:NewSelection({
	Title = "Selection",
	Items = {"One", "Two", "Three"},
	Default = "One", 
	Callback = function(value)
		print("Selected:", value)
	end
})



local Color = Window:NewColorPicker({
	Title = "Color Picker",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		print("Selected color:", Value)
	end
})

--Library:UnLoad() Unloads the ui
--Library:ToggleUi() Toggles the ui