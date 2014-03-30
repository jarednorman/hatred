package.path = package.path .. ';./?/init.lua;./src/?/init.lua'
package.path = package.path .. ';./src/?/init.lua'
require 'libs'

-- Cannot access any of love in tests... sorry!
love = {}
love.window = {}
love.window.setMode = function(width, height, flags) end
