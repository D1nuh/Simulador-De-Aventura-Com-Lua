local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")

function Choice:initialize(destination, description, condition, routine)
    self.destination = destination ---@type string/function
    self.description = description ---@type string
    self.condition = condition ---@type fun():boolean
    self.routine = routine ---@type function
end

--- returno e executa se a condição não for nula.
--- @return boolean
function Choice:hasCondition()
    return self.condition ~= nil
end

---Executa uma função se a condição e retorna se ela for altorizada.
---@return boolean
function Choice:runCondicion()
    if self.condition ~= nil and type(self.condition) == "function" then
        return self.condition()
    end
    return false
end

function Choice:runRoutine()
    if self.routine ~= nil and type(self.routine) == "function" then
        return self.routine()
    end
end

return Choice