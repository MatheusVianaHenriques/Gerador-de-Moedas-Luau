local coinSpawner = script.Parent
local coinModel = game.ReplicatedStorage:WaitForChild("coin")

while task.wait(0.5) do
	  coinClone = coinModel:Clone()
	  randomX = math.random(-50,50)
	  height = 1
	  randomZ = math.random(-60,60)
	  
	coinClone.Parent = game.Workspace.moedas
	  coinClone.Position = coinSpawner.Position + Vector3.new(randomX,height,randomZ)
	  game.Debris:AddItem(coinClone,9)
end




