

--Question 1:

local function releaseStorage(player)
	player:setStorageValue(1000, -1)
end


function onLogout(player)
	if player:getStorageValue(1000) == 1 then
		addEvent(releaseStorage, 1000, player)
	end
return true
end

--Solution

function onLogout(player)
	if player:getStorageValue(1000) == 1 then
		player:setStorageValue(1000, -1)
	end
return true
end

-- I optimized this piece of code by avoiding unnecessarily scheduling an event, while maintaining its function.