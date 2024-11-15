--Import Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--Create Main Window
local Window = Rayfield:CreateWindow({
   Name = "[🏴‍☠️] Fisch | Version 0.0.12",
   LoadingTitle = "[🏴‍☠️] Fisch",
   LoadingSubtitle = "by Kirymeww",
   Theme = "Default",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Fisch",
      FileName = "FischCfg"
   },
      
   KeySystem = false,
   KeySettings = {
      Title = "[🏴‍☠️] Fisch",
      Subtitle = "🔑 Key System",
      Note = "Password: KBS",
      Key = {"KBS"}
   }
})

--Functions
local function AutoCast()
   while _G.acast do
      print(111)
      wait(1)
   end
end

local function AutoShake()
   while _G.ashake do
      print(222)
      wait(1)
   end
end

local function AutoReel()
   while _G.areel do
      print(333)
      wait(1)
   end
end

local function AutoSell()
   while _G.asell do
      print(444)
      wait(1)
   end
end

local function AutoFixMap()
   while _G.afixmap do
      print(555)
      wait(1)
   end
end

local function AutoFindChest()
   while _G.afindchest do
      print(666)
      wait(1)
   end
end

local function FreezePlayer()
   local player = game.Players.LocalPlayer
   while _G.freezep do
      if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
         player.Character.HumanoidRootPart.Anchored = true
      end
      wait(1)
   end
   if not _G.freezep and player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
      player.Character.HumanoidRootPart.Anchored = false
   end
end

local function AutoPlaceGrabCage()
   while _G.aplacecrabcage do
      print(888)
      wait(1)
   end
end

local function AutoDisableOxygen()
   while _G.doxygen do
      print(999)
      wait(1)
   end
end

--Services


--Values
_G.acast = false
_G.ashake = false
_G.areel = false
_G.aplacecrabcage = false
_G.freezep = false
_G.afixmap = false
_G.afindchest = false
_G.asell = false
_G.doxygen = false

_G.acastmode = nil
_G.areelmode = nil
_G.smerchant = nil


--Tabs
local ma = Window:CreateTab("🎣 Main", 4483362458)
local tp = Window:CreateTab("🌎 Teleport", 4483362458)
local appr = Window:CreateTab("🔎 Appraise", 4483362458)
local misc = Window:CreateTab("🛠 Misc", 4483362458)
local treasure = Window:CreateTab("💎 Treasure", 4483362458)
local setting = Window:CreateTab("⚙ Settings", 4483362458)

--Main
local fishingRods = {}
for i, item in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if string.find(item.Name, "Rod") then
        table.insert(fishingRods, item.Name)
    end
end

local Section = ma:CreateSection("🎣 Auto Cast")
local acastmode = ma:CreateDropdown({
   Name = "🎣 Select Fishing Rod",
   Options = fishingRods,
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "acastmode",
   Callback = function(Options)
         print(Options)
   end,
})

local acast = ma:CreateToggle({
   Name = "🎣 Auto Cast",
   CurrentValue = false,
   Flag = "acast",
   Callback = function(AcastV)
         _G.acast = AcastV
         AutoCast()
   end,
})

local Section = ma:CreateSection("🔀 Auto Shake")
local ashake = ma:CreateToggle({
   Name = "🔀 Auto Shake",
   CurrentValue = false,
   Flag = "ashake",
   Callback = function(AshakeV)
         _G.ashake = AshakeV
         AutoShake()
   end,
})

