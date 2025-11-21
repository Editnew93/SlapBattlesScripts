print("Setting up!")
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
TextLabel2 = Instance.new("TextLabel")
TextLabel3 = Instance.new("TextLabel")
TextButton4 = Instance.new("TextButton")
TextButton5 = Instance.new("TextButton")
UICorner6 = Instance.new("UICorner")
UICorner7 = Instance.new("UICorner")
UICorner8 = Instance.new("UICorner")
ScreenGui0.Parent = game.CoreGui
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0, 0, 0, 0)
Frame1.Size = UDim2.new(0, 243, 0, 123)

Frame1.BackgroundColor = BrickColor.new("Really black")
Frame1.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Frame1.BorderColor = BrickColor.new("Really black")
Frame1.BorderColor3 = Color3.new(0, 0, 0)
Frame1.BorderSizePixel = 0
TextLabel2.Name = "Text"
TextLabel2.Parent = Frame1
TextLabel2.Size = UDim2.new(0, 243, 0, 18)
TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.BorderColor = BrickColor.new("Really black")
TextLabel2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel2.BorderSizePixel = 0
TextLabel2.Font = Enum.Font.Unknown
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.Text = "AntiVoid by ThePast01010"
TextLabel2.TextColor = BrickColor.new("Institutional white")
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.TextSize = 14
TextLabel3.Name = "Text"
TextLabel3.Parent = Frame1
TextLabel3.Position = UDim2.new(0, 0, 0.146341458, 0)
TextLabel3.Size = UDim2.new(0, 243, 0, 39)
TextLabel3.BackgroundColor = BrickColor.new("Institutional white")
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.BorderColor = BrickColor.new("Really black")
TextLabel3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel3.BorderSizePixel = 0
TextLabel3.Font = Enum.Font.Unknown
TextLabel3.FontSize = Enum.FontSize.Size14
TextLabel3.Text = "This plugin lets you do not die, if you fall, you survive. Last update: 20.11.2025"
TextLabel3.TextColor = BrickColor.new("Institutional white")
TextLabel3.TextColor3 = Color3.new(1, 1, 1)
TextLabel3.TextSize = 14
TextLabel3.TextWrap = true
TextLabel3.TextWrapped = true
TextButton4.Name = "Injection"
TextButton4.Parent = Frame1
TextButton4.Position = UDim2.new(0.0864197537, 0, 0.463414639, 0)
TextButton4.Size = UDim2.new(0, 88, 0, 50)
TextButton4.BackgroundColor = BrickColor.new("Institutional white")
TextButton4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton4.BorderColor = BrickColor.new("Really black")
TextButton4.BorderColor3 = Color3.new(0, 0, 0)
TextButton4.BorderSizePixel = 0
TextButton4.Font = Enum.Font.Unknown
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.Text = "Inject"
TextButton4.TextColor = BrickColor.new("Really black")
TextButton4.TextColor3 = Color3.new(0, 0, 0)
TextButton4.TextSize = 14
TextButton5.Name = "Exit"
TextButton5.Parent = Frame1
TextButton5.Position = UDim2.new(0.518518507, 0, 0.463414639, 0)
TextButton5.Size = UDim2.new(0, 88, 0, 50)
TextButton5.BackgroundColor = BrickColor.new("Institutional white")
TextButton5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton5.BorderColor = BrickColor.new("Really black")
TextButton5.BorderColor3 = Color3.new(0, 0, 0)
TextButton5.BorderSizePixel = 0
TextButton5.Font = Enum.Font.Unknown
TextButton5.FontSize = Enum.FontSize.Size14
TextButton5.Text = "Exit"
TextButton5.TextColor = BrickColor.new("Really black")
TextButton5.TextColor3 = Color3.new(0, 0, 0)
TextButton5.TextSize = 14
UICorner6.Parent = Frame1
UICorner7.Parent = TextButton4
UICorner8.Parent = TextButton5
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


