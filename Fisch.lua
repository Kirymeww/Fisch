local LeafLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Kirymeww/LeafLib/refs/heads/main/LeafLib.lua')))()

local Window = LeafLib:MakeWindow({
		Name = "[🏴‍☠️] Fisch",
		HidePremium = false,
		SaveConfig = true,
		IntroText = "Leaf Library",
		IntroIcon = "rbxassetid://11330204845",
		ConfigFolder = "LeafLib"
})

LeafLib:MakeNotification({
	Name = "✅ Loaded!",
	Content = "😊 Have fun!",
	Image = "rbxassetid://11330204845",
	Time = 3
})

local home = Window:MakeTab({
	Name = "🏡 Home",
	Icon = "rbxassetid://11330204845",
	PremiumOnly = false
})

local main = Window:MakeTab({
	Name = "🎣 Main",
	Icon = "rbxassetid://11330204845",
	PremiumOnly = false
})

local Section = main:AddSection({
	Name = "🎣 Cast"
})

main:AddToggle({
	Name = "🎣 Auto Cast",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local Section = main:AddSection({
	Name = "🦈 Shake"
})

main:AddToggle({
	Name = "🦈 Auto Shake",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local Section = main:AddSection({
	Name = "🔃 Reel"
})

main:AddDropdown({
	Name = "🔃 Select Reel Mode",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

main:AddToggle({
	Name = "🔃 Auto Reel",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local Section = main:AddSection({
	Name = "🛒 Merchant"
})

main:AddDropdown({
	Name = "👨‍🦰 Select Merchant",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

main:AddToggle({
	Name = "💎 Auto Sell All",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local teleport = Window:MakeTab({
	Name = "🌎 Teleport",
	Icon = "rbxassetid://11330204845",
	PremiumOnly = false
})

local Section = teleport:AddSection({
	Name = "🌎 Teleports"
})

teleport:AddDropdown({
	Name = "🗺 Select Location",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

teleport:AddDropdown({
	Name = "🗿 Select Totem",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

teleport:AddDropdown({
	Name = "🗺🎣 Select Rods",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

teleport:AddDropdown({
	Name = "🛠 Select Items",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

teleport:AddDropdown({
	Name = "🙍‍♂️ Select Npcs",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

teleport:AddDropdown({
	Name = "🚩 Select Event",
	Default = "",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

local appraise = Window:MakeTab({
	Name = "🔎 Appraise",
	Icon = "rbxassetid://11330204845",
	PremiumOnly = false
})

appraise:AddLabel("👁 Coming soon...")

local misc = Window:MakeTab({
	Name = "🛠 Misc",
	Icon = "rbxassetid://11330204845",
	PremiumOnly = false
})

local Section = misc:AddSection({
	Name = "📌 Position"
})

misc:AddToggle({
	Name = "❄ Freeze Player",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

misc:AddButton({
	Name = "🟩 Save Player Position",
	Callback = function()
      		print("button pressed")
  	end    
})

misc:AddButton({
	Name = "🟥 Reset Player Position",
	Callback = function()
      		print("button pressed")
  	end    
})

misc:AddButton({
	Name = "🟨 Teleport To Saved Position",
	Callback = function()
      		print("button pressed")
  	end    
})

local Section = misc:AddSection({
	Name = "🏃‍♂️ Player"
})

misc:AddToggle({
	Name = "🛑 Disable Oxygen",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

misc:AddSlider({
	Name = "🏃‍♂️ Player Speed",
	Min = 16,
	Max = 150,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

misc:AddSlider({
	Name = "💨 Player jump",
	Min = 50,
	Max = 150,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

misc:AddSlider({
	Name = "📷 Player Fov",
	Min = 90,
	Max = 120,
	Default = 90,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

LeafLib:Init()
