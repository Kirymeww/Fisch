--Import Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--Create Main Window
local Window = Rayfield:CreateWindow({
   Name = "[🏴‍☠️] Fisch | Version 0.0.35",
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

--Services
local GuiService = game:GetService("GuiService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--Functions
local function AutoCast()
   while _G.acast do
      local args = {
         [1] = 100,
         [2] = 1
      }

      local player = game.Players.LocalPlayer
      local rod = nil

      if player.Character and player.Character:FindFirstChildOfClass("Tool") then
         rod = player.Character:FindFirstChildOfClass("Tool")
      else
         for _, item in ipairs(player.Backpack:GetChildren()) do
            if item.Name:find("Rod") then
               rod = item
               break
            end
         end
      end

      if rod then
         if rod.Parent ~= player.Character then
            rod.Parent = player.Character
         end

         if rod:FindFirstChild("events") and rod.events:FindFirstChild("cast") then
            rod.events.cast:FireServer(unpack(args))
         end
      end
      wait(0.5)
   end
end

local function navigateAndClick()
    local player = Players.LocalPlayer
    local button = player.PlayerGui:FindFirstChild("shakeui") and player.PlayerGui.shakeui:FindFirstChild("safezone") and player.PlayerGui.shakeui.safezone:FindFirstChild("button")
    
    if button then
        GuiService.SelectedObject = button
        if GuiService.SelectedObject == button then
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, nil)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, nil)
        end
    end
end

local function AutoShake()
    while _G.ashake do
        navigateAndClick()
        RunService.Heartbeat:Wait()
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
      wait(0.2)
   end
end

local function AutoSell()
   while _G.asell do
      if _G.smerchant then
         local merchant = workspace.world.npcs:FindFirstChild(_G.smerchant)
         if merchant then
            merchant.merchant.sellall:InvokeServer()
         end
      end
      wait(0.2)
   end
end

local function AutoAppraiseFish()
    while _G.aapprfish do
        local player = game.Players.LocalPlayer
        local character = player.Character
        local selectedFish = _G.apprfishselect
        
        local holdingFish = false
        if character and character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid
            for _, tool in pairs(character:GetChildren()) do
                if tool:IsA("Tool") and tool.Name == selectedFish then
                    holdingFish = true
                    break
                end
            end
        end
        
        if not holdingFish then
            local fish = player.Backpack:FindFirstChild(selectedFish)
            if fish then
                fish.Parent = character
                fish:Activate()
            end
        end
        
        workspace.world.npcs.Appraiser.appraiser.appraise:InvokeServer()
        
        wait(1)
    end
end

local function AutoSellInHand()
   while _G.asellinhand do
      if _G.smerchant then
         local merchant = workspace.world.npcs:FindFirstChild(_G.smerchant)
         if merchant then
            merchant.merchant.sell:InvokeServer()
         end
      end
      wait(0.2)
   end
end

local function AutoFixMap()
   local player = game.Players.LocalPlayer
   local backpack = player:FindFirstChild("Backpack")
   local repairedMaps = {}

   while _G.afixmap do
      if backpack then
         for _, item in ipairs(backpack:GetChildren()) do
            if item.Name == "Treasure Map" and not repairedMaps[item] then
               teleportPlayer(-2822, 214, 1522)
               wait(1)
               
               if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                  local humanoidRootPart = player.Character.HumanoidRootPart
                  
                  if player.Character:FindFirstChild("Treasure Map") then
                     workspace.world.npcs:FindFirstChild("Jack Marrow").treasure.repairmap:InvokeServer()
                     repairedMaps[item] = true
                  else
                     local tool = backpack:FindFirstChild("Treasure Map")
                     if tool then
                        player.Character.Humanoid:EquipTool(tool)
                        workspace.world.npcs:FindFirstChild("Jack Marrow").treasure.repairmap:InvokeServer()
                        repairedMaps[item] = true
                     end
                  end
               end
            end
         end
      end
      wait(0.2)
   end
end

local function AutoFindChest()
   local player = game.Players.LocalPlayer
   local initialPosition = nil
   local openedChests = {}

   while _G.afindchest do
      if workspace.world:FindFirstChild("chests") then
         for _, chest in ipairs(workspace.world.chests:GetChildren()) do
            if chest:IsA("Part") and string.match(chest.Name, "TreasureChest_%-?%d+_%-?%d+_%-?%d+") and not openedChests[chest] then
               local x, y, z = chest.Name:match("TreasureChest_(%-?%d+)_(%-?%d+)_(%-?%d+)")
               if x and y and z then
                  x, y, z = tonumber(x), tonumber(y), tonumber(z)
                  initialPosition = player.Character.HumanoidRootPart.Position
                  teleportPlayer(x, y, z)
                  wait(1)

                  local args = {
                     [1] = {
                        ["x"] = x,
                        ["y"] = y,
                        ["z"] = z
                     }
                  }
                  game:GetService("ReplicatedStorage").events.open_treasure:FireServer(unpack(args))
                  openedChests[chest] = true
               end
            end
         end
      end
      wait(0.5)
   end

   if initialPosition then
      teleportPlayer(initialPosition.X, initialPosition.Y, initialPosition.Z)
   end
end

local function FreezePlayer()
   local player = game.Players.LocalPlayer
   local initialPosition = nil
   local humanoid = nil

   while _G.freezep do
      if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
         if not initialPosition then
            initialPosition = player.Character.HumanoidRootPart.Position
            humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
               humanoid.WalkSpeed = 0
               humanoid.JumpPower = 0
            end
         end
         player.Character.HumanoidRootPart.CFrame = CFrame.new(initialPosition)
      end
      wait(0.01)
   end

   if humanoid then
      humanoid.WalkSpeed = _G.plspeed
      humanoid.JumpPower = _G.pljump
   end
end

local function filterItems()
    local player = game.Players.LocalPlayer
    local inventory = player.Backpack:GetChildren()
    local filteredItems = {}
    for _, item in ipairs(inventory) do
        if not string.find(item.Name, "Rod") and 
           not string.find(item.Name, "Bestiary") and 
           not string.find(item.Name, "Equipment Bag") then
            table.insert(filteredItems, item.Name)
        end
    end
    return filteredItems
end

--Values
_G.acast = false
_G.ashake = false
_G.areel = false
_G.freezep = false
_G.asell = false
_G.asellinhand = false
_G.afixmap = false
_G.afindchest = false
_G.aapprfish = false

_G.areelmode = nil
_G.smerchant = nil
_G.apprfishselect = nil

_G.plspeed = 16
_G.pljump = 50

--Tabs
local ma = Window:CreateTab("🎣 Main", 4483362458)
local tp = Window:CreateTab("🌎 Teleport", 4483362458)
local appr = Window:CreateTab("🔎 Appraise", 4483362458)
local treasure = Window:CreateTab("💎 Treasure", 4483362458)
local misc = Window:CreateTab("🛠 Misc", 4483362458)
local setting = Window:CreateTab("⚙ Settings", 4483362458)

--Main
local Section = ma:CreateSection("🎣 Auto Cast")
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
   CurrentOption = {"🟩 Perfect Catch"},
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
      "🌲 Marc", "🏖 Matt", "🌞 Max", "❄️ Mike", 
      "⚰️ Cort", "🌊 Maverick", "🌌 Mel"
   },
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "smerchant",
   Callback = function(Options)
         local selectedMerchant = Options[1]
         local merchantName = selectedMerchant:match("%s*(%w+)")
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

