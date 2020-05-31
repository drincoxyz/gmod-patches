local surface_CreateFont = surface.CreateFont

function surface.CreateFont(name, data)
	data.font = system.IsLinux() && data.font:lower():Replace(" ", "-")..".ttf" || data.font
	surface_CreateFont(name, data)
end
