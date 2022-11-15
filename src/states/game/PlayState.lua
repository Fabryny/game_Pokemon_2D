
PlayState = Class{__includes = BaseState}

function PlayState:init()
    self.level = Level()

    self.dialogueOpened = false
end

function PlayState:update(dt)
    self.level:update(dt)
end

function PlayState:render()
    self.level:render()
end