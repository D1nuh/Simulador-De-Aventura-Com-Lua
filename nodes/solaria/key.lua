local ID = "solaria.key"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "%{yellow}Você não tem a Chave%{white}" 
node.description = "Você precisa da chave para adentrar a grande e misteriosa porta."

table.insert(node.choices, Choice:new(
    "solaria.hill",
    "Retorna para a colina"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Retorna para a cidade"
))

return node