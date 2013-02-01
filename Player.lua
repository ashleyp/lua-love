Player = {}
Player.__index = Player

function Player:new(player_name)
    local obj = {
        name = player_name
    }
    setmetatable(obj, Player)
    return obj
end

function Player:whatsmyname()
    return self.name
end


