function love.load() -- creates the score, loads audio and graphics
  score_p1=0
  score_p2=0
  position_p1 = 0 -- no x axis needed
  position_p2 = 0
  font = love.graphics.newFont(25)
  spawn_ball()
end

function spawn_ball()
  ball = {
    math.random(love.window.getWidth()/2-love.window.getWidth()/4, love.window.getWidth()/2+love.window.getWidth()/4),
    math.random(0, love.window.getHeight())
  }
  
  ball_direction = math.random(1,2)
end  

function love.update(dt) -- will create actions
  --player 1
  if love.keyboard.isDown("w") then
    position_p1 = position_p1 - 5
    if position_p1 < 0 then position_p1 = 0 end
  elseif love.keyboard.isDown("s") then
    position_p1 = position_p1 + 5
    if position_p1 + 100 > love.window.getHeight() then position_p1 = love.window.getHeight()-60 end
  end  
  
  -- player 2
  if love.keyboard.isDown("up") then
    position_p2 = position_p2 - 5
    if position_p2 < 0 then position_p2 = 0 end
  elseif love.keyboard.isDown("down") then
    position_p2 = position_p2 + 5
    if position_p2 + 100 > love.window.getHeight() then position_p2 = love.window.getHeight()-60 end
  end  
end  

function love.draw() -- this will draw sprites and score
  
  -- players
  love.graphics.setColor(100, 200, 0, 255)
  love.graphics.rectangle("fill", 0, position_p1, 15, 60)
  love.graphics.rectangle("fill", love.window.getWidth()-16, position_p2, 15, 60)
  
  -- ball
  love.graphics.setColor(0, 0, 255, 255)
  love.graphics.circle("fill", ball[1], ball[2], 9, 9)
  
  -- score
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.printf("Player 1-- ".. score_p1 .. " Player 2-- ".. score_p2, 0, 0, love.window.getWidth(), "center")
  love.graphics.setFont(font)  
end

function love.keypressed(key)
  if key == "escape" then love.event.push("quit") end
end  