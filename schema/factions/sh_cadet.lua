FACTION.name = "Imperial Cadet"
FACTION.description = "A group of fresh recruits, willing to die for their Empire."
FACTION.color = Color(5, 20, 45)
FACTION.pay = 0
FACTION.models = {
    "models/humans/group01/male_01.mdl",
    "models/humans/group01/male_02.mdl",
    "models/humans/group01/male_03.mdl",
    "models/humans/group01/male_04.mdl",
    "models/humans/group01/male_05.mdl",
    "models/humans/group01/male_06.mdl",
    "models/humans/group01/male_07.mdl",
    "models/humans/group01/male_08.mdl",
    "models/humans/group01/male_09.mdl",
    "models/humans/group01/female_01.mdl",
    "models/humans/group01/female_02.mdl",
    "models/humans/group01/female_03.mdl",
    "models/humans/group01/female_04.mdl",
    "models/humans/group01/female_05.mdl",
    "models/humans/group01/female_06.mdl",
    "models/humans/group01/female_07.mdl"
}
FACTION.isDefault = true
FACTION.isGloballyRecognized = false

function FACTION:OnCharacterCreated(client, character)
    local id = Schema:ZeroNumber(math.random(1, 99999), 5)
    local inventory = character:GetInventory()

FACTION_CADET = FACTION.index
