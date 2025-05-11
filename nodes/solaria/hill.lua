local ID = "solaria.hill"
local Node = require("node")
local Choice = require("choice")


local node = Node:new(ID) ---@type Node
node.title = "A colina do sol"
node.description = [[Ao chegar no topo da colina você percebe uma coisa bem importante. E uma grande porta de ouro que bloqueia a entrada, parece que precisa de uma chave para entrar,
os desenhos escupidos ao redor revelam que se trata de uma contrução antiga e milenar, provavelmente sua origem seja para rituais e sacrificios para deuses, há tambem uma rachadura pequena escondida entre os arbustos.
O que fazer agora?]]

local function hasKey()
    if game.hasKey then
        return "solaria.door"
    else
        return "solaria.key"
    end
end

table.insert(node.choices, Choice:new(
    hasKey(),
    "Destrancar porta (Requer: Chave Dourada)"
))

table.insert(node.choices, Choice:new(
    "solaria.corner",
    "Seguir pela rachadura"

))

return node