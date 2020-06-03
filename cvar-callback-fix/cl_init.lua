net.Receive("cvar_callback", function(len)
	local name = net.ReadString()
	local id   = net.ReadString()
	local old  = net.ReadString()
	local new  = cvars.String(name)

	cvars._DoChangeCallback(name, id, old, new)
end)
