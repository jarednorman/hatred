require 'spec_helper'

GameEngine = require('game_engine')

describe("GameEngine", function()

  local engine

  before_each(function()
    engine = GameEngine:new()
  end)

  it("responds to keypresses", function()
    engine:keyPressed('a')
    assert.True(engine:isKeyPressed('a'))
  end)

  it("responds to key releases", function()
    engine:keyPressed('a')
    engine:keyReleased('a')
    assert.False(engine:isKeyPressed('a'))
  end)

end)
