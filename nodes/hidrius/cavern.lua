local ID = "hidrius.cavern"
local Node = require("node")
local Choice = require("choice")

local node = Node:new(ID) ---@type Node
node.title = "A Caverna "
node.description = [[Ao andar por um tempo você chega na carverna que o mapa mostra e entra nela. A caverna parece esta conectada a um tunel com uma porta de ferro super resistente.
Ao lado da porta tem um painel que pede um codigo de 4 digitos para abri-la.
O que fazer Agora?]]
node.header = [[
          /\
         /**\
        /****\   /\
       /      \ /**\
      /  /\    /    \        /\    /\  /\      /\            /\/\/\  /\
     /  /  \  /      \      /  \/\/  \/  \  /\/  \/\  /\  /\/ / /  \/  \
    /  /    \/ /\     \    /    \ \  /    \/ /   /  \/  \/  \  /    \   \
   /  /      \/  \/\   \  /      \    /   /    \
__/__/__■■■__/___/__\___\__________________________________________________
]]

local function Code()
    -- 4! = 24
    local CodeChance = math.random(24)

    if CodeChance == 4 then
        return "hidrius.lake"
    else
        return "hidrius.codes"
    end
end

table.insert(node.choices, Choice:new(
    Code(),
    "Chuta qualquer codigo"
))

table.insert(node.choices, Choice:new(
    "hidrius.lake",
    "Colocar codigo certo"
))

table.insert(node.choices, Choice:new(
    "hidrius.start",
    "Voltar ate a Praia"
))

return node