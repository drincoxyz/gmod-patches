GM.ShowHelp   = function() end
GM.ShowTeam   = function() end
GM.ShowSpare1 = function() end
GM.ShowSpare2 = function() end

hook.Add("PlayerBindPress", "menu-show-client", function(pl, bind)
	if bind == "gm_showhelp" then
		gamemode.Call "ShowHelp"
	elseif bind == "gm_showteam" then
		gamemode.Call "ShowTeam"
	elseif bind == "gm_showspare1" then
		gamemode.Call "ShowSpare1"
	elseif bind == "gm_showspare2" then
		gamemode.Call "ShowSpare2"
	end
end)
