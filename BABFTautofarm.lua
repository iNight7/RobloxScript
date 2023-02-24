-- Build a boat auto farm + anti-afk
-- 381 Golds per run (yeah , its correct i calculated)
-- RESTART GAME TO STOP THE FARM (sorry)
-- More infos -> in the last line
-- No credits


print("Build a boat auto farm - script executed")
-- Anti-Afk
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

-- Auto farm
local count = 0
local platformPositions = {
    Vector3.new(-58.603, 81.962, 1430.981),
    Vector3.new(-71.033, 81.589, 2253.214),
    Vector3.new(-60.507, 68.762, 3001.949),
    Vector3.new(-62.649, 33.261, 3729.935),
    Vector3.new(-57.339, 42.988, 4528.280),
    Vector3.new(-58.470, 53.215, 5300.864),
    Vector3.new(-57.673, 46.960, 6117.438),
    Vector3.new(-60.851, 50.781, 6839.433),
    Vector3.new(-49.456, 61.127, 7690.925)
}

for _, platformPosition in pairs(platformPositions) do
    local platform = Instance.new("Part")
    platform.Anchored = true
    platform.Position = platformPosition
    platform.Size = Vector3.new(10, 1, 10)
    platform.BrickColor = BrickColor.new("Cyan")
    platform.Parent = game.Workspace
end

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Status", 
	Text = "Auto farm + anti-afk Started", 
	Duration = 9 
})
wait(2)

game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")

while true do

wait(0.5)

--2 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-58.603, 81.962, 1430.981)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--3 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71.033, 81.589, 2253.214)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--4 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60.507, 68.762, 3001.949)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--5 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-62.649, 33.261, 3729.935)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--6 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.339, 42.988, 4528.280)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--End chest and jump
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.222, -345.368, 9489.333)
wait(1)
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")

wait(2)

--7 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-58.470, 53.215, 5300.864)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--8 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.673, 46.960, 6117.438)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--9 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60.851, 50.781, 6839.433)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--10 Stage
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.456, 61.127, 7690.925)
workspace.ClaimRiverResultsGold:FireServer()

wait(2)

--2 Stage again
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-58.603, 81.962, 1430.981)
workspace.ClaimRiverResultsGold:FireServer()

wait(2.5)
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
wait(4.3)
workspace.ClaimRiverResultsGold:FireServer()
wait(2.7)
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
wait(0.5)
count = count + 1
print("Times executed :" .. count)
end

-- I made this script , its work fine (i think) but i dont know how to make a working gui for that , so if you want to do this dont have problem