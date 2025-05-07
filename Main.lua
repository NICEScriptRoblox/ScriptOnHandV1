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
        local mine = рабочее пространство: FindFirstChild("маленький mine2", true)
        локальный humanoidRootPart = игра.Игроки.Локальный игрок.Персонаж и игра.Игроки.Локальный игрок.Символ: FindFirstChild("HumanoidRootPart"), 

        если мой и humanoidRootPart , то
            local кирка = мой:FindFirstChild("Кирка", true),
            если кирка , то
                humanoidRootPart.CFrame = кирка.CFrame + Vector3.new(0, 2, 0)
            else
                warn("Кирка не найдена в маленькой шахте 2".)
            end
        else
            warn("маленькая шахта 2 или часть HumanoidRootPart не найдена для Меторит 2 TP.")
        end
   end,
})

tp:createButton({
   Name = "Меторит 3 (ЕСЛИ ЕСТЬ)",
   обратный вызов = функция()
        локальная шахта  = рабочее пространство: FindFirstChild("маленькая шахта3", true)
        локальная часть humanoidRootPart = игра.Игроки.Локальный игрок.Персонаж и игра.Игроки.Локальный игрок.Символ: FindFirstChild("HumanoidRootPart"), 

        если мой и humanoidRootPart , то
            local кирка = мой:FindFirstChild("Кирка", true),
            если кирка , то
                человеческийкорень.CFrame = кирка.CFrame + Vector3.new(0, 2, 0)
            else
                warn("Кирка не найдена в маленькой шахте3".)
            end
        else
            warn("маленькая шахта3 или часть HumanoidRootPart не найдена для Меторит 3 TP.")
        end
   end,
}) 

---------------------------------------------------------------------------------------------  АФТО ФАРМ  ---------------------------------------------------------------- -----------------------------

local autoFarmRocksEnabled = false
local autoFarmRocksConnection = nil

