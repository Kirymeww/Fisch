--Import
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--Window
local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Fisch",
      FileName = "FischCfg"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"FhdDjFhLDFjF28h8bb8929n2"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

--Loaded Notify
Rayfield:Notify({
   Title = "✅ Loaded!",
   Content = "😊 Have fun!",
   Duration = 3,
   Image = 4483362458,
})

--Services


--Values
_G.acast = false
_G.ashake = false
_G.areel = false

--Tabs
local ma = Window:CreateTab("🎣 Main", 4483362458) -- Title, Image
local tp = Window:CreateTab("🌎 Teleport", 4483362458) -- Title, Image
local appr = Window:CreateTab("🛒 Appraise", 4483362458) -- Title, Image
local tp = Window:CreateTab("🛠 Misc", 4483362458) -- Title, Image

--Toggles
local acast = ma:CreateToggle({
   Name = "🎣 Auto Cast",
   CurrentValue = false,
   Callback = function(Value)
            print(Value)
   end,
})

local ashake = ma:CreateToggle({
   Name = "🔀 Auto Shake",
   CurrentValue = false,
   Callback = function(Value)
            print(Value)
   end,
})

local areel = ma:CreateToggle({
   Name = "🔃 Auto Reel",
   CurrentValue = false,
   Callback = function(Value)
            print(Value)
   end,
})
