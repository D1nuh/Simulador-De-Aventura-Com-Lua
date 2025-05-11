local ID = "solaria.door"
local Node = require("node")
local Choice = require("choice")


local node = Node:new(ID) ---@type Node
node.title = "O Grande e misterioso portão"
node.description = [[O grande portão se abre e você sente que te leva a direção do fim da jornada, você se enche de determinação e começa a correr adentrando aquala contrução antiga.
depois de uma tempo correndo pelos corredores com pouca iluminação você chega em uma parede com uma placa que diz: "Há dois caminhos a seguir, o da direita e o da esquerda, só um deles leva ao seu objetivo".
O que fazer agora?]]


table.insert(node.choices, Choice:new(
    "solaria.door",
    "TODO"
))

return node