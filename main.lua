------------------------------------------------
-- Modules
------------------------------------------------

------------------------------------------------
-- Base functions
------------------------------------------------

local bunnies = {}
local maxX,maxY = love.graphics.getDimensions()
local gravity = 0.98
local baseLitterSize, litterSizeIncrement = 1000, 1000
local litterSize = baseLitterSize
local bunnyImg = love.graphics.newImage("bunny.png")

function love.draw()

    love.graphics.print(#bunnies .. " Total Bunnies", 20, 10)
    love.graphics.print(litterSize .. " bunnies in each Litter", 20, 20)
    
    love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 20, 30)    
    
    for _,v in ipairs(bunnies) do
        love.graphics.draw(bunnyImg, v[1], v[2])
    end
end

function love.mousepressed(x, y, button)
    if button == 1 then
        for variable = 1, litterSize, 1 do
			bunnies[#bunnies+1] = { x, y, math.random(-5, 5), math.random(-5, 5) }
        end
    elseif button == 'wu' then
        litterSize = litterSize + litterSizeIncrement
    elseif button == 'wd' then
        if litterSize > baseLitterSize then 
            litterSize = litterSize - litterSizeIncrement 
        end
    end
end

function love.update(dt)
    
    for i,v in ipairs(bunnies) do
        local x = v[1] + v[3];    
        local y = v[2] + v[4];

        local vy = v[4] + gravity;
		local vx = v[3]
        
        if (x > maxX) then
            vx = vx * -0.9;
            x = maxX;
        elseif (x < 0) then
            vx = vx * -0.9;
            x = 0;
        end
        
        if (y > maxY) then
            vy = vy * -0.9;
            y = maxY;
        elseif (y < 0) then
            vy = vy * -0.9;
            y = 0;
        end
        bunnies[i] = {x, y, vx, vy}
    end
end
------------------------------------------------
-- Utils. Toolbelt stuff needed to run this app
------------------------------------------------

------------------------------------------------
-- Debug. Stuff here gets removed after debugging is done
------------------------------------------------

function stdOutPrint(text)
    stdOutText = text
    print(text)
end

function table.val_to_str ( v )
  if "string" == type( v ) then
    v = string.gsub( v, "\n", "\\n" )
    if string.match( string.gsub(v,"[^'\"]",""), '^"+$' ) then
      return "'" .. v .. "'"
    end
    return '"' .. string.gsub(v,'"', '\\"' ) .. '"'
  else
    return "table" == type( v ) and table.tostring( v ) or
      tostring( v )
  end
end 

function table.key_to_str ( k )
  if "string" == type( k ) and string.match( k, "^[_%a][_%a%d]*$" ) then
    return k
  else
    return "[" .. table.val_to_str( k ) .. "]"
  end
end

function table.tostring( tbl )
  local result, done = {}, {}
  for k, v in ipairs( tbl ) do
    table.insert( result, table.val_to_str( v ) )
    done[ k ] = true
  end
  for k, v in pairs( tbl ) do
    if not done[ k ] then
      table.insert( result,
        table.key_to_str( k ) .. "=" .. table.val_to_str( v ) )
    end
  end
  return "{" .. table.concat( result, "," ) .. "}"
end
