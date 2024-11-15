--Import Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--Create Main Window
local Window = Rayfield:CreateWindow({
   Name = "[🏴‍☠️] Fisch",
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
      
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"kbs"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

--Loaded Notify
Rayfield:Notify({
   Title = "✅ Loaded!",
   Content = "😊 Have fun!",
   Duration = 3,
   Image = 4483362458,
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

--Services


--Values
_G.acast = false
_G.ashake = false
_G.areel = false

--Tabs
local ma = Window:CreateTab("🎣 Main", 4483362458) -- Title, Image
local tp = Window:CreateTab("🌎 Teleport", 4483362458) -- Title, Image
local appr = Window:CreateTab("🛒 Appraise", 4483362458) -- Title, Image
local misc = Window:CreateTab("🛠 Misc", 4483362458) -- Title, Image

--Main
local Divider = ma:CreateDivider()
local acast = ma:CreateToggle({
   Name = "🎣 Auto Cast",
   CurrentValue = false,
   Flag = "acast",
   Callback = function(AcastV)
         _G.acast = AcastV
         AutoCast()
   end,
})

local Divider = ma:CreateDivider()
local ashake = ma:CreateToggle({
   Name = "🔀 Auto Shake",
   CurrentValue = false,
   Flag = "ashake",
   Callback = function(AshakeV)
         _G.ashake = AshakeV
         AutoShake()
   end,
})

local Divider = ma:CreateDivider()
local areel = ma:CreateToggle({
   Name = "🔃 Auto Reel",
   CurrentValue = false,
   Flag = "areel",
   Callback = function(AreelV)
         _G.areel = AreelV
         AutoReel()
   end,
})

--Teleport
local Divider = tp:CreateDivider()
local tlocation = tp:CreateDropdown({
   Name = "🗺 Select Location",
   Options = {"1","2"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "tlocation",
   Callback = function(Options)
         print(tlocationOptions)
   end,
})

local Divider = tp:CreateDivider()
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

local Divider = tp:CreateDivider()
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

local Divider = tp:CreateDivider()
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

local Divider = tp:CreateDivider()
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

local Divider = tp:CreateDivider()
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
local Divider = appr:CreateDivider()
local csapp = appr:CreateLabel("👁 Coming soon...")

--Misc
local Divider = misc:CreateDivider()
local pspeed = misc:CreateSlider({
   Name = "🏃‍♂️ Player Speed",
   Range = {16, 150},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "pspeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(pseedValue)
      print(pseedValue)
   end,
})

local Divider = misc:CreateDivider()
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

local Divider = misc:CreateDivider()
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

Rayfield:LoadConfiguration()
