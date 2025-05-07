local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Hand Script",
   Icon = 0,
   LoadingTitle = "Hand Script",
   LoadingSubtitle = "Hello",
   Theme = "Default",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

local Main = Window:CreateTab("Основное", 4483362458)
local tp = Window:CreateTab("Телепорт", 4483362458)
local Items = Window:CreateTab("Телепорт Предметов", 4483362458)

--------------------------------------------------------------------------------------------- ТП ПО ЛОКАМ ---------------------------------------------------------------------------------------------

tp:CreateButton({
   Name = "Магазин 1",
   Callback = function()
        -- Check if the character and HumanoidRootPart exist before attempting to move
        local character = game.Players.localPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:MoveTo(Vector3.new(-237.5,82,665))
        else
            warn("Character or HumanoidRootPart not found for Магазин 1 TP.")
        end
   end,
})

tp:CreateButton({
   Name = "Магазин 2",
   Callback = function()
        -- Check if the character and HumanoidRootPart exist before attempting to move
        local character = game.Players.localPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:MoveTo(Vector3.new(1016,321.5,78))
        else
            warn("Character or HumanoidRootPart not found for Магазин 2 TP.")
        end
   end,
})

tp:CreateButton({
   Name = "error",
   Callback = function()
        -- Check if the character and HumanoidRootPart exist before attempting to move
        local character = game.Players.localPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:MoveTo(Vector3.new(-564,1022,286))
        else
            warn("Character or HumanoidRootPart not found for error TP.")
        end
   end,
})

tp:CreateButton({
   Name = "Грибной остров",
   Callback = function()
        -- Check if the character and HumanoidRootPart exist before attempting to move
        local character = game.Players.localPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:MoveTo(Vector3.new(-1859,625,275))
        else
            warn("Character or HumanoidRootPart not found for Грибной остров TP.")
        end
   end,
})

tp:CreateButton({
   Name = "Большое дерево",
   Callback = function()
        -- Check if the character and HumanoidRootPart exist before attempting to move
        local character = game.Players.localPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:MoveTo(Vector3.new(-875,376,-475))
        else
            warn("Character or HumanoidRootPart not found for Большое дерево TP.")
        end
   end,
})

tp:CreateButton({
   Name = "Трейд зона",
   Callback = function()
        -- Check if the character and HumanoidRootPart exist before attempting to move
        local character = game.Players.localPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:MoveTo(Vector3.new(497,246,237))
        else
            warn("Character or HumanoidRootPart not found for Трейд зона TP.")
        end
   end,
})

tp:CreateButton({
   Name = "Меторит 1 (ЕСЛИ ЕСТЬ)",
   Callback = function()
        local mine = workspace:FindFirstChild("small mine1", true)
        local humanoidRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

        if mine and humanoidRootPart then
            local pickaxe = mine:FindFirstChild("Pickaxe", true)
            if pickaxe then
                humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
            else
                warn("Pickaxe not found in small mine1.")
            end
        else
            warn("small mine1 or HumanoidRootPart not found for Меторит 1 TP.")
        end
   end,
})

tp:CreateButton({
   Name = "Меторит 2 (ЕСЛИ ЕСТЬ)",
   Callback = function()
        local mine = workspace:FindFirstChild("small mine2", true)
        local humanoidRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

        if mine and humanoidRootPart then
            local pickaxe = mine:FindFirstChild("Pickaxe", true)
            if pickaxe then
                humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
            else
                warn("Pickaxe not found in small mine2.")
            end
        else
            warn("small mine2 or HumanoidRootPart not found for Меторит 2 TP.")
        end
   end,
})

tp:CreateButton({
   Name = "Меторит 3 (ЕСЛИ ЕСТЬ)",
   Callback = function()
        local mine = workspace:FindFirstChild("small mine3", true)
        local humanoidRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

        if mine and humanoidRootPart then
            local pickaxe = mine:FindFirstChild("Pickaxe", true)
            if pickaxe then
                humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
            else
                warn("Pickaxe not found in small mine3.")
            end
        else
            warn("small mine3 or HumanoidRootPart not found for Меторит 3 TP.")
        end
   end,
})

