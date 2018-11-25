FACTION.name = "Shock Trooper"
FACTION.description = "The military police and detectives of the ship, tasked with investigations and counterintelligence."
FACTION.color = Color(204, 0, 0)
FACTION.pay = 50
FACTION.isDefault = false
FACTION.isGloballyRecognized = true


function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("dlt20a", 1)
	inventory:Add("pulses", 4)
	inventory:Add("shock", 1)
	inventory:Add("idc", 1)
 

end

function FACTION:GetDefaultName(client)
	return "SHT-" .. Schema:ZeroNumber(math.random(1, 99999), 5), true

end

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsEmpireRank(oldValue, "SHT") and Schema:IsEmpireRank(value, "SHT")) then
		character:JoinClass(CLASS_SHT)
	elseif (!Schema:IsEmpireRank(oldValue, "SHTO") and Schema:IsEmpireRank(value, "SHTO")) then
		character:JoinClass(CLASS_SHTO)
	end
end

FACTION_SHOCK = FACTION.index
