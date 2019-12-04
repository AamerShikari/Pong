--[[
    GD50 2019 
    Pong Remake - 

    -- Cursor Class --

    Author: Aamer Shikari 
    shikariaamer@gmail.com

    A class that mimics a switch in so far as it value is dependant
    on whether or not a given game mode is chosen in the start screen. 
    Object changes location and value dependent depending on user input.
]]

Cursor = Class{}

function Cursor:init(x, y, width, height)
    self.width = width 
    self.height = height
    self.x = x
    self.y = y
    self.option = false

    -- Variables help to create a starting position and value for the cursor  
end 

--[[
    Modifies the value of option depending on user keyboard input of up/down
]]
function Cursor:change(direction) 
    if (direction == "up") then 
        if (self.option == false) then  
        else 
            self.option = false
            self.y = self.y - 30
        end   
    else
        if (self.option) then 
        else 
            self.option = true
            self.y = self.y + 30
        end 
    end 
end

-- Getter function for the option boolean 
function Cursor:getOpt() 
    return self.option
end

function Cursor:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

