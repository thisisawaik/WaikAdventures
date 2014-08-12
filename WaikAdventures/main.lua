require("world")
require("waik")

function love.load()
	world.load()
	waik.load()
end

function love.update(dt)
	waik.update(dt)
end

function love.keypressed(key)
	
end

function love.keyreleased(key)
	
end

function love.draw()
	world.draw()
	waik.draw()
	
	love.graphics.setColor(0, 255, 0)
	love.graphics.print(love.timer.getFPS(), 50, 50)
	love.graphics.setColor(255, 255, 255)
end