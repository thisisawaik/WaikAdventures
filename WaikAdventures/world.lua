world = {}

function world.load()
	world.width = love.graphics.getWidth()
	world.height = love.graphics.getHeight()
	
	world.groundLevel = world.height - 100
	world.gravity = 9.81 * 100;
end

function world.draw()
	love.graphics.rectangle("fill", 0, world.groundLevel, world.width, 50)
end