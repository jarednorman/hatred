require 'spec_helper'

GameEngine = require('game_engine')

describe("GameEngine", function()

  local engine = let("engine", function()
    return GameEngine:new()
  end)

  describe(":initialize", function()
    before_each(function()
      spy.on(math, "randomseed")
      spy.on(love.window, "setMode")
      engine()
    end)

    it("sets up the window", function()
      assert.spy(love.window.setMode).was.called_with(800, 600, GameEngine.videoSettings)
    end)

    it("initializes the random number generator", function()
      assert.spy(math.randomseed).was_called(1)
    end)

    it("sets the key state to all false", function()
      assert.equal(#engine().keysPressed, 0)
    end)
  end)

  describe(":keyPressed", function()
    before_each(function()
      engine()
    end)

    it("responds to keypresses", function()
      engine():keyPressed('a')
      assert.True(engine():isKeyPressed('a'))
    end)
  end)

  describe(":keyReleased", function()
    before_each(function()
      engine()
    end)

    it("responds to key releases", function()
      engine():keyPressed('a')
      engine():keyReleased('a')
      assert.False(engine():isKeyPressed('a'))
    end)
  end)

  describe(":isKeyPressed", function()
    before_each(function()
      engine()
    end)

    it("correctly reports whether a key has been pressed", function()
      assert.False(engine():isKeyPressed('a'))
      engine():keyPressed('a')
      assert.True(engine():isKeyPressed('a'))
    end)
  end)
end)
