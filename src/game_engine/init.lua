
package.path = package.path .. ';./game/?.lua;./game/?/init.lua'
require 'game'

local GameEngine = class 'GameEngine'

GameEngine.videoSettings = {
  fullscreen = false
}

function GameEngine:initialize()
  self.keysPressed = {}
  love.window.setMode(800, 600, { fullscreen = false })
  math.randomseed(os.time())
  self.current_state = DefaultGameState:new()
end

function GameEngine:update(dt)
end

function GameEngine:draw()
end

function GameEngine:getGameState()
  return self.current_state
end

function GameEngine:keyPressed(key)
  self.keysPressed[key] = true
  return true
end

function GameEngine:keyReleased(key)
  self.keysPressed[key] = false
  if key == 'escape' then
    love.event.push 'quit'
  end
  return true
end

function GameEngine:isKeyPressed(key)
  return self.keysPressed[key] == true
end

function GameEngine:focus()
end

function GameEngine:unfocus()
end

function GameEngine:quit()
end

return GameEngine
