let = (function()
  local let_values
  local lets = {}

  before_each(function()
    let_values = {}
  end)

  local let = function(name, fn)
    lets[name] = fn
    return function()
      let_values[name] = let_values[name] or lets[name]()
      return let_values[name]
    end
  end

  return let
end)()
