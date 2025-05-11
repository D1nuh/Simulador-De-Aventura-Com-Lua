local ID = "solaria.shop_failled"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "%{red}Você não conseguiu comprar%{white}"
node.description = "Parece que você não tem dinheiro suficiente para comprar o item, volte quando tiver!"

table.insert(node.choices, Choice:new(
    "solaria.shop",
    "Retorna para o Shop"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Retorna para a Cidade"
))

return node