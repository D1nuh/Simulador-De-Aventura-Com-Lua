local ID = "solaria.start"
local Node = require("node")
local Choice = require("choice")


local node = Node:new(ID) ---@type Node
node.title = "A cidade do sol"
node.description = [[Ao seguir pelo caminho de pedras você acaba encontrando uma cidade chamada Solaria, essa cidade é bem peculiar pois ela e bem conhecida pelo seu clima perfeito.
Porém a varios dias a cidade tem se apresentado mais escuras pois o sol estava se 'pondo' mais cedo, sumindo de repende no horizonte cada dia mais e mais. 
Varios moradores parecem comentar sobre um brilho que ofusca o sol no topo de uma colina quase como se rouba-se o sol.
O que fazer agora?]]
node.header = [[
  ~         ~~          __
       _T      .,,.    ~--~ ^^
 ^^   // \                    ~
      ][O]    ^^      ,-~ ~
   /''-I_I         _II____
__/_  /   \ ______/ ''   /'\_,__
  | II--'''' \,--:--..,_/,.-{ },
; '/__\,.--';|   |[] .-.| O{ _ }
:' |  | []  -|   ''--:.;[,.'\,/
'  |[]|,.--'' '',   ''-,.    |
  ..    ..-''    ;       ''. ' 
]]

table.insert(node.choices, Choice:new(
  "solaria.hill",
  "Seguir ruma ao topo da colina"
))

table.insert(node.choices, Choice:new(
  "solaria.yard",
  "Da uma volta na cidade"
))

table.insert(node.choices, Choice:new(
  "hidrius.start",
  "Ir para Hidrius"
))

return node