--------------------------------------------------------------------------------------------- АФТО ФАРМ ---------------------------------------------------------------------------------------------

local autoFarmRocksEnabled = false
local autoFarmRocksConnection = nil

Main:CreateToggle({
   Name = "Авто Фарм Камней (НЕ ГОТОВ)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        autoFarmRocksEnabled = Value
        if autoFarmRocksEnabled and autoFarmRocksConnection == nil then
            autoFarmRocksConnection = game:GetService("RunService").Stepped:Connect(function()
                if autoFarmRocksEnabled then
                    local mine = workspace:FindFirstChild("Mine", true)
                    local humanoidRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

                    if mine and humanoidRootPart then
                        local pickaxe = mine:FindFirstChild("Pickaxe", true)
                        if pickaxe then
                            humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
                        end
                    end
                end
            end)
        elseif not autoFarmRocksEnabled and autoFarmRocksConnection then
            autoFarmRocksConnection:Disconnect()
            autoFarmRocksConnection = nil
        end
   end,
})

local autoFarmCleanerEnabled = false
local autoFarmCleanerConnection = nil

Main:CreateToggle({
   Name = "Авто Фарм уборшик",
   CurrentValue = false,
   Flag = "Toggle2", -- Changed flag to be unique
   Callback = function(Value)
        autoFarmCleanerEnabled = Value
        if autoFarmCleanerEnabled and autoFarmCleanerConnection == nil then
            autoFarmCleanerConnection = game:GetService("RunService").Stepped:Connect(function()
                if autoFarmCleanerEnabled then
                    local mine = workspace:FindFirstChild("Dust", true)
                    local humanoidRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

                    if mine and humanoidRootPart then
                        local Part = mine:FindFirstChild("Part", true)
                        if Part then
                            humanoidRootPart.CFrame = Part.CFrame + Vector3.new(0, 2, 0)
                        end
                    end
                end
            end)
        elseif not autoFarmCleanerEnabled and autoFarmCleanerConnection then
            autoFarmCleanerConnection:Disconnect()
            autoFarmCleanerConnection = nil
        end
   end,
})

--------------------------------------------------------------------------------------------- ФУНКЦИЯ ТП ВСЕХ ПРЕДМЕТОВ ---------------------------------------------------------------------------------------------
local function TeleportItemsToPlayer()
  local Players = game:GetService("Players")
  local LocalPlayer = Players.LocalPlayer
  local Character = LocalPlayer.Character
  local ItemsFolder = workspace:FindFirstChild("Items")

  if not Character then
    warn("Персонаж игрока не найден.")
    return
  end

  local DistanceInFront = 5
  local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

  if not HumanoidRootPart then
    warn("HumanoidRootPart не найден у персонажа.")
    return
  end

  local ItemsOnly = {
    ['Iron'] = true,
    ['Oak Log'] = true,
    ['Pink Oak Log'] = true,
    ['Platinum'] = true,
    ['Ruby'] = true,
    ['Sapphire'] = true,
    ['Silver'] = true,
    ['Spruce Log'] = true,
    ['Tin'] = true,
    ['Topaz'] = true,
    ['Coal'] = true,
    ['Charred Oak Log'] = true, -- Added missing items to the list
    ['Metallic Oak Log'] = true,
    ['Dark Oak Log'] = true,
    ['Miniature Oak Tree'] = true,
    ['Burning Log'] = true,
    ['Mega Log'] = true,
    ['Sparkle Time Acorn'] = true,
    ['Copper'] = true,
    ['Copper Bar'] = true,
    ['Iron Bar'] = true,
    ['Tungsten'] = true,
    ['Tungsten Bar'] = true,
    ['Lead'] = true,
    ['Lead Bar'] = true,
    ['Tin Bar'] = true,
    ['Silver Bar'] = true,
    ['Platinum Bar'] = true,
    ['Gold'] = true,
    ['Gold Bar'] = true,
    ['Demonium'] = true,
    ['Demonium Bar'] = true,
    ['Holyum'] = true,
    ['Holyum Bar'] = true,
    ['Corrupted Bar'] = true,
    ['True Bar'] = true,
    ['False Bar'] = true,
    ['Amythest'] = true,
    ['Diamond'] = true,
    ['Emerald'] = true,
    ['Sparkle Time Coal'] = true,
    ['Atom'] = true,
  }

  -- Calculate the target position based on the player's CFrame
  local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

  if ItemsFolder then
    for _, Item in pairs(ItemsFolder:GetChildren()) do
      if Item:IsA("BasePart") or Item:IsA("Model") then
        if ItemsOnly[Item.Name] then
          -- Use :SetPrimaryPartCFrame() for Models, :SetCFrame() for BaseParts
          if Item:IsA("Model") and Item.PrimaryPart then
              Item:SetPrimaryPartCFrame(TargetCFrame)
          elseif Item:IsA("BasePart") then
              Item.CFrame = TargetCFrame
          end
        end
      end
    end
  else
    warn("Папка 'Items' не найдена в workspace.")
  end
