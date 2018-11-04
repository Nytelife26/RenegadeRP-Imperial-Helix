CLASS.name = "Death Trooper Soldier"
CLASS.faction = FACTION_DT
CLASS.isDefault = false

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/player/hydro/swbf_deathtrooper/swbf_deathtrooper2.mdl")
	end
end

CLASS_DTS = CLASS.index
