require 'spec_helper'

GameState = require('game_state')

describe("GameState", function()

  local state = let("state", function()
    return GameState:new()
  end)

  describe(":update", function()
    it("can be called", function()
      state():update()
    end)
  end)

end)
