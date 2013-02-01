Ball = {}
Ball.__index = Ball

function Ball:new(ball_x, ball_y)
    local obj = {
        radius    = 30,
        x         = ball_x,
        y         = ball_y,
        direction = 'left'
    }
    setmetatable(obj, Ball)
    return obj
end

function Ball:update(dt)
    if self.direction == 'left' then
        self.x = (self.x - 1) + dt
    else
        self.x = (self.x + 1) + dt
    end
end

function Ball:changeDirection()
    if self.direction == 'left' then
        self.direction = 'right'
    else
        self.direction = 'left'
    end
end
