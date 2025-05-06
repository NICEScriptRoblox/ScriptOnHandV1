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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Button = tp:CreateButton({
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

local Toggle = Main:CreateToggle({
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

local Toggle = Main:CreateToggle({
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
    ['Coal'] = true
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

local Button = Items:CreateButton({
   Name = "Тп предметы Все",
   Callback = function()
    TeleportItemsToPlayer()
   end,
})

--------------------------------------------------------------------------------------------- ТП ПРЕДМЕТОВ | ДЕРЕВЬЕВ ---------------------------------------------------------------------------------------------

local Label = Items:CreateLabel("Деревья", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Items:CreateButton({
   Name = "Oak Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Oak Log" then -- Corrected this line
                        if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Charred Oak Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Charred Oak Log" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


local Button = Items:CreateButton({
   Name = "Metallic Oak Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Metallic Oak Log" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Pink Oak Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Pink Oak Log" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


local Button = Items:CreateButton({
   Name = "Dark Oak Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Dark Oak Log" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


local Button = Items:CreateButton({
   Name = "Miniature Oak Tree",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Miniature Oak Tree" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


local Button = Items:CreateButton({
   Name = "Spruce Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Spruce Log" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


local Button = Items:CreateButton({
   Name = "Burning Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Burning Log" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


local Button = Items:CreateButton({
   Name = "Mega Log",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Mega Log" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


local Button = Items:CreateButton({
   Name = "Sparkle Time Acorn",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Sparkle Time Acorn" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})


--------------------------------------------------------------------------------------------- ТП ПРЕДМЕТОВ | КАМЕНЬ И ТД ---------------------------------------------------------------------------------------------
local Label = Items:CreateLabel("Камень и тд", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme



local Button = Items:CreateButton({
   Name = "Coal",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Coal" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Copper",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Copper" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Copper Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Copper Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Iron",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Iron" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Iron Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Iron Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Tungsten",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Tungsten" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Sparkle Time Acorn",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Sparkle Time Acorn" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Tungsten Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Tungsten Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Lead",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Lead" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Lead Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Lead Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Tin",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Tin" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Tin Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Tin Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Silver",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Silver" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Silver Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Silver Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Platinum",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Platinum" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Platinum Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Platinum Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Gold",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Gold" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Gold Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Gold Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Demonium",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Demonium" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Demonium Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Demonium Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Holyum",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Holyum" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Holyum Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Holyum Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Corrupted Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Corrupted Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "True Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "True Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "False Bar",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "False Bar" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Amythest",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Amythest" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Ruby",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Ruby" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Sapphire",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Sapphire" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Topaz",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Topaz" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Diamond",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Diamond" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Emerald",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Emerald" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Sparkle Time Coal",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Sparkle Time Coal" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})

local Button = Items:CreateButton({
   Name = "Atom",
   Callback = function()
        local Character = game:GetService("Players").LocalPlayer.Character
        local ItemsFolder = workspace:FindFirstChild("Items")

        if not Character then return end

        local DistanceInFront = 5
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

        if ItemsFolder then
            for _, Item in pairs(ItemsFolder:GetChildren()) do
                if Item:IsA("BasePart") or Item:IsA("Model") then
                    if Item.Name == "Atom" then -- Corrected this line
                         if Item:IsA("Model") and Item.PrimaryPart then
                            Item:SetPrimaryPartCFrame(TargetCFrame)
                        elseif Item:IsA("BasePart") then
                            Item.CFrame = TargetCFrame
                        end
                    end
                end
            end
        end
    end
})
