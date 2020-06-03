local vgui_Register = vgui.Register

function vgui.Register(name, panel, base)
	if isstring(panel) then
		local _ = base
		base    = panel
		panel   = _
	end

	vgui_Register(name, panel, base)
end
