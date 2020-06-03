local callbacks                  = {}
local cvars_AddChangeCallback    = cvars.AddChangeCallback
local cvars_RemoveChangeCallback = cvars.RemoveChangeCallback

function cvars._DoChangeCallback(name, id, old, new)
	callbacks[name][id](name, old, new)
end

function cvars.AddChangeCallback(name, callback, id)
	if isstring(callback) then
		local _  = callback
		callback = id
		id       = _
	end

	if SERVER then
		local cvar = GetConVar(name)

		if cvar then
			local flags = cvar:GetFlags()

			if bit.band(flags, FCVAR_REPLICATED) then
				local oldCallback = callback

				callback = function(cvar, old, new)
					oldCallback(cvar, old, new)

					net.Start "cvar_callback"
						net.WriteString(cvar)
						net.WriteString(id)
						net.WriteString(old)
					net.Broadcast()
				end
			end
		end
	end

	callbacks[name]     = callbacks[name] || {}
	callbacks[name][id] = callback

	cvars_RemoveChangeCallback(name, id)
	cvars_AddChangeCallback(name, callback, id)
end
