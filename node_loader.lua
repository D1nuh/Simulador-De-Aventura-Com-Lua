local nodeLoader = {}

local nodeDictionary = {} ---@type table<string, Node>
local initialNode = nil ---@type Node
local hasErrors = false

-- Carrega um nó a partir do caminho fornecido
---@param path string
---@return Node
local function loadNode(path)
    local success, err = pcall(function () 
        return require(path)
    end)
    if not success then
        warn("Falha ao carregar o Node " .. path)
        hasErrors = true
        return nil
    end
    local node = err ---@type Node
    if nodeDictionary[node.id] ~= nil then
        warn("O Node " .. node.id .. " já foi carregado.")
        hasErrors = true
        return nil
    end
    nodeDictionary[node.id] = node
    return node
end

---@param Parent Node
local function loadNodesFromChoices(Parent)

    for _, choice in pairs(Parent.choices) do
        local destinationId = choice.destination
        if not nodeDictionary[destinationId] then
            local Child = loadNode("nodes." .. destinationId)
            if Child then
            loadNodesFromChoices(Child)
            end
        end
    end
end

--- Carrega todos os nós do jogo
function nodeLoader.loadNodes()
    nodeDictionary = {}

    initialNode = require("nodes.start")
    nodeDictionary[initialNode.id] = initialNode

    loadNodesFromChoices(initialNode)

    for id, node in pairs(nodeDictionary) do
        for _, choice in pairs(node.choices) do
            local destinationId = choice.destination
            local destinationNode = nodeDictionary[destinationId]
            if destinationNode == nil then
               warn(string.format("O nó %s tem como destino o nó %s, que não foi carregado.", node.id, destinationId))
               hasErrors = true
            end
        end
    end
end

--- Retorna todos os nós carregados
---@return table<string, Node>
function nodeLoader.getNodes()
    return nodeDictionary
end

---Retorna um nó a partir do ID
---@param nodeId string
---@return Node
function nodeLoader.getNode(nodeId)
    return nodeDictionary[nodeId]
end

---Retorna o nó inicial
---@return Node
function nodeLoader.getInitialNode()
    return initialNode
end

function nodeLoader.hasErrors()
    return hasErrors
end

return nodeLoader