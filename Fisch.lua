--Import Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--Create Main Window
local Window = Rayfield:CreateWindow({
   Name = "[🏴‍☠️] Fisch | Version 0.0.15",
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
local function getFishingRods()
    local rods = {}
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    
    for _, item in ipairs(backpack:GetChildren()) do
        if item.Name:find("Rod") then
            table.insert(rods, item.Name)
        end
    end
    
    return rods
end

local function AutoCast()
   while _G.acast do
      local args = {
         [1] = 100,
         [2] = 1
      }

      local rodName = _G.acastmode
      if rodName then
         local rod = game.Players.LocalPlayer.Character:FindFirstChild(rodName)
         if rod then
            rod.events.cast:FireServer(unpack(args))
         end
      end
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
      local args
      if _G.areelmode then
         args = {
            [1] = 100,
            [2] = true
         }
      else
         args = {
            [1] = 100,
            [2] = false
         }
      end
      game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(args))
      wait(1)
   end
end

local function AutoSell()
   while _G.asell do
      local merchantName = _G.smerchant and _G.smerchant:match("^(.-) Merchant$")
      if merchantName then
         local merchant = workspace.world.npcs:FindFirstChild(merchantName .. " Merchant")
         if merchant then
            merchant.merchant.sellall:InvokeServer()
         end
      end
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
local fishingRods = getFishingRods()
local Section = ma:CreateSection("🎣 Auto Cast")
local acastmode = ma:CreateDropdown({
   Name = "🎣 Select Fishing Rod",
   Options = fishingRods,
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "acastmode",
   Callback = function(Options)
         _G.acastmode = Options[1]
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
         _G.areelmode = Options[1] == "🟩 Perfect Catch" and true or false
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
         local selectedMerchant = Options[1]
         local merchantName = selectedMerchant:match("([^%s]+)")
         _G.smerchant = merchantName .. " Merchant"
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
function teleportPlayer(x, y, z)
    local player = game.Players.LocalPlayer
    if player and player.Character then
        local character = player.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        humanoidRootPart.CFrame = CFrame.new(x, y, z)
    end
end

local Section = tp:CreateSection("🌎 Teleports")
local tlocation = tp:CreateDropdown({
   Name = "🗺 Select Location",
   Options = {
      "🌲 Moosewood", "🏖 Roslit Bay", "🌋 Roslit Volcano",
      "🍄 Mushgrove Swamp", "🏝 Terrapin Island", "❄️ Snowcap Island",
      "🌞 Sunstone Island", "🏴‍☠️ Forsaken Shores", "🗿 Statue Of Sovereignty",
      "⛪ Keepers Altar", "🌪 Vertigo", "🌊 Desolate Deep", "🌌 Desolate Pocket", 
      "🌊 Brine Pool", "🌴 Earmark Isle", "🪸 Haddock Rock",
      "🌉 The Arch", "🌳 Birch Cay", "⚒ Harvesters Spike"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "tlocation",
   Callback = function(Options)
         local selectedLocation = Options[1]
         if selectedLocation == "🌲 Moosewood" then
            teleportPlayer(380, 135, 223)
         elseif selectedLocation == "🏖 Roslit Bay" then
            teleportPlayer(-1485, 133, 720)
         elseif selectedLocation == "🌋 Roslit Volcano" then
            teleportPlayer(-1910, 165, 317)
         elseif selectedLocation == "🍄 Mushgrove Swamp" then
            teleportPlayer(2500, 131, -720)
         elseif selectedLocation == "🏝 Terrapin Island" then
            teleportPlayer(-18, 156, 1975)
         elseif selectedLocation == "❄️ Snowcap Island" then
            teleportPlayer(2624, 142, 2471)
         elseif selectedLocation == "🌞 Sunstone Island" then
            teleportPlayer(-933, 132, -1118)
         elseif selectedLocation == "🏴‍☠️ Forsaken Shores" then
            teleportPlayer(-2500, 134, 1540)
         elseif selectedLocation == "🗿 Statue Of Sovereignty" then
            teleportPlayer(50, 132, -1009)
         elseif selectedLocation == "⛪ Keepers Altar" then
            teleportPlayer(1307, -805, -96)
         elseif selectedLocation == "🌪 Vertigo" then
            teleportPlayer(-108, -515, 1065)
         elseif selectedLocation == "🌊 Desolate Deep" then
            teleportPlayer(-1000, -245, -2725)
         elseif selectedLocation == "🌌 Desolate Pocket" then
            teleportPlayer(-1500, -235, -2856)
         elseif selectedLocation == "🌊 Brine Pool" then
            teleportPlayer(-1800, -143, -3404)
         elseif selectedLocation == "🌴 Earmark Isle" then
            teleportPlayer(1230, 125, 575)
         elseif selectedLocation == "🗿 Haddock Rock" then
            teleportPlayer(-570, 182, -413)
         elseif selectedLocation == "🌉 The Arch" then
            teleportPlayer(1000, 125, -1250)
         elseif selectedLocation == "🌳 Birch Cay" then
            teleportPlayer(1700, 125, -2500)
         elseif selectedLocation == "⚒ Harvesters Spike" then
            teleportPlayer(-1257, 139, 1550)
         end
   end,
})

local ttotem = tp:CreateDropdown({
   Name = "🗿 Select Totem",
   Options = {
      "🕰️ Sundial", 
      "🌌 Aurora", 
      "🌬️ Windset", 
      "💨 Smokescreen", 
      "🌪️ Tempest"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "ttotem",
   Callback = function(Options)
         local selectedTotem = Options[1]

         if selectedTotem == "🕰️ Sundial" then
            teleportPlayer(-1148, 135, -1075)
         elseif selectedTotem == "🌌 Aurora" then
            teleportPlayer(-1811, -137, -3282)
         elseif selectedTotem == "🌬️ Windset" then
            teleportPlayer(2849, 179, 2702)
         elseif selectedTotem == "💨 Smokescreen" then
            teleportPlayer(2789, 140, -625)
         elseif selectedTotem == "🌪️ Tempest" then
            teleportPlayer(35, 132.5, 1943)
         end
   end,
})

local tfishingRods = tp:CreateDropdown({
   Name = "🎣 Select Fishing Rod",
   Options = {
      "🎣 Basic Rods",
      "🎯 Long Rod",
      "⚡ Rapid Rod", 
      "⏳ Steady Rod", 
      "🍀 Fortune Rod",
      "🧲 Magnet Rod", 
      "⚔️ Trident Rod",
      "🌌 Aurora Rod", 
      "🌙 Nocturnal Rod"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "tfishingRods",
   Callback = function(Options)
         local selectedRod = Options[1]

         if selectedRod == "🎣 Basic Rods" then
            teleportPlayer(454, 151, 239)
         elseif selectedRod == "🎯 Long Rod" then
            teleportPlayer(486, 175, 151)
         elseif selectedRod == "⚡ Rapid Rod" then
            teleportPlayer(-1510, 142, 766)
         elseif selectedRod == "⏳ Steady Rod" then
            teleportPlayer(-1510, 142, 766)
         elseif selectedRod == "🍀 Fortune Rod" then
            teleportPlayer(-1510, 142, 766)
         elseif selectedRod == "🧲 Magnet Rod" then
            teleportPlayer(-200, 133, 1930)
         elseif selectedRod == "⚔️ Trident Rod" then
            teleportPlayer(-1484, -226, -2201)
         elseif selectedRod == "🌌 Aurora Rod" then
            teleportPlayer(-141, -512, 1145)
         elseif selectedRod == "🌙 Nocturnal Rod" then
            teleportPlayer(-141, -512, 1145)
         end
   end,
})

local titems = tp:CreateDropdown({
   Name = "📦 Select Item",
   Options = {
      "📍 GPS", 
      "🎣 Fish Radar", 
      "🤿 Diving Gear", 
      "🐟 Bait Crate", 
      "🦀 Crab Cage"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "titems",
   Callback = function(Options)
         local selectedItem = Options[1]

         if selectedItem == "📍 GPS" then
            teleportPlayer(515, 151, 285)
         elseif selectedItem == "🎣 Fish Radar" then
            teleportPlayer(365, 136, 275)
         elseif selectedItem == "🤿 Diving Gear" then
            teleportPlayer(370, 136, 250)
         elseif selectedItem == "🐟 Bait Crate" then
            teleportPlayer(384, 137, 334)
         elseif selectedItem == "🦀 Crab Cage" then
            teleportPlayer(476, 151, 231)
         end
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
      local player = game.Players.LocalPlayer
      if player and player.Character then
         local humanoid = player.Character:WaitForChild("Humanoid")
         humanoid.WalkSpeed = pseedValue
      end
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
      local player = game.Players.LocalPlayer
      if player and player.Character then
         local humanoid = player.Character:WaitForChild("Humanoid")
         humanoid.JumpPower = pjumpPowerValue
      end
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
      local player = game.Players.LocalPlayer
      if player and player.Character then
         local camera = game:GetService("Workspace").CurrentCamera
         camera.FieldOfView = pfovValue
      end
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
local Section = setting:CreateSection("⚙ Settings")
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
