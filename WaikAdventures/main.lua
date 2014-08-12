function love.load()
	waik = love.graphics.newImage("res/img/waik.png")
end

function love.update()
	
end

function love.keypressed(key)
	
end

function love.keyreleased(key)
	
end

function love.draw()
	love.graphics.draw(waik, 400, 300, math.rad(0), 1, 1, waik:getWidth() / 2, waik:getHeight() / 2, 0, 0)
end