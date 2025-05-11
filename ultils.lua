local ultils = {}


---Header generico para gamer over
---@return string
function ultils.getGenericGameOverHeader()
    return [[
   _____                         ____                   _
  / ____|                       / __ \                 | |
 | |  __  __ _ _ __ ___   ___  | |  | |_   _____ _ __  | |
 | | |_ |/ _` | '_ ` _ \ / _ \ | |  | \ \ / / _ \ '__| |_|
 | |__| | (_| | | | | | |  __/ | |__| |\ V /  __/ |     _
  \_____|\__,_|_| |_| |_|\___|  \____/  \_/ \___|_|    |_|                                          
    ]]
end

function ultils.getGenericGameWinHeader()
    return [[
    __     ______  _    _   __          _______ _   _   _
    \ \   / / __ \| |  | |  \ \        / /_   _| \ | | | |
     \ \_/ / |  | | |  | |   \ \  /\  / /  | | |  \| | | |
      \   /| |  | | |  | |    \ \/  \/ /   | | | . ` | |_|
       | | | |__| | |__| |     \  /\  /   _| |_| |\  |  _
       |_|  \____/ \____/       \/  \/   |_____|_| \_| |_| 
    ]]
end

function ultils.KeyNecessary()
    if game.hasKey == nil or false then
        return "Chave Nescessária"
    end
end

return ultils