local Section = ma:CreateSection("🔃 Auto Reel")
local areelmode = ma:CreateDropdown({
   Name = "🎣 Select Reel Mode",
   Options = {"🟩 Perfect Catch", "🟥 No Perfect Catch"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "acastmode",
   Callback = function(Options)
         print(Options)
   end,
})

local areel = ma:CreateToggle({
   Name = "🔃 Auto Reel",
   CurrentValue = false,
   Flag = "areel",
   Callback = function(AreelV)
         _G.areel = AreelV
         AutoReel()
   end,
})

local Section = ma:CreateSection("🛒 Merchant")
local smerchant = ma:CreateDropdown({
   Name = "👨‍🦰 Select Merchant",
   Options = {
      "🌲 Marc", "🏖 Matt", "🌞 Max",
      "❄️ Mike", "⚰️ Cort", "🌊 Maverick", "🌌 Mel"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "smerchant",
   Callback = function(Options)
         _G.smerchant = Options[1]
         print(_G.smerchant)
   end,
})

local asell = ma:CreateToggle({
   Name = "💰 Auto Sell",
   CurrentValue = false,
   Flag = "asell",
   Callback = function(AsellV)
         _G.asell = AsellV
         AutoSell()
   end,
})

--Teleport
local Section = tp:CreateSection("🌎 Teleports")
local tlocation = tp:CreateDropdown({
   Name = "🗺 Select Location",
   Options = {
      "🌲 Moosewood", "🏖 Roslit Bay", "🌋 Roslit Volcano",
      "🦋 Mushgrove Swamp", "🏝 Terrapin Island", "❄️ Snowcap Island",
      "🌞 Sunstone Island", "⚰️ Forsaken Shores","🗿 Statue Of Sovereignty",
      "⛪ Keepers Altar", "🌪 Vertigo","🌊 Desolate Deep",
      "🌌 Desolate Pocket","🌊 Brine Pool","🌊 The Ocean",
      "🌊 Deep Ocean", "🌴 Earmark Isle", "🪸 Haddock Rock",
      "🌉 The Arch", "🌳 Birch Cay", "⚒ Harvesters Spike"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "tlocation",
   Callback = function(Options)
         print(Options)
   end,
})

local ttotem = tp:CreateDropdown({
   Name = "🗿 Select Totem",
   Options = {"A","B"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "ttotem",
   Callback = function(Options)
         print(ttotemOptions)
   end,
})

local tfishingRods = tp:CreateDropdown({
   Name = "🎣 Select Fishing Rod",
   Options = {"Rod1","Rod2"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "tfishingRods",
   Callback = function(Options)
         print(tfishingRodsOptions)
   end,
})

local titems = tp:CreateDropdown({
   Name = "📦 Select Item",
   Options = {"Item1","Item2"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "titems",
   Callback = function(Options)
         print(titemsOptions)
   end,
})

local tnpcs = tp:CreateDropdown({
   Name = "👤 Select NPC",
   Options = {"NPC1","NPC2"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "tnpcs",
   Callback = function(Options)
         print(tnpcsOptions)
   end,
})

local tevents = tp:CreateDropdown({
   Name = "🎉 Select Event",
   Options = {"Event1","Event2"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "tevents",
   Callback = function(Options)
         print(teventsOptions)
   end,
})

--Appraise
local Section = appr:CreateSection("👁")
local csapp = appr:CreateLabel("👁 Coming soon...")

--Misc
local Section = misc:CreateSection("📌 Position")

local savedPosition = nil

local savep = misc:CreateButton({
   Name = "🟩 Save Position",
   Callback = function()
      local player = game.Players.LocalPlayer
      if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
         savedPosition = player.Character.HumanoidRootPart.Position
         Rayfield:Notify({
         Title = "🟩 Success!",
         Content = "Position saved!",
         Duration = 3,
         Image = 4483362458,
      })
      else
         Rayfield:Notify({
         Title = "🟥 Failed!",
         Content = "Position not saved!",
         Duration = 3,
         Image = 4483362458,
      })
      end
   end,
})

local resetp = misc:CreateButton({
   Name = "🟥 Reset Position",
   Callback = function()
      if savedPosition then
         savedPosition = nil
         Rayfield:Notify({
            Title = "🟩 Success!",
            Content = "Position reset!",
            Duration = 3,
            Image = 4483362458,
         })
      else
         Rayfield:Notify({
            Title = "🟥 Failed!",
            Content = "The position cannot be reset!",
            Duration = 3,
            Image = 4483362458,
         })
      end
   end,
})

local teleportp = misc:CreateButton({
   Name = "🟨 Teleport To Saved Position",
   Callback = function()
      local player = game.Players.LocalPlayer
      if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and savedPosition then
         player.Character.HumanoidRootPart.CFrame = CFrame.new(savedPosition)
         Rayfield:Notify({
         Title = "🟩 Success!",
         Content = "Teleported to saved position!",
         Duration = 3,
         Image = 4483362458,
      })
      else
         Rayfield:Notify({
         Title = "🟥 Failed!",
         Content = "No saved positions found!",
         Duration = 3,
         Image = 4483362458,
      })
      end
   end,
})

local Divider = misc:CreateDivider()
local freezep = misc:CreateToggle({
   Name = "❄ Freeze Player",
   CurrentValue = false,
   Flag = "freezep",
   Callback = function(AfreezepV)
         _G.freezep = AfreezepV
         FreezePlayer()
   end,
})

local Section = misc:CreateSection("🙍‍♂️ Player")
local doxygen = misc:CreateToggle({
   Name = "🛑 Disable Oxygen",
   CurrentValue = false,
   Flag = "doxygen",
   Callback = function(AdoxygenV)
         _G.doxygen = AdoxygenV
         AutoDisableOxygen()
   end,
})

local pspeed = misc:CreateSlider({
   Name = "🏃‍♂️ Player Speed",
   Range = {16, 150},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "pspeed",
   Callback = function(pseedValue)
      print(pseedValue)
   end,
})

local pjumpPower = misc:CreateSlider({
   Name = "🦘 Jump Power",
   Range = {50, 150},
   Increment = 1,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "pjumpPower",
   Callback = function(pjumpPowerValue)
      print(pjumpPowerValue)
   end,
})

local pfov = misc:CreateSlider({
   Name = "🔭 Field of View",
   Range = {70, 120},
   Increment = 1,
   Suffix = "FOV",
   CurrentValue = 70,
   Flag = "pfov",
   Callback = function(pfovValue)
      print(pfovValue)
   end,
})

--Treasure
local Section = treasure:CreateSection("💎 Treasure")
local afixmap = treasure:CreateToggle({
   Name = "🔨 Auto Fix Map",
   CurrentValue = false,
   Flag = "afixmap",
   Callback = function(AfixmapV)
         _G.afixmap = AfixmapV
         AutoFixMap()
   end,
})

local afindchest = treasure:CreateToggle({
   Name = "🔎 Auto Find Chest",
   CurrentValue = false,
   Flag = "afindchest",
   Callback = function(AfindchestV)
         _G.afindchest = AfindchestV
         AutoFindChest()
   end,
})

--Settings
local theme = setting:CreateDropdown({
   Name = "🎨 Select Theme",
   Options = {
      "🌟 Default", 
      "✨ Amber Glow", 
      "💜 Amethyst", 
      "🌸 Bloom", 
      "🌌 Dark Blue", 
      "🍃 Green", 
      "🌞 Light", 
      "🌊 Ocean", 
      "🌿 Serenity"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "themes",
   Callback = function(Options)
         local selectedTheme = Options[1]
         if selectedTheme == "🌟 Default" then
            Window.ModifyTheme('Default')
         elseif selectedTheme == "✨ Amber Glow" then
            Window.ModifyTheme('AmberGlow')
         elseif selectedTheme == "💜 Amethyst" then
            Window.ModifyTheme('Amethyst')
         elseif selectedTheme == "🌸 Bloom" then
            Window.ModifyTheme('Bloom')
         elseif selectedTheme == "🌌 Dark Blue" then
            Window.ModifyTheme('DarkBlue')
         elseif selectedTheme == "🍃 Green" then
            Window.ModifyTheme('Green')
         elseif selectedTheme == "🌞 Light" then
            Window.ModifyTheme('Light')
         elseif selectedTheme == "🌊 Ocean" then
            Window.ModifyTheme('Ocean')
         elseif selectedTheme == "🌿 Serenity" then
            Window.ModifyTheme('Serenity')
         end
   end,
})
