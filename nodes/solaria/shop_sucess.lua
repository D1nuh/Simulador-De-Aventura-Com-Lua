local ID = "solaria.shop_sucess"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "%{green}Você conseguiu comprar o Itemr%{white}"
node.description = "Parece que você tinha dinheiro suficiente para comprar o item, Aprioveite e o use com sabedoria!"

table.insert(node.choices, Choice:new(
    "solaria.shop",
    "Retorna para o Shop"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Retorna para a Cidade"
))

return node