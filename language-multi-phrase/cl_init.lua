local language_Add = language.Add

function language.Add(phrase, trans)
	if isstring(trans) then return language_Add(phrase, trans) end
	if !istable(trans) then return end

	language_Add(phrase, trans[cvars.String "gmod_language"] || trans.en)

	cvars.AddChangeCallback("gmod_language", function(cvar, old, new)
		language_Add(phrase, trans[new] || trans[old] || trans.en)
	end, phrase)
end