Main:CreateToggle({
   Name = "Авто Фарм Камней (НЕ ГОТОВ)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        autoFarmRocksEnabled = Value
        if autoFarmRocksEnabled and autoFarmRocksConnection == nil then
            autoFarmRocksConnection = game:GetService("RunService").Пошаговый:Connect(функция(),
                если включена функция autoFarmRocksEnabled , то
                    local mine = рабочее пространство:FindFirstChild("Mine", true)
                    local humanoidRootPart = game.Игроки.Локальный игрок.Персонаж и игра.Игроки.Локальный игрок.Character:FindFirstChild("HumanoidRootPart")

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
    ['Meteorite'] = true, -- Added Meteorite
    ['Wheat'] = true, -- Added Wheat
    ['Tomato'] = true, -- Added Tomato
    ['Potato'] = true, -- Added Potato
    ['Pineapple'] = true, -- Added Pineapple
    ['Watermelon'] = true, -- Added Watermelon
    ['Dominus Aureus'] = true, -- Added Dominus Aureus
    ['Cowbell'] = true, -- Added Cowbell
    ['Spellbook'] = true, -- Added Spellbook
    ['Coin'] = true, -- Added Coin
    ['Bucket'] = true, -- Added Bucket
    ['Spork'] = true, -- Added Spork
    ['Chest'] = true, -- Added Chest
    ['Golden Chalice'] = true, -- Added Golden Chalice
    ['Treasure Chest'] = true, -- Added Treasure Chest
    ['Wooden Figurine'] = true, -- Added Wooden Figurine
    ['Bronze Figurine'] = true, -- Added Bronze Figurine
    ['Silver Figurine'] = true, -- Added Silver Figurine
    ['Gold Figurine'] = true, -- Added Gold Figurine
    ['Boot'] = true, -- Added Boot
    ['Clown Fish'] = true, -- Added Clown Fish
    ['Yellowfish'] = true, -- Added Yellowfish
    ['Jellyfish'] = true, -- Added Jellyfish
    ['Cyanfish'] = true, -- Added Cyanfish
    ['Greenfish'] = true, -- Added Greenfish
    ['Bluefish'] = true, -- Added Bluefish
    ['Redfish'] = true, -- Added Redfish
    ['Shark'] = true, -- Added Shark
    ['Realistic Fish'] = true, -- Added Realistic Fish
    ['Boombox -1'] = true, -- Added Boombox -1
    ['Birthday Boombox 1'] = true, -- Added Birthday Boombox 1
    ['Boombox0'] = true, -- Added Boombox0
    ['Boombox1'] = true, -- Added Boombox1
    ['Boombox10'] = true, -- Added Boombox10
    ['Boombox11'] = true, -- Added Boombox11
    ['Boombox12'] = true, -- Added Boombox12
    ['Boombox13'] = true, -- Added Boombox13
    ['Boombox14'] = true, -- Added Boombox14
    ['Boombox15'] = true, -- Added Boombox15
    ['Boombox2'] = true, -- Added Boombox2
    ['Boombox3'] = true, -- Added Boombox3
    ['Boombox4'] = true, -- Added Boombox4
    ['Boombox5'] = true, -- Added Boombox5
    ['Boombox6'] = true, -- Added Boombox6
    ['Boombox7'] = true, -- Added Boombox7
    ['Boombox8'] = true, -- Added Boombox8
    ['Boombox9'] = true, -- Added Boombox9
    ['Christmas Boombox 1'] = true, -- Added Christmas Boombox 1
    ['Shop Boombox 1'] = true, -- Added Shop Boombox 1
    ['Space Boombox 1'] = true, -- Added Space Boombox 1
    ['Spring Boombox 1'] = true, -- Added Spring Boombox 1
    ['Rusted Boombox 1'] = true, -- Added Rusted Boombox 1
    ['Purbl Boombox 1'] = true, -- Added Purbl Boombox 1
    ['Purbl Boombox 2'] = true, -- Added Purbl Boombox 2
    ['Halloween Boombox 1'] = true, -- Added Halloween Boombox 1
    ['Eepy Boombox 3'] = true, -- Added Eepy Boombox 3
    ['Eepy Boombox 2'] = true, -- Added Eepy Boombox 2
    ['Eepy Boombox 1'] = true, -- Added Eepy Boombox 1
    ['Developer Boombox 1'] = true, -- Added Developer Boombox 1
  }

  -- Calculate the target position based on the player's CFrame
  local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

  if ItemsFolder then
    for _, Item in pairs(ItemsFolder:GetChildren()) do
      if Item:IsA("BasePart") or Item:IsA("Model") then
        if ItemsOnly[Item.Name] then
          if Item:IsA("Model") then
            local handle = Item:FindFirstChild("Handle")
            if handle and handle:IsA("BasePart") then
              handle.CFrame = TargetCFrame
            elseif Item.PrimaryPart then
              Item:SetPrimaryPartCFrame(TargetCFrame)
            end
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
                            if Item:IsA("Model") then
                                local handle = Item:FindFirstChild("Handle")
                                if handle and handle:IsA("BasePart") then
                                    handle.CFrame = TargetCFrame
                                elseif Item.PrimaryPart then
                                    Item:SetPrimaryPartCFrame(TargetCFrame)
                                end
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
createItemTeleportButton("Boombox0")
createItemTeleportButton("Boombox1")
createItemTeleportButton("Boombox10")
createItemTeleportButton("Boombox11")
createItemTeleportButton("Boombox12")
createItemTeleportButton("Boombox13")
createItemTeleportButton("Boombox14")
createItemTeleportButton("Boombox15")
createItemTeleportButton("Boombox2")
createItemTeleportButton("Boombox3")
createItemTeleportButton("Boombox4")
createItemTeleportButton("Boombox5")
createItemTeleportButton("Boombox6")
createItemTeleportButton("Boombox7")
createItemTeleportButton("Boombox8")
createItemTeleportButton("Boombox9")
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
