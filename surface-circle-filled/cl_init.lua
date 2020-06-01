function surface.DrawCircle(x, y, rad, seg)
	local circle = {}

	table.insert(circle, {
		x = x,
		y = y,
		u = .5,
		v = .5,
	})

	for i = 0, seg do
		local a = math.rad((i / seg) * -360)

		table.insert(circle, {
			x = x + math.sin(a) * rad,
			y = y + math.cos(a) * rad,
			u = math.sin(a) / 2 + .5,
			v = math.cos(a) / 2 + .5
		})
	end

	local a = math.rad(0)

	table.insert(circle, {
		x = x + math.sin(a) * rad,
		y = y + math.cos(a) * rad,
		u = math.sin(a) / 2 + .5,
		v = math.cos(a) / 2 + .5
	})

	surface.DrawPoly(circle)
end