TextButton4.MouseButton1Click:Connect(function()
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	local Folder0 = Instance.new("Folder")
	local Sky1 = Instance.new("Sky")
	local Part2 = Instance.new("Part")
	local Part3 = Instance.new("Part")
	local Sky4 = Instance.new("Sky")
	local Highlight5 = Instance.new("Highlight")
	Folder0.Name = "AntiVoid"
	Folder0.Parent = mas
	Sky1.Name = "NormalSky"
	Sky1.Parent = Folder0
	Sky1.CelestialBodiesShown = false
	Sky1.MoonAngularSize = 40
	Sky1.MoonTextureId = "rbxassetid://5634829223"
	Sky1.SkyboxBk = "rbxassetid://7188892132"
	Sky1.SkyboxDn = "rbxassetid://7188892038"
	Sky1.SkyboxFt = "rbxassetid://7188891887"
	Sky1.SkyboxLf = "rbxassetid://7188891962"
	Sky1.SkyboxRt = "rbxassetid://7188891722"
	Sky1.SkyboxUp = "rbxassetid://7188891819"
	Part2.Name = "TeleportationPart"
	Part2.Parent = Folder0
	Part2.CFrame = CFrame.new(-37.3208008, -13.2520981, 35.0210571, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Part2.Position = Vector3.new(-37.321, -62.252, 35.021)
	Part2.Transparency = 1
	Part2.Size = Vector3.new(956.1187133789062, 1, 888.0209350585938)
	Part2.Anchored = true
	Part2.BottomSurface = Enum.SurfaceType.Smooth
	Part2.CanCollide = false
	Part2.TopSurface = Enum.SurfaceType.Smooth
	Part3.Name = "TeleportTo"
	Part3.Parent = Folder0
	Part3.CFrame = CFrame.new(-14.3885956, 72.5268631, 11.3706436, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Part3.Position = Vector3.new(-14.388595581054688, 72.52686309814453, 11.370643615722656)
	Part3.Transparency = 1
	Part3.Size = Vector3.new(218.37109375, 1, 182.8880615234375)
	Part3.Anchored = true
	Part3.BottomSurface = Enum.SurfaceType.Smooth
	Part3.CanCollide = false
	Part3.TopSurface = Enum.SurfaceType.Smooth
	Sky4.Name = "WhiteSky"
	Sky4.Parent = Folder0
	Sky4.CelestialBodiesShown = false
	Sky4.SkyboxBk = "http://www.roblox.com/asset/?ID=1361097"
	Sky4.SkyboxDn = "http://www.roblox.com/asset/?ID=1361097"
	Sky4.SkyboxFt = "http://www.roblox.com/asset/?ID=1361097"
	Sky4.SkyboxLf = "http://www.roblox.com/asset/?ID=1361097"
	Sky4.SkyboxRt = "http://www.roblox.com/asset/?ID=1361097"
	Sky4.SkyboxUp = "http://www.roblox.com/asset/?ID=1361097"
	Sky4.StarCount = 0
	Highlight5.Name = "AntiVoidHighlight"
	Highlight5.FillColor = Color3.new(0, 0, 0)
	Highlight5.OutlineColor = Color3.new(1, 1, 1)
	Highlight5.FillTransparency = 1
	Highlight5.OutlineTransparency = 1
	Highlight5.Parent = Folder0
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


	local function setLocalPlayerCharacterAnchored(val: boolean)
		local character = game.Players.LocalPlayer.Character
		for _, i in pairs(character:GetChildren()) do
			if i:IsA("BasePart") then
				i.Anchored = val
			end
		end
	end
	print("Set?")
	local AntiVoid = game.Workspace:FindFirstChild("AntiVoid")
	if AntiVoid then
		print("SET!")
		if game.Workspace:FindFirstChild("dedBarrier") then game.Workspace:FindFirstChild("dedBarrier"):Destroy() end
		if game.Lighting:FindFirstChild("Sky") then game.Lighting:FindFirstChild("Sky"):Destroy() end
		AntiVoid.NormalSky:Clone().Parent = game.Lighting
		local AntiVoidHighlight = AntiVoid.AntiVoidHighlight
		AntiVoidHighlight.Parent = workspace
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = AntiVoid.TeleportationPart.CFrame
		AntiVoid.TeleportationPart.Touched:Connect(function(id)
			print("Touch detected!")
			if id.Parent.Name == game.Players.LocalPlayer.Name then
				game.Lighting:FindFirstChild("NormalSky"):Destroy()
				AntiVoid.WhiteSky:Clone().Parent = game.Lighting
				AntiVoidHighlight.FillTransparency = 0
				AntiVoidHighlight.FillTransparency = 0
				setLocalPlayerCharacterAnchored(true)
				wait(3)
				AntiVoidHighlight.FillTransparency = 1
				AntiVoidHighlight.FillTransparency = 1
				game.Lighting:FindFirstChild("WhiteSky"):Destroy()
				AntiVoid.NormalSky:Clone().Parent = game.Lighting
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = AntiVoid.TeleportTo.CFrame
				setLocalPlayerCharacterAnchored(false)
			end
		end)
	end
	ScreenGui0:Destroy()
end)
TextButton5.MouseButton1Click:Connect(function()
	ScreenGui0:Destroy()
end)
