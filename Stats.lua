--Variaveis
local leaderstats = Instance.new("Folder")
local coins = Instance.new("IntValue")
local players = game:GetService("Players")


players.PlayerAdded:Connect(function(playerRefered)
	--leaderstats definição
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = playerRefered
	--moedas definição
	coins.Parent = leaderstats
	coins.Value = 0
	coins.Name = "Coins"
	--saida
end)