end

--------------------------------------------------------------------------------------------- ТП ПРЕДМЕТОВ ВСЕХ ---------------------------------------------------------------------------------------------

Items:CreateButton({
   Name = "Тп предметы Все",
   Callback = function()
    TeleportItemsToPlayer()
   end,
})

--------------------------------------------------------------------------------------------- ТП ПРЕДМЕТОВ | ДЕРЕВЬЕВ ---------------------------------------------------------------------------------------------


Items:CreateButton({
   Name = "!!!ПРЕДУПРЕЖДЕНИЕ МОЖЕТ ЛАГАТЬ ПРИ ТП!!!",
   Callback = function()
      print('!!!ПРЕДУПРЕЖДЕНИЕ МОЖЕТ ЛАГАТЬ ПРИ ТП!!!')
   end,
})

local function createItemTeleportButton(itemName)
    Items:CreateButton({
       Name = itemName,
       Callback = function()
            local Character = game:GetService("Players").LocalPlayer.Character
            local ItemsFolder = workspace:FindFirstChild("Items")

            if not Character then
                warn("Character not found for " .. itemName .. " TP.")
                return
            end

            local DistanceInFront = 5
            local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

            if not HumanoidRootPart then
                warn("HumanoidRootPart not found for " .. itemName .. " TP.")
                return
            end

            local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

            if ItemsFolder then
                for _, Item in pairs(ItemsFolder:GetChildren()) do
                    if Item:IsA("BasePart") or Item:IsA("Model") then
                        if Item.Name == itemName then
                            if Item:IsA("Model") and Item.PrimaryPart then
                                Item:SetPrimaryPartCFrame(TargetCFrame)
                            elseif Item:IsA("BasePart") then
                                Item.CFrame = TargetCFrame
                            end
                        end
                    end
                end
            else
                warn("Папка 'Items' не найдена в workspace for " .. itemName .. " TP.")
            end
        end
    })
end

