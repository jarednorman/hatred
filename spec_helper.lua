package.path = package.path .. ';./?/init.lua;./src/?/init.lua'
package.path = package.path .. ';./src/?/init.lua'
package.path = package.path .. ';./spec_support/?.lua'

require 'let'
require 'libs'

-- Cannot access any of love in tests, just adding this here so individual
-- functions can be stubbed out manually.
love = {}

-- Subsystems
love.window = {}
