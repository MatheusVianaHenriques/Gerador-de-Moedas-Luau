--variaveis
local players = game:GetService("Players")
local player = players.LocalPlayer
local leaderstats = player:WaitForChild("leaderstats")
local coins = leaderstats.Coins
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")


coins.Changed:Connect(function()
	humanoid.WalkSpeed += 1
	print(humanoid.WalkSpeed)
end)






