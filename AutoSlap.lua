
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
Frame2 = Instance.new("Frame")
TextLabel3 = Instance.new("TextLabel")
TextButton4 = Instance.new("TextButton")
TextBox5 = Instance.new("TextBox")
TextButton6 = Instance.new("TextButton")
TextBox7 = Instance.new("TextBox")
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.0376506001, 0, 0.0435413644, 0)
Frame1.Size = UDim2.new(0, 230, 0, 185)
Frame1.BackgroundColor = BrickColor.new("Light grey metallic")
Frame1.BackgroundColor3 = Color3.new(0.666667, 0.666667, 0.666667)
Frame1.BorderColor = BrickColor.new("Really black")
Frame1.BorderColor3 = Color3.new(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame2.Parent = Frame1
Frame2.Size = UDim2.new(0, 230, 0, 26)
Frame2.BackgroundColor = BrickColor.new("Silver flip/flop")
Frame2.BackgroundColor3 = Color3.new(0.541176, 0.541176, 0.541176)
Frame2.BorderColor = BrickColor.new("Really black")
Frame2.BorderColor3 = Color3.new(0, 0, 0)
Frame2.BorderSizePixel = 0
TextLabel3.Parent = Frame2
TextLabel3.Size = UDim2.new(0, 201, 0, 26)
TextLabel3.BackgroundColor = BrickColor.new("Institutional white")
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.BorderColor = BrickColor.new("Really black")
TextLabel3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel3.BorderSizePixel = 0
TextLabel3.Font = Enum.Font.Unknown
TextLabel3.FontSize = Enum.FontSize.Size14
TextLabel3.Text = "AutoSlap"
TextLabel3.TextColor = BrickColor.new("Really black")
TextLabel3.TextColor3 = Color3.new(0, 0, 0)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 14
TextLabel3.TextWrap = true
TextLabel3.TextWrapped = true
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextButton4.Parent = Frame2
TextButton4.Position = UDim2.new(0.87391305, 0, 0, 0)
TextButton4.Size = UDim2.new(0, 29, 0, 26)
TextButton4.BackgroundColor = BrickColor.new("Dark grey metallic")
TextButton4.BackgroundColor3 = Color3.new(0.329412, 0.329412, 0.329412)
TextButton4.BorderColor = BrickColor.new("Really black")
TextButton4.BorderColor3 = Color3.new(0, 0, 0)
TextButton4.BorderSizePixel = 0
TextButton4.Font = Enum.Font.SourceSans
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.Text = "-"
TextButton4.TextColor = BrickColor.new("Really black")
TextButton4.TextColor3 = Color3.new(0, 0, 0)
TextButton4.TextScaled = true
TextButton4.TextSize = 14
TextButton4.TextWrap = true
TextButton4.TextWrapped = true
TextBox5.Name = "pname"
TextBox5.Parent = Frame1
TextBox5.Position = UDim2.new(0.0652173907, 0, 0.176923096, 0)
TextBox5.Size = UDim2.new(0, 200, 0, 50)
TextBox5.BackgroundColor = BrickColor.new("Institutional white")
TextBox5.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox5.BorderColor = BrickColor.new("Really black")
TextBox5.BorderColor3 = Color3.new(0, 0, 0)
TextBox5.BorderSizePixel = 0
TextBox5.Font = Enum.Font.Unknown
TextBox5.FontSize = Enum.FontSize.Size14
TextBox5.Text = ""
TextBox5.TextColor = BrickColor.new("Really black")
TextBox5.TextColor3 = Color3.new(0, 0, 0)
TextBox5.TextScaled = true
TextBox5.TextSize = 14
TextBox5.TextWrap = true
TextBox5.TextWrapped = true
TextBox5.PlaceholderText = "Player Name"
TextButton6.Parent = Frame1
TextButton6.Position = UDim2.new(0.300000012, 0, 0.821621597, 0)
TextButton6.Size = UDim2.new(0, 91, 0, 26)
TextButton6.BackgroundColor = BrickColor.new("Dark grey metallic")
TextButton6.BackgroundColor3 = Color3.new(0.329412, 0.329412, 0.329412)
TextButton6.BorderColor = BrickColor.new("Really black")
TextButton6.BorderColor3 = Color3.new(0, 0, 0)
TextButton6.BorderSizePixel = 0
TextButton6.Font = Enum.Font.SourceSans
TextButton6.FontSize = Enum.FontSize.Size14
TextButton6.Text = "Slap!"
TextButton6.TextColor = BrickColor.new("Really black")
TextButton6.TextColor3 = Color3.new(0, 0, 0)
TextButton6.TextScaled = true
TextButton6.TextSize = 14
TextButton6.TextWrap = true
TextButton6.TextWrapped = true
TextBox7.Name = "countdown"
TextBox7.Parent = Frame1
TextBox7.Position = UDim2.new(0.0652173907, 0, 0.49584201, 0)
TextBox7.Size = UDim2.new(0, 200, 0, 50)
TextBox7.BackgroundColor = BrickColor.new("Institutional white")
TextBox7.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox7.BorderColor = BrickColor.new("Really black")
TextBox7.BorderColor3 = Color3.new(0, 0, 0)
TextBox7.BorderSizePixel = 0
TextBox7.Font = Enum.Font.Unknown
TextBox7.FontSize = Enum.FontSize.Size14
TextBox7.Text = ""
TextBox7.TextColor = BrickColor.new("Really black")
TextBox7.TextColor3 = Color3.new(0, 0, 0)
TextBox7.TextScaled = true
TextBox7.TextSize = 14
TextBox7.TextWrap = true
TextBox7.TextWrapped = true
TextBox7.PlaceholderText = "Countdown (normal: 3)"
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end


-- Drag GUI
local UserInputService = game:GetService("UserInputService")

local gui = Frame1

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)


-- Settings
local tool 
local toolFoundOn
function getTool()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name ~= "Radio" then
				tool = v
				toolFoundOn = "Backpack"
			end
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name ~= "Radio" then
				tool = v
				toolFoundOn = "Character"
			end
		end
	end

end

function ToolToggle()
	if toolFoundOn == "Backpack" then
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	elseif toolFoundOn == "Character" then
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
	end
end

function goto(playerName)
	local player = game.Players:FindFirstChild(playerName)
	if player then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
	end
end

function ActivateTool()
	tool:Activate()
end

TextButton6.MouseButton1Click:Connect(function()
	local localLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	local countdown = tonumber(TextBox7) or 3
	TextBox7.Text = countdown
	for i = 1, countdown do
		wait(1)
		TextBox7.Text = countdown - i + 1
	end
	getTool()
	if tool == nil then
		return
	end
	if toolFoundOn == "Backpack" then
		ToolToggle()
	end
	goto(TextBox5)
	wait(0.1)
	ActivateTool()
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = localLocation
	if toolFoundOn == "Backpack" then
		ToolToggle() -- make sure the player doesnt de equip because its the player yk
	end
	
end)
