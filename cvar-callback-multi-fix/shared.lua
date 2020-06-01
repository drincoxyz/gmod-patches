local cvars_AddChangeCallback    = cvars.AddChangeCallback
local cvars_RemoveChangeCallback = cvars.RemoveChangeCallback

function cvars.AddChangeCallback(name, callback, id)
	if isstring(callback) then
		local _  = callback
		callback = id
		id       = _
	end

	cvars_RemoveChangeCallback(name, id)
	cvars_AddChangeCallback(name, callback, id)
end
