

--Question 2

function printSmallGuildNames(memberCount)
	-- this method is supposed to print names of all guilds that have less than memberCount max members

	local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
	local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))
	local guildName = result.getString("name")
	print(guildName)
end

--Solution

function printSmallGuildNames(memberCount)
	-- this method is supposed to print names of all guilds that have less than memberCount max members

	local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
    local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))

    if resultId then
        for _, _ in ipairs({result.next(resultId)}) do
            local guildName = result.getString(resultId, "name")
            print(guildName)
        end
        result.free(resultId)
    else
        print("Error: No valid resultId")
    end
end

-- I fixed this code by iterating through and printing every result rather than printing just one.
-- I added a descriptive error description as well.