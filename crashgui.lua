
local ezcrash = Instance.new("ScreenGui")
local Mainframe = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
local contador = Instance.new("TextLabel")

ezcrash.Name = "ezcrash"
ezcrash.Parent = game.CoreGui

Mainframe.Name = "Mainframe"
Mainframe.Parent = ezcrash
Mainframe.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Mainframe.BorderSizePixel = 0
Mainframe.Position = UDim2.new(0.154533848, 0, 0.401980191, 0)
Mainframe.Size = UDim2.new(0, 220, 0, 128)

TextButton.Parent = Mainframe
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(0, 220, 0, 26)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Kantina Ez Crasher"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextWrapped = true

Frame.Parent = Mainframe
Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 0.203125, 0)

TextButton_2.Parent = Mainframe
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Position = UDim2.new(0, 0, 0.734375, 0)
TextButton_2.Size = UDim2.new(0, 220, 0, 26)
TextButton_2.ZIndex = 2
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "(tools)"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000
TextButton_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextTransparency = 0.630
TextButton_2.TextWrapped = true

contador.Name = "contador"
contador.Parent = Mainframe
contador.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
contador.BackgroundTransparency = 1.000
contador.BorderColor3 = Color3.fromRGB(27, 42, 53)
contador.Position = UDim2.new(0, 0, 0.300000012, 0)
contador.Size = UDim2.new(1, 0, 0.492000014, 0)
contador.Font = Enum.Font.SourceSansBold
contador.Text = "/700"
contador.TextColor3 = Color3.fromRGB(255, 255, 255)
contador.TextSize = 30.000
contador.TextWrapped = true

-- Scripts:

local function GAHODRD_fake_script() -- Mainframe.DraggableGUI 
	local script = Instance.new('LocalScript', Mainframe)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
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
			if gui.Visible then
				update(input)
			end
		end
	end)
end
coroutine.wrap(GAHODRD_fake_script)()
local function TAWYVU_fake_script() -- contador.LocalScript 
	local script = Instance.new('LocalScript', contador)

	while wait() do
		local tools = 0
		for i,v in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				tools += 1
			end
		end
		
		script.Parent.Text = tools.." /700"
	end
end
coroutine.wrap(TAWYVU_fake_script)()
