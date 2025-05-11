local ID = "hidrius.bonfire"
local Node = require("node")
local Choice = require("choice")


local node = Node:new(ID) ---@type Node
node.title = "Registros Incompletos"
node.description = [[Que sorte! Ao verificar a fogueira você acha duas coisas, a primeira é uma garrafas de água cheia que não esta quente oque também indica que alguém estava ali recentemente.
A outra coisa é registros de diarios, mapas etc, que revelam uma pequena investigação a uma pequena caverna algumas horas de distancias dalI.
O que fazer agora?]]

table.insert(node.choices, Choice:new(
    "hidrius.cavern",
    "Caminhar até a caverna"
))

table.insert(node.choices, Choice:new(
    "hidrius.start",
    "Voltar para a Praia"
))

return node