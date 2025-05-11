
-- codigo para utf8
os.execute("chcp 65001")

-- habilitar warn
warn("@on")

-- Etapa de crição do nosso GameData, ou melhor, as variaveis do nosso jogo.
local GameData = require("game_data")
local nodeLoader = require("node_loader")
local Engine = require("engine")

local gameData = GameData:new() ---@type GameData
_G.game = gameData

nodeLoader.loadNodes()
game.activeNode = nodeLoader.getInitialNode()

if nodeLoader.hasErrors() then
    print("Ocorreu um erro ao carregar os nós do jogo.")
    os.exit()
end

local engine = Engine:new() ---@type Engine
engine:runMainLoop()