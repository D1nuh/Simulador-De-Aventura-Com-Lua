local ID = "hidrius.lake"
local Node = require("node")


local node = Node:new(ID) ---@type Node
node.title = "%{red}Lake%{white}"
node.description = [[TODO]]

return node