Class = require 'lib/class'
Event = require 'lib/knife.event'
push = require 'lib/push'
Timer = require 'lib/knife.timer'

require 'src/constants'
require 'src/StateMachine'

require 'src/gui/Textbox'
require 'src/gui/Panel'

require 'src/states/BaseState'
require 'src/states/StateStack'


require 'src/states/game/StartState'
require 'src/states/game/FadeInState'
require 'src/states/game/FadeOutState'
require 'src/states/game/DialogueState'

require 'src/pokemon_defs'


gTextures = {

    ['aardart-back'] = love.graphics.newImage('graphics/pokemon/aardart-back.png'),
    ['aardart-front'] = love.graphics.newImage('graphics/pokemon/aardart-front.png'),
    ['agnite-back'] = love.graphics.newImage('graphics/pokemon/agnite-back.png'),
    ['agnite-front'] = love.graphics.newImage('graphics/pokemon/agnite-front.png'),
    ['anoleaf-back'] = love.graphics.newImage('graphics/pokemon/anoleaf-back.png'),
    ['anoleaf-front'] = love.graphics.newImage('graphics/pokemon/anoleaf-front.png'),
    ['bamboon-back'] = love.graphics.newImage('graphics/pokemon/bamboon-back.png'),
    ['bamboon-front'] = love.graphics.newImage('graphics/pokemon/bamboon-front.png'),
    ['cardiwing-back'] = love.graphics.newImage('graphics/pokemon/cardiwing-back.png'),
    ['cardiwing-front'] = love.graphics.newImage('graphics/pokemon/cardiwing-front.png'),
}

gFonts = {
    ['small'] = love.graphics.newFont('fonts/font.ttf', 8),
    ['medium'] = love.graphics.newFont('fonts/font.ttf', 16),
    ['large'] = love.graphics.newFont('fonts/font.ttf', 32)
}