-- Create buttons for each item using the helper function
----------------------------------------------------------ДЕРЕВО---------------------------------------------
createItemTeleportButton("Oak Log")
createItemTeleportButton("Charred Oak Log")
createItemTeleportButton("Metallic Oak Log")
createItemTeleportButton("Pink Oak Log")
createItemTeleportButton("Dark Oak Log")
createItemTeleportButton("Miniature Oak Tree")
createItemTeleportButton("Spruce Log")
createItemTeleportButton("Burning Log")
createItemTeleportButton("Mega Log")
createItemTeleportButton("Sparkle Time Acorn")
----------------------------------------------------------КАМЕНЬ И ТД---------------------------------------------
createItemTeleportButton("Coal")
createItemTeleportButton("Copper")
createItemTeleportButton("Copper Bar")
createItemTeleportButton("Iron")
createItemTeleportButton("Iron Bar")
createItemTeleportButton("Tungsten")
createItemTeleportButton("Tungsten Bar")
createItemTeleportButton("Lead")
createItemTeleportButton("Lead Bar")
createItemTeleportButton("Tin")
createItemTeleportButton("Tin Bar")
createItemTeleportButton("Silver")
createItemTeleportButton("Silver Bar")
createItemTeleportButton("Platinum")
createItemTeleportButton("Platinum Bar")
createItemTeleportButton("Gold")
createItemTeleportButton("Gold Bar")
createItemTeleportButton("Demonium")
createItemTeleportButton("Demonium Bar")
createItemTeleportButton("Holyum")
createItemTeleportButton("Holyum Bar")
createItemTeleportButton("Corrupted Bar")
createItemTeleportButton("True Bar")
createItemTeleportButton("False Bar")
createItemTeleportButton("Amythest")
createItemTeleportButton("Ruby")
createItemTeleportButton("Sapphire")
createItemTeleportButton("Topaz")
createItemTeleportButton("Diamond")
createItemTeleportButton("Emerald")
createItemTeleportButton("Sparkle Time Coal")
createItemTeleportButton("Atom")
createItemTeleportButton("Meteorite")
createItemTeleportButton("Wheat")
createItemTeleportButton("Tomato")
createItemTeleportButton("Potato")
createItemTeleportButton("Pineapple")
createItemTeleportButton("Watermelon")
createItemTeleportButton("Jack-o'-Lantern")
createItemTeleportButton("Dominus Aureus")
createItemTeleportButton("Cowbell")
createItemTeleportButton("Spellbook")
createItemTeleportButton("Coin")
createItemTeleportButton("Bucket")
createItemTeleportButton("Spork")
createItemTeleportButton("Chest")
createItemTeleportButton("Golden Chalice")
createItemTeleportButton("Treasure Chest")
createItemTeleportButton("Wooden Figurine")
createItemTeleportButton("Bronze Figurine")
createItemTeleportButton("Silver Figurine")
createItemTeleportButton("Gold Figurine")
createItemTeleportButton("Boot")
createItemTeleportButton("Clown Fish")
createItemTeleportButton("Yellowfish")
createItemTeleportButton("Jellyfish")
createItemTeleportButton("Cyanfish")
createItemTeleportButton("Greenfish")
createItemTeleportButton("Bluefish")
createItemTeleportButton("Redfish")
createItemTeleportButton("Shark")
createItemTeleportButton("Realistic Fish")
createItemTeleportButton("Miniature Oak Tree")
createItemTeleportButton("Burning Log")
createItemTeleportButton("Sparkle Time Acorn")
createItemTeleportButton("Mega Log")
createItemTeleportButton("Boombox -1")
createItemTeleportButton("Birthday Boombox 1")
createItemTeleportButton("Boombox 0")
createItemTeleportButton("Boombox 1")
createItemTeleportButton("Boombox 10")
createItemTeleportButton("Boombox 11")
createItemTeleportButton("Boombox 12")
createItemTeleportButton("Boombox 13")
createItemTeleportButton("Boombox 14")
createItemTeleportButton("Boombox 15")
createItemTeleportButton("Boombox 2")
createItemTeleportButton("Boombox 3")
createItemTeleportButton("Boombox 4")
createItemTeleportButton("Boombox 5")
createItemTeleportButton("Boombox 6")
createItemTeleportButton("Boombox 7")
createItemTeleportButton("Boombox 8")
createItemTeleportButton("Boombox 9")
createItemTeleportButton("Christmas Boombox 1")
createItemTeleportButton("Shop Boombox 1")
createItemTeleportButton("Space Boombox 1")
createItemTeleportButton("Spring Boombox 1")
createItemTeleportButton("Rusted Boombox 1")
createItemTeleportButton("Purbl Boombox 1")
createItemTeleportButton("Purbl Boombox 2")
createItemTeleportButton("Halloween Boombox 1")
createItemTeleportButton("Eepy Boombox 3")
createItemTeleportButton("Eepy Boombox 2")
createItemTeleportButton("Eepy Boombox 1")
createItemTeleportButton("Developer Boombox 1")




