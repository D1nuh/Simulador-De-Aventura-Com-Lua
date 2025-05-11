local ID = "start"

local Node = require("node")
local Choice = require("choice")



local node = Node:new(ID) ---@type Node
node.title = "O despertar de uma aventura"
node.description = [[
Você desperta sozinho num misterioso acampamento no alto de uma colina, cercado por uma floresta densa e viva.
Perdido e desorientado, sua única companhia e um imenso rastro de fumaça ascendendo ao céu e um misterioso caminho de pedras.
O que quer fazer? ]]

node.header = [[%{green}
 ____  _                 _           _                  _      
/ ___|(_)_ __ ___  _   _| | __ _  __| | ___  _ __    __| | ___ 
\___ \| | '_ ` _ \| | | | |/ _` |/ _` |/ _ \| '__|  / _` |/ _ \
 ___) | | | | | | | |_| | | (_| | (_| | (_) | |    | (_| |  __/
|____/|_|_| |_| |_|\__,_|_|\__,_|\__,_|\___/|_|     \__,_|\___|
   / \__   _____| |_ _   _ _ __ __ _ ___| |                    
  / _ \ \ / / _ \ __| | | | '__/ _` / __| |                    
 / ___ \ V /  __/ |_| |_| | | | (_| \__ \_|                    
/_/   \_\_/ \___|\__|\__,_|_|  \__,_|___(_)                    

]]


table.insert(node.choices, Choice:new(
    "hidrius.start",
    "Seguir em rumo ao rastro de fumaça"
))

table.insert(node.choices, Choice:new(
    "solaria.start",
    "Trilha o Caminho em pedras"
))


return node