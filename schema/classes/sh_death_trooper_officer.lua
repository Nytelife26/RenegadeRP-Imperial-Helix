CLASS.name = "Death Trooper Officer"
CLASS.faction = FACTION_DT
CLASS.isDefault = false

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/player/hydro/swbf_deathtrooper/swbf_deathtrooper3.mdl")
	end
end

CLASS_DTO = CLASS.index
