local class = require("libs.middleclass")

---@class GameData
local GameData = class("GameData")

function GameData:initialize()
    self.activeNode = nil ---@type Node
    self.isOver = false ---@type boolean
    self.hasKey = false ---@type boolean
    self.hasCode = false ---@type boolean
    self.addmoney = 0 ---@type number
    self.code = false ---@type boolean
    self.money = 0 ---@type number
    self.compass = false ---@type boolean
    self.sword = false ---@type boolean
    self.blindfold = false ---@type boolean
end

return GameData