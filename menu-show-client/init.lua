local function DieMonster()
	timer.Simple(0, function()
		local GM = GM || gmod.GetGamemode()

		GM.ShowHelp   = nil
		GM.ShowTeam   = nil
		GM.ShowSpare1 = nil
		GM.ShowSpare2 = nil
	end)
end

DieMonster()

-- YOU DON'T BELONG IN THIS WORLD
hook.Add("Initialize", "menu-show-client", DieMonster)

-- YOUR WORDS ARE AS EMPTY AS YOUR SOUL
hook.Add("OnReloaded", "menu-show-client", DieMonster)