local asellinhand = ma:CreateToggle({
   Name = "💰 Auto Sell In Hand",
   CurrentValue = false,
   Flag = "asellinhand",
   Callback = function(AsellihV)
         _G.asellinhand = AsellihV
         AutoSellInHand()
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
      "⚡ Rapid & ⏳ Steady & 🍀 Fortune Rods", 
      "🧲 Magnet Rod", 
      "🔱 Trident Rod",
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
         elseif selectedRod == "⚡ Rapid & ⏳ Steady & 🍀 Fortune Rods" then
            teleportPlayer(-1510, 142, 766)
         elseif selectedRod == "🧲 Magnet Rod" then
            teleportPlayer(-200, 133, 1930)
         elseif selectedRod == "🔱 Trident Rod" then
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
      "🦈 Quality Bait Crate", 
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
         elseif selectedItem == "🦈 Quality Bait Crate" then
            teleportPlayer(-174, 144, 1932)
         elseif selectedItem == "🦀 Crab Cage" then
            teleportPlayer(476, 151, 231)
         end
   end,
})

--Appraise
local Section = appr:CreateSection("🔎 Appraise")
local apprfishdrop = appr:CreateDropdown({
    Name = "🐟 Select Fish",
    Options = filterItems(),
    CurrentOption = {},
    MultipleOptions = false,
    Flag = "apprfishdrop",
    Callback = function(Options)
        _G.apprfishselect = Options[1]
    end,
})

local apprfishgo = misc:CreateToggle({
   Name = "🔎 Appraise Fish",
   CurrentValue = true,
   Flag = "apprfishgo",
   Callback = function(AapprfishV)
         _G.aapprfish = AapprfishV
         AutoAppraiseFish()
   end,
})

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
   CurrentValue = true,
   Flag = "doxygen",
   Callback = function(AdoxygenV)
      for _, player in pairs(game.Players:GetPlayers()) do
         local oxygen = player.Character and player.Character:FindFirstChild("client") and player.Character.client:FindFirstChild("oxygen")
         if oxygen then
            oxygen.Enabled = not AdoxygenV
         end
      end
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
         _G.plspeed = pseedValue
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
         _G.pljump = pjumpPowerValue
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
