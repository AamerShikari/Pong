--[[
    Pong Remake - 

    -- NumCursor Class --

    Author: Aamer Shikari 
    shikariaamer@gmail.com

    A class similar to the Cursor class 
    Meant to help determine which level of difficulty/color selected
    Returns a value of 0-2 depending on what the user selects
]]
numCursor = Class{}

function numCursor:init(x, y, width, height)
    self.width = width 
    self.height = height
    self.x = x
    self.y = y
    self.option = 0

    -- Variables help to create a starting position and value for the cursor  
end 

--[[
    Modifies the value of option depending on user keyboard input of up/down
]]
function numCursor:change(direction) 
    if (direction == "up") then 
        if (self.option == 0) then 
        else 
            self.option = self.option - 1
            self.y = self.y - 30
        end
    else 
        if (self.option == 2) then 
        else 
            self.option = self.option + 1
            self.y = self.y + 30
        end
    end 
end

-- Getter function for the option boolean 
function numCursor:getOpt() 
    return self.option
end

function numCursor:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
