--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

BattleState = Class{__includes = BaseState}

function BattleState:init(player)
    self.player = player

    -- flag for when the battle can take input, set in the first update call
    self.battleStarted = false


end

function BattleState:enter(params)
    
end

function BattleState:exit()
end

function BattleState:update(dt)
    -- this will trigger the first time this state is actively updating on the stack
    if not self.battleStarted then
        self:triggerSlideIn()
    end
end

function BattleState:render()
    love.graphics.clear(214/255, 214/255, 214/255, 1)

    love.graphics.setColor(45/255, 184/255, 45/255, 124/255)

end

function BattleState:triggerSlideIn()
    self.battleStarted = true


    self:triggerStartingDialogue()
end

function BattleState:triggerStartingDialogue()
    
    -- display a dialogue first for the pokemon that appeared, then the one being sent out
    gStateStack:push(BattleMessageState('A wild pokemon ' ,
    
    -- callback for when the battle message is closed
    function()
        gStateStack:push(BattleMessageState('Go, ' ))
    end))
end