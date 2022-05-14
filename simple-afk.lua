local CurrentPart = nil --/do not change
local MaxInc = 16 --/do not change


function onTouched(hit)
	if hit.Parent == nil then
		return
	end

	local humanoid = hit.Parent:findFirstChild("Humanoid")

	if humanoid == nil then
		CurrentPart = hit
	end
end

function waitForChild(parent, childName)
	local child = parent:findFirstChild(childName)

	if child then
		return child
	end

	while true do
		print(childName)

		child = parent.ChildAdded:wait()

		if child.Name==childName then
			return child
		end
	end
end

local Figure = game.Players.LocalPlayer.Character
local Humanoid = waitForChild(Figure, "Humanoid")
local LeftFoot = waitForChild(Figure, "LeftFoot")
local LeftLowerLeg = waitForChild(Figure, "LeftLowerLeg")
local LeftUpperLeg = waitForChild(Figure, "LeftUpperLeg")
local LeftLowerArm = waitForChild(Figure, "LeftLowerArm")
local LeftUpperArm = waitForChild(Figure, "LeftUpperArm")
local LeftHand = waitForChild(Figure, "LeftHand")
local LowerTorso = waitForChild(Figure, "LowerTorso")
local RightFoot = waitForChild(Figure, "RightFoot")
local RightLowerLeg = waitForChild(Figure, "RightLowerLeg")
local RightUpperLeg = waitForChild(Figure, "RightUpperLeg")
local RightLowerArm = waitForChild(Figure, "RightLowerArm")
local RightUpperArm = waitForChild(Figure, "RightUpperArm")
local RightHand = waitForChild(Figure, "RightHand")
local UpperTorso = waitForChild(Figure, "UpperTorso")


--Humanoid.Jump = true
local args = {
    [1] = "afk script by martiin♯0015",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))


LeftFoot.Touched:connect(onTouched)
RightFoot.Touched:connect(onTouched)

task.spawn(function()
    while getgenv().spamenable do
        task.wait(getgenv().spamspeed)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(getgenv().spam, "All")
    end
end)

task.spawn(function()
    while getgenv().move do
        task.wait(math.random(2,6))
        if CurrentPart ~= nil then
            if math.random(1, 2) == 1 then
                Humanoid.Jump = false
            end
            Humanoid:MoveTo(LowerTorso.Position + Vector3.new(math.random(-MaxInc, MaxInc), 0, math.random(-MaxInc, MaxInc)), CurrentPart)
        end
    end
end)

if antiafk then
  local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end

if not antiafk then
    print("not antiafk")
end
