waik = {}

function waik.load()
	waik.baseImage = love.graphics.newImage("res/img/waik.png")
	
	waik.image = waik.baseImage
	
	waik.x = 100
	waik.y = 300
	
	waik.xSpeed = 0
	waik.ySpeed = 0
	
	waik.facing = 1
	
	waik.onGround = false
end

function waik.update(dt)
	-- movement
		if love.keyboard.isDown("left") then
			waik.xSpeed = -500
		elseif love.keyboard.isDown("right") then
			waik.xSpeed = 500
		else
			waik.xSpeed = 0
		end
		
		if love.keyboard.isDown(" ") and waik.onGround then
			waik.onGround = false
			waik.ySpeed = -500
		end
	
	-- physics
		if not waik.onGround then
			waik.ySpeed = waik.ySpeed + (world.gravity * dt)
		end
	
	-- collision
		print(waik.y)
		print(world.groundLevel)
		if waik.y > world.groundLevel then
			waik.ySpeed = 0
			waik.y = world.groundLevel
			waik.onGround = true
		end
	
	-- actual updating
		waik.x = waik.x + (waik.xSpeed * dt)
		waik.y = waik.y + (waik.ySpeed * dt)
		
		if waik.xSpeed ~= 0 then
			waik.facing = waik.xSpeed / math.abs(waik.xSpeed)
		end
end

function waik.draw()
	love.graphics.draw(waik.image, waik.x, waik.y, math.rad(0), waik.facing, 1, waik.image:getWidth() / 2, waik.image:getHeight() --[[ / 2 --]], 0, 0)
end