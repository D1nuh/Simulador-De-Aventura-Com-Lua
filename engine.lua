local class = require("libs.middleclass")
local NodeLoader = require("node_loader")
local ansicolorsx = require("libs.ansicolorsx")
local ultils = require("ultils")

-- Estetica do terminal (Cores), para o jogo.
local function print(...)
    _G.print(ansicolorsx(...))
end
local function iowrite(...)
    _G.io.write(ansicolorsx(...))
end



---@class Engine
local Engine = class("Engine")
function Engine:initialize()
end

function Engine:runMainLoop()
    while not game.isOver do

        local node = game.activeNode


        --- Comando para limpar o terminal, com base no sistema operacional.
        ---@return boolean
        local function isWindows()
            return type(package) == 'table' and type(package.config) == 'string' and package.config:sub(1,1) == '\\'
        end

        if isWindows() then
            os.execute("cls")
        else
            os.execute("clear")
        end

        self:PrintNode(node)

        --- Verifica se o jogo acabou ou se o jogador venceu.
        if node.gameOver or node.gameWin then
            if node.gameOver then
                print()
                print("%{red}Você perdeu, tente novamente!")
                print()
                os.exit()
            elseif node.gameWin then
                print()
                print("%{green}Você venceu, parabéns!")
                print()
                os.exit()
            end
        end

        local validChoices = self:getValidChoices(node)
        print()
        self:showChoices(validChoices)
        print()

        local choiceIndex = self:ask(#validChoices)
        local choice = validChoices[choiceIndex]

        choice:runRoutine()
        
        local destinationId = choice.destination
        local destinationNode = NodeLoader.getNode(destinationId)

        game.activeNode = destinationNode
    end
end

function Engine:PrintNode(node)
    if node.header then
        print(node.header)
    else
        if node.gameOver  then
            print(string.format("%%{red}%s", ultils.getGenericGameOverHeader()))
        elseif node.gameWin then
            print(string.format("%%{green}%s", ultils.getGenericGameWinHeader()))
        end
    end

    print("======== " .. node.title .. " ========")
    print()
    print(node.description)
    if node.footer then
        print(node.footer)
    else
        return nil
    end
    print()
    print("===========================================================")
end

---Retorna uma lista de escolhas válidas para o nó atual.
---@param node Node
---@return Choice[]
function Engine:getValidChoices(node)
    local result = {} ---@type Choice[]
    for _, choice in pairs(node.choices) do
        if (not choice:hasCondition()) or (choice:hasCondition() and choice:runCondicion()) then
            table.insert(result, choice)
        end
    end
    return result
end

---@param choices Choice[]
function Engine:showChoices(choices)
    for i, choice in pairs(choices) do
        print(string.format("%%{white}%d) %%{yellow}%s", i, choice.description))
    end
end

function Engine:ask(amount)
    while true do
        iowrite("> ")
        local answer = io.read()
        local answer = tonumber(answer)
        local isAswerValid = answer ~= nil and answer >= 1 and answer <= amount
        if isAswerValid then
            return answer
        end
        iowrite("%{red}Resposta inválida. Tente novamente.\n")
    end
end

return Engine