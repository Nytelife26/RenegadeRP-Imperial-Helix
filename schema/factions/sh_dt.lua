FACTION.name = "Death Troopers"
FACTION.description = "A specialized and augmented soldier, designed for elite operations."
FACTION.color = Color(25, 85, 10)
FACTION.pay = 75
FACTION.models = {"models/player/hydro/swbf_deathtrooper/swbf_deathtrooper2.mdl"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = false
FACTION.runSounds = {[0] = "NPC_CombineS.RunFootstepLeft", [1] = "NPC_CombineS.RunFootstepRight"}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("e11d", 1)
	inventory:Add("e11dammo", 4)

end

function FACTION:GetDefaultName(client)
	return "DTS-" .. Schema:ZeroNumber(math.random(1, 99999), 5), true

end

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsEmpireRank(oldValue, "DTS") and Schema:IsCombineRank(value, "DTS")) then
		character:JoinClass(CLASS_DTS)
	elseif (!Schema:IsEmpireRank(oldValue, "DTO") and Schema:IsCombineRank(value, "DTO")) then
		character:JoinClass(CLASS_DTO)
	end
end

FACTION_DT = FACTION.index
