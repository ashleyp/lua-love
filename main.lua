require 'Player'
require 'Ball'


function love.load()
   width         = love.graphics.getWidth()
   height        = love.graphics.getHeight()
   mid           = (height/2) - 100

   players = {
       Player:new("Jim", 100, mid),
       Player:new("Fred", width-100, mid),
   }

   pong = Ball:new(width/2, mid)
end


function love.update(dt)
    for i = 1, #players do
       if detectCollision( players[i], pong ) then
          pong:changeDirection()
          break
       end
   end
    pong:update(dt)
end

function love.draw()
   for i = 1, #players do
      love.graphics.rectangle("fill", players[i].x, players[i].y, 35, 200)
   end
   love.graphics.circle("fill", pong.x, pong.y, pong.radius)
end

function detectCollision(objOne, objTwo)
    distance     = vectorSubtract(objOne,objTwo)
    realDistance = distance.x * distance.x + distance.y * distance.y
    radius       = objOne.radius * objTwo.radius
    return realDistance <= radius * radius
end

function vectorSubtract(objOne, objTwo)
    return { x = objOne.x - objTwo.x, y = objOne.y - objTwo.y }
end
