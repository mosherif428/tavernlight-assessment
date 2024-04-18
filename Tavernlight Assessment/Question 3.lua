

--Question 3

function do_sth_with_PlayerParty(playerId, membername)
    player = Player(playerId)
    local party = player:getParty()

    for k,v in pairs(party:getMembers()) do
        if v == Player(membername) then
            party:removeMember(Player(membername))
        end
    end
end

--Solution

function removeMemberFromPlayerParty(playerId, memberId)
    local player = Player(playerId)
    local party = player:getParty()

    for k,v in pairs(party:getMembers()) do
        if v == Player(memberId) then
            party:removeMember(Player(memberId))
        end
    end
end

-- I gave the function a more descriptive name, and made sure player instance is local
-- I optimized this function by making member reference consistent with player reference, requiring memberId instead of name, bypassing the need for a getName function
