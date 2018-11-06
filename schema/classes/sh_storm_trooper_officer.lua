CLASS.name = "Storm Trooper Officer"
CLASS.faction = FACTION_STORM
CLASS.isDefault = false

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/player/venator/anh/anh_stormtrooper.mdl")
	end
end

CLASS_STO = CLASS.index
