Player = {}
Player.__index = Player

function Player:new(player_name, player_x, player_y)
    local obj  = {
        name   = player_name,
        radius = 2,
        x      = player_x,
        y      = player_y
    }
    setmetatable(obj, Player)
    return obj
end

