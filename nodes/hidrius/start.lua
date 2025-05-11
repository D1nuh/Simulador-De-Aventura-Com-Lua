local ID = "hidrius.start"
local Node = require("node")
local Choice = require("choice")


local node = Node:new(ID) ---@type Node
node.title = "Sol, Areia e Problemas de Hidratação"
node.description = [[Seguindo a fumaça, você encontra uma praia tropical deserta sob um sol forte. Uma fogueira recém-apagada indica presença recente.
Sua boca está seca como a areia, você esqueceu de beber água. 
O que fazer agora?]]
node.header = [[

           %{white}   SSSS
           %{white}   SSSSS               %{yellow}       |
          %{white}   SSSS                 %{yellow}    \  _  /
          %{white}  SSS                   %{yellow}  -= ( _ ) =-
 %{green}  .\/.   %{white}   SS                     %{yellow}  /     \
%{green}.\\//o\\   %{white}   S     %{green}           ,\/.    %{yellow}  |             
%{green}//o\\|,\/.   %{white}  S    %{green}  ,\/.  ,\//o\\                    
  %{white}|  |%{green}//o\  %{white}  S     %{green}  //o\  /o\\|                      
%{white}^~|^^|~|^^^^^%{white}S^^^^^^^^^|^^^^^|^^|^^^""""""""%{cyan}("~~~~~~~~~~~~~~~~~~~~~~~~
 %{white}.|'' . |  '/x\'''"''. | "'"'|''  '"" "" " %{cyan}(" ~~~~ ~ ~======~~  ~~ ~
 %{white}^^^^^^^   ^^^ ^ ^^^ ^^^^ ^^^ ^^ ^^ "" """%{cyan}( " ~~~~~~ ~~~~~  ~~~ ~
]]

table.insert(node.choices, Choice:new(
    "hidrius.bonfire",
    "Investigar a fogueira"
))

table.insert(node.choices, Choice:new(
    "hidrius.agua",
    "Ignorar a fogueira e procurar água"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Ir para Solaria"
))

return node