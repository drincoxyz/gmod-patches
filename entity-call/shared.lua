local Entity = FindMetaTable "Entity"

function Entity:Call(name, ...)
	if !self:IsScripted() then return end

	if isfunction(self[name]) then
		return self[name](self, ...)
	end
end

function Entity:BaseCall(name, ...)
	if !self:IsScripted() then return end

	if !self.BaseClass then
		self.BaseClass = baseclass.Get(self.Base)
	end

	if self.BaseClass && isfunction(self.BaseClass[name]) then
		return self.BaseClass[name](self, ...)
	end
end
