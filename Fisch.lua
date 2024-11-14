local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Kirymeww/LeafLib/refs/heads/main/LeafLib.lua')))()

local Window = OrionLib:MakeWindow({
		Name = "[🏴‍☠️] Fisch",
		HidePremium = false,
		SaveConfig = true,
		IntroText = "Leaf Library",
		IntroIcon = "rbxassetid://663710715",
		ConfigFolder = "LeafLib"
})

OrionLib:MakeNotification({
	Name = "✅ Loaded!",
	Content = "😊 Have fun!",
	Image = "rbxassetid://663710715",
	Time = 3
})

local home = Window:MakeTab({
	Name = "🏡 Home",
	Icon = "rbxassetid://663710715",
	PremiumOnly = false
})

local main = Window:MakeTab({
	Name = "🎣 Main",
	Icon = "rbxassetid://663710715",
	PremiumOnly = false
})

main:AddToggle({
	Name = "▶ Auto Cast",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

main:AddToggle({
	Name = "🔀 Auto Shake",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

main:AddToggle({
	Name = "🔁 Auto Reel",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local teleport = Window:MakeTab({
	Name = "🌎 Teleport",
	Icon = "rbxassetid://663710715",
	PremiumOnly = false
})

local appraise = Window:MakeTab({
	Name = "🔎 Appraise",
	Icon = "rbxassetid://663710715",
	PremiumOnly = false
})

local misc = Window:MakeTab({
	Name = "🛠 Misc",
	Icon = "rbxassetid://663710715",
	PremiumOnly = false
})

OrionLib:Init()
