local ID = "solaria.shop"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.header = [[
  _          _       
 | |    ___ (_) __ _ 
 | |   / _ \| |/ _` |
 | |__| (_) | | (_| |
 |_____\___// |\__,_|
          |__/       
          ]]
node.title = "%{yellow}Lojinha da Cidade%{white}" 
node.description = [[%{yellow}Você anda pela cidade e entra numa loja que te chama atenção.%{white}

------------------------------------

-- Itens

1 - Bússola ($25)
2 - Espada ($50)
3 - Venda ($75)
4 - codigo ($100)

------------------------------------
]]

node.footer = string.format("Dinheiro atual: $%s",game.money)

table.insert(node.choices, Choice:new(
    "solaria.shop_sucess",
    "Comprar Bússola"
))

table.insert(node.choices, Choice:new(
    "solaria.shop_sucess",
    "Comprar Espada"
))

table.insert(node.choices, Choice:new(
    "solaria.shop_sucess",
    "Comprar Venda"
))

table.insert(node.choices, Choice:new(
    "solaria.shop_sucess",
    "Comprar Codigo"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Retorna para a cidade"
))

return node