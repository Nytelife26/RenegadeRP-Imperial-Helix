FACTION.name = "Storm Trooper"
FACTION.description = "The standard foot-soldier of the Empire, designed for various tasks."
FACTION.color = Color(96, 96, 96)
FACTION.pay = 50
FACTION.isDefault = false
FACTION.isGloballyRecognized = true


function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("e11", 1)
	inventory:Add("pulses", 4)
	inventory:Add("stormtrooper", 1)
	inventory:Add("idc", 1)
 

end

function FACTION:GetDefaultName(client)
	return "ST-" .. Schema:ZeroNumber(math.random(1, 99999), 5), true

end

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsEmpireRank(oldValue, "ST") and Schema:IsEmpireRank(value, "ST")) then
		character:JoinClass(CLASS_ST)
	elseif (!Schema:IsEmpireRank(oldValue, "STO") and Schema:IsEmpireRank(value, "STO")) then
		character:JoinClass(CLASS_STO)
	end
end

FACTION_STORM = FACTION.index
