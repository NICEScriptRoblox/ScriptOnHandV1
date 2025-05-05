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








local Toggle = Main:CreateToggle({
   Name = "Авто Фарм Камней ХУЙНЯ",
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
