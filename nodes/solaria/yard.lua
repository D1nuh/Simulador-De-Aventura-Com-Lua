local ID = "solaria.yard"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "%{green}Praça de Solaria%{white}"
node.description = [[Ao andar por ai você acaba achando varios lugares para explorar e coisas fazer elas são:

● Ir Trabalhar nas minas
● Ir a Loja da Cidade
● Mais lugares em breve...
]]

node.header = [[
             )                              (
            (                                 )
    ________[]_                              []
   /^=^-^-^=^-^\                   /^~^~^~^~^~^~\
  /^-^-^-^-^-^-^\                 /^ ^ ^  ^ ^ ^ ^\
 /__^_^_^_^^_^_^_\               /_^_^_^^_^_^_^_^_\
  |  .==.       |                 |        .--.  |
^^|  |LI|  [}{] |^^^^        ^^^^^|  [}{]  |[]|  |^^^^^
&&|__|__|_______|&&  ________  88|________|__|__|888
     ====        ___/        \____       ====
      ====      /                 \    ====]]


-- local function nodepay()
--     local addmoney = 0
--     node.pay = true
--     while node.pay do
--         addmoney = math.random(5) * 5
--         game.money = game.money + addmoney
--         node.pay = false
--         return "solaria.mines"
--     end
-- end

table.insert(node.choices, Choice:new(
    "solaria.mines",
    "Ir trabalhar nas Minas"
))

table.insert(node.choices, Choice:new(
    "solaria.shop",
    "Ir ate a loja da cidade"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Retornar a entrada da Cidade "
))

return node