-- Game over

local ID = "hidrius.agua"
local Node = require("node")

local node = Node:new(ID) ---@type Node
node.gameOver = true
node.title = "%{red}Morreu de sede%{white}" 
node.description = "Você passa um bom tempo procurando água mas a unica que você encontra e salgada, em meio a uma infinidade de água você morreu de sede. Fim de jogo."

return node