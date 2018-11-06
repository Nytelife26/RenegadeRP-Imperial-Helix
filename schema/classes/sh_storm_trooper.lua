CLASS.name = "Storm Trooper"
CLASS.faction = FACTION_STORM
CLASS.isDefault = true

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/player/venator/anh2/anh_stormtrooper2.mdl")
	end
end

CLASS_ST = CLASS.index
