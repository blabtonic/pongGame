function love.load() -- creates the score, loads audio and graphics
  score_p1=0
  score_p2=0
  position_p1 = 0
  position_p2 = 0
end

function love.update(dt) -- will create actions
  if love.keyboard.isDown("w") then
    position_p1 = position_p1 - 1
    if position_p1 < 0 then position_p1 = 0 end --prevents p1 from going offscreen(up)
  elseif love.keyboard.isDown("s") then
    position_p1 = position_p1+1
    if position_p1 > love.window.getHeight() then position_p1 = love.window.getHeight() end -- prevents p1 from going offscreen(down)
  end
  
  if love.keyboard.isDown("up") then
    position_p2 = position_p2-1
    if position_p2 < 0 then --prevents p1 from going offscreen(up)
      position_p2 = 0 
    end 
  elseif love.keyboard.isDown("down")then
    position_p2 = position_p2+1
    if position_p2 > love.window.getHeight() then -- prevents p2 from going offscreen(down)
      position_p2 = love.window.getHeight() 
    end 
  end
  
end  

function love.draw() -- this will draw sprites and score
  -- players
  love.graphics.rectangle("fill",33, 33, 330, 330) -- will resize this 
  -- ball
  -- score
end