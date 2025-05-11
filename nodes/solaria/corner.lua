local ID = "solaria.corner"
local Node = require("node")


local node = Node:new(ID) ---@type Node
node.title = "%{red}Sem volta%{white}"
node.gameOver = true
node.description = [[Você tenta entrar na masmorra de uma forma astuta e inteligente,
mas infelismente a sorte na esta do seu lado, você acaba ficando preso entre as paredes e acaba morrendo de fome.]]

return node