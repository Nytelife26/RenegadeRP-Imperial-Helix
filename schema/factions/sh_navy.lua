FACTION.name = "Imperial Navy"
FACTION.description = "A Commander of the Imperial Navy"
FACTION.color = Color(0, 0, 40)
FACTION.pay = 150
FACTION.models = {
    "models/player/scifi_bill.mdl",
    "models/player/scifi_fang.mdl",
    "models/player/scifi_female_01.mdl",
    "models/player/scifi_female_03.mdl",
    "models/player/scifi_female_02.mdl",
    "models/player/scifi_female_04.mdl",
    "models/player/scifi_female_06.mdl",
    "models/player/scifi_female_07.mdl",
    "models/player/scifi_hawke.mdl",
    "models/player/scifi_louis.mdl",
    "models/player/scifi_male_01.mdl",
    "models/player/scifi_male_02.mdl",
    "models/player/scifi_male_03.mdl",
    "models/player/scifi_male_04.mdl",
    "models/player/scifi_male_05.mdl",
    "models/player/scifi_male_06.mdl",
    "models/player/scifi_male_07.mdl",
    "models/player/scifi_male_08.mdl",
    "models/player/scifi_male_09.mdl",
    "models/player/scifi_mp1.mdl",
    "models/player/scifi_mp2.mdl",
    "models/player/scifi_mp3.mdl",
    "models/player/scifi_plr.mdl",
    "models/player/scifi_plr2.mdl",
    "models/player/scifi_rochelle.mdl",
    "models/player/scifi_wraith.mdl",
    "models/player/scifi_zoey.mdl"
}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()
	
    inventory:Add("idc", 1)
 

end

FACTION.isDefault = false
FACTION.isGloballyRecognized = true

FACTION_NAVY = FACTION.index
