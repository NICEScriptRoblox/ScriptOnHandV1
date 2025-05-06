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
	game.Players.localPlayer.Character:MoveTo(Vector3.new(-237.5,82,665))
   end,
})


local Button = tp:CreateButton({
   Name = "Магазин 2",
   Callback = function()
	game.Players.localPlayer.Character:MoveTo(Vector3.new(1016,321.5,78))
   end,
})


local Button = tp:CreateButton({
   Name = "error",
   Callback = function()
	game.Players.localPlayer.Character:MoveTo(Vector3.new(-564,1022,286))
   end,
})



local Button = tp:CreateButton({
   Name = "Грибной остров",
   Callback = function()
	game.Players.localPlayer.Character:MoveTo(Vector3.new(-1859,625,275))
   end,
})


local Button = tp:CreateButton({
   Name = "Большое дерево",
   Callback = function()
	game.Players.localPlayer.Character:MoveTo(Vector3.new(-875,376,-475))
   end,
})


local Button = tp:CreateButton({
   Name = "Трейд зона",
   Callback = function()
	game.Players.localPlayer.Character:MoveTo(Vector3.new(497,246,237))
   end,
})


local Button = tp:CreateButton({
   Name = "Меторит 1 (ЕСЛИ ЕСТЬ)",
   Callback = function()
  		local mine = workspace:FindFirstChild("small mine1", true) 

        if mine then
            local pickaxe = mine:FindFirstChild("Pickaxe", true)

            if pickaxe then
                local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
                end
            end
        end
   end,
})


local Button = tp:CreateButton({
   Name = "Меторит 2 (ЕСЛИ ЕСТЬ)",
   Callback = function()
		local mine = workspace:FindFirstChild("small mine2", true) 

        if mine then
            local pickaxe = mine:FindFirstChild("Pickaxe", true)

            if pickaxe then
                local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
                end
            end
        end
   end,
})


local Button = tp:CreateButton({
   Name = "Меторит 3 (ЕСЛИ ЕСТЬ)",
   Callback = function()
        local mine = workspace:FindFirstChild("small mine3", true) 

        if mine then
            local pickaxe = mine:FindFirstChild("Pickaxe", true)

            if pickaxe then
                local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
                end
            end
        end

   end,
})




--------------------------------------------------------------------------------------------- АФТО ФАРМ ---------------------------------------------------------------------------------------------



local Toggle = Main:CreateToggle({
   Name = "Авто Фарм Камней (НЕ ГОТОВ)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
		while true do
			wait(5)
			if Value == false then
				local mine = workspace:FindFirstChild("Mine", true) 

				if mine then
					local pickaxe = mine:FindFirstChild("Pickaxe", true)

					if pickaxe then
						local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						if humanoidRootPart then
							humanoidRootPart.CFrame = pickaxe.CFrame + Vector3.new(0, 2, 0)
						end
					end
				end
			end
		end
   end,
})







local Toggle = Main:CreateToggle({
   Name = "Авто Фарм уборшик",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)

		while true do
			wait(1)
				local mine = workspace:FindFirstChild("Dust", true) 

				if mine then
					local Part = mine:FindFirstChild("Part", true)

					if Part then
						local humanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						if humanoidRootPart then
							humanoidRootPart.CFrame = Part.CFrame + Vector3.new(0, 2, 0)
						end
					end
				end
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

  local TargetPosition = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

  if ItemsFolder then
    for _, Item in pairs(ItemsFolder:GetChildren()) do
      if Item:IsA("BasePart") or Item:IsA("Model") then
        if ItemsOnly[Item.Name] then
          Item:PivotTo(TargetPosition)
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



--------------------------------------------------------------------------------------------- ТП ПРЕДМЕТОВ ---------------------------------------------------------------------------------------------

local Button = Items:CreateButton({
   Name = "Oak Log",
   Callback = function()
  	local Character = game:GetService("Players").LocalPlayer.Character
  	local ItemsFolder = workspace:FindFirstChild("Items")

  	if not Character then return end

  	local DistanceInFront = 5
 	local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

  	if not HumanoidRootPart then return end
			
	  local ItemsOnly = {
	    ['Oak Log'] = true,
	  }

	local TargetPosition = HumanoidRootPart.CFrame * CFrame.new(0, 0, -DistanceInFront)

	  if ItemsFolder then
	    for _, Item in pairs(ItemsFolder:GetChildren()) do
	      if Item:IsA("BasePart") or Item:IsA("Model") then
	        if ItemsOnly[Item.Name] then
	          Item:PivotTo(TargetPosition)
	        end
	      end
	    end
	  end
	end
   end,
})
