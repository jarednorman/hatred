
package.path = package.path .. ';./src/?/init.lua'
require 'libs'

function love.load()
  local GameEngine = require 'game_engine'
  engine = GameEngine:new()
end

function love.update(dt)
  engine:update(dt)
end

function love.draw()
  engine.draw()
end

function love.keypressed(key)
  engine:keyPressed(key)
end

function love.keyreleased(key)
  engine:keyReleased(key)
end

function love.focus(focus)
  if focus then engine:focus() else engine:unfocus() end
end

function love.quit()
  engine:quit()
end

