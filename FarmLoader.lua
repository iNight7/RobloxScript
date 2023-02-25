-- Loader for auto farm
-- 31-32 seconds to get to the end
-- 381 golds per run

-- Anti-Afk
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

-- Real loader for farm
local count = 0

print("Build a boat auto farm - script executed")
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

while true do
loadstring(game:HttpGet(('https://raw.githubusercontent.com/iNight7/RobloxScript/main/BABFTautofarm.lua'),true))()
  wait(0.2)
  count = count + 1
  print("Times executed :" .. count)
end
