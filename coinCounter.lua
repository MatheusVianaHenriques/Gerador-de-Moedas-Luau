local players = game:GetService("Players")
local moedas = game.Workspace:WaitForChild("moedas")



local function onMoedaCriada(moedaClonada)
	if moedaClonada:IsA("BasePart") then --verifica se é uma parte base
		local debounce = false--sistema de cooldown
		moedaClonada.Touched:Connect(function(hit)--conecta a função quando a moeda que foi clonada for tocada
			if debounce == false then
				debounce = true
				local playerFromChar = players:GetPlayerFromCharacter(hit.Parent)--variaveis
				local playerleaderstats = playerFromChar:WaitForChild("leaderstats")
				local playerCoins = playerleaderstats.Coins
				playerCoins.Value += 1 --adiciona 1 as moedas do jogador que tocou na moeda clonada
				moedaClonada:Destroy()
				task.wait(1)
				debounce = false
			end
			
		end)
		
	end
end
moedas.ChildAdded:Connect(onMoedaCriada)--ativa a função quando a pasta moedas tiver algo dentro a mais.
--"moedaClonada" ganha o sinal dado por esse evento, que é o novo "algo" dentro da pasta.