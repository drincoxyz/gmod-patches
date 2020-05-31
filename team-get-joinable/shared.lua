local team_SetUp = team.SetUp
local joinable   = {}

function team.SetUp(id, name, col, join)
	team_SetUp(id, name, col, join)

	if join then
		joinable[id] = team.GetAllTeams()[id]
	end
end

function team.GetJoinableTeams()
	return joinable
end
