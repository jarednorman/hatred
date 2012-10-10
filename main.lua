DEBUG = true
if DEBUG then
  require 'luarocks.loader'
  require 'luacov'
end

require 'game'  

function love.run()
  -- initialize and hand off to engine:run()
  engine = game.GameEngine:new()
  engine:run()
end

