local ID = "hidrius.codes"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "%{yellow}Você não tem o codigo%{white}"
node.description = "Você não consegue abrir a porta pois não tem o codigo certo."

table.insert(node.choices, Choice:new(
    "hidrius.cavern",
    "Retorna para a caverna"
))

table.insert(node.choices, Choice:new(
    "hidrius.start",
    "Retorna para a praia"
))

return node