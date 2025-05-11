local ID = "solaria.mines"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "%{yellow}Minerações%{white}" 
node.description = [[Você passou a tarde toda minerando e parece que seu esforço valeu a pena.
Você então pega todos os minerios que conseguiu e vende ao comerciante]]
node.header = [[
⠀⠀⠀⠀⠀⠠⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣷⣦⡀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣇⠘⠿⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠙⢿⣷⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠆⠀⠙⢿⣿⣿⡄⠀⠈⣿⡟⠀⠀⢸⣿⣿⣿⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⠟⠁⠀⠀⠀⠈⠻⣿⣷⠀⠀⣿⠁⠀⠀⠀⣿⣿⣿⠀
⠀⠀⠀⠀⠀⣠⣾⣿⠟⠁⠀⠀⢠⣦⣄⠀⠀⠘⢿⡇⠀⠁⠀⠀⠀⠀⢹⣿⣿⠀
⠀⠀⠀⢠⣾⣿⠟⠁⠀⠀⠀⠀⠉⠙⠛⠛⠒⠀⠈⠃⠀⠀⠀⣴⣶⣾⣿⣿⣿⠀
⠀⢀⣴⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⠀
⠀⠀⠙⠁⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⡇⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣃⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⠀
⠀⠀⠀⠀⣤⣤⣄⣀⡀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣶⣤⡄⠀⠀⠀⣠⣿⣿⣿⠀
⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢰⣿⣿⣿⣿⠀
⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⣽⣿⣿⣿⠀
⠀⠀⠀⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠀]]

node.footer = string.format("Seu dinheiro atual agora é de %d (%%{green}+%d de dinheiro)",game.money, game.addmoney)

table.insert(node.choices, Choice:new(
    "solaria.shop",
    "Ir para a Loja"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Retorna para a cidade"
))

return node