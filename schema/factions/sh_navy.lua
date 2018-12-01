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
    "models/player/scifi_zoey.mdl",
    "models/suits/male_01_closed_coat_tie.mdl",
    "models/suits/male_01_closed_tie.mdl",
    "models/suits/male_01_open.mdl",
    "models/suits/male_01_open_waistcoat.mdl",
    "models/suits/male_01_shirt.mdl",
    "models/suits/male_01_shirt_tie.mdl",
    "models/suits/male_02_closed_coat_tie.mdl",
    "models/suits/male_02_closed_tie.mdl",
    "models/suits/male_02_open.mdl",
    "models/suits/male_02_open_tie.mdl",
    "models/suits/male_02_open_waistcoat.mdl",
    "models/suits/male_02_shirt.mdl",
    "models/suits/male_02_shirt_tie.mdl",
    "models/suits/male_03_closed_coat_tie.mdl",
    "models/suits/male_03_closed_tie.mdl",
    "models/suits/male_03_open.mdl",
    "models/suits/male_03_open_tie.mdl",
    "models/suits/male_03_open_waistcoat.mdl",
    "models/suits/male_03_shirt.mdl",
    "models/suits/male_03_shirt_tie.mdl",
    "models/suits/male_04_closed_coat_tie.mdl",
    "models/suits/male_04_closed_tie.mdl",
    "models/suits/male_04_open.mdl",
    "models/suits/male_04_open_tie.mdl",
    "models/suits/male_04_open_waistcoat.mdl",
    "models/suits/male_04_shirt.mdl",
    "models/suits/male_04_shirt_tie.mdl",
    "models/suits/male_05_closed_coat_tie.mdl",
    "models/suits/male_05_closed_tie.mdl",
    "models/suits/male_05_open.mdl",
    "models/suits/male_05_open_tie.mdl",
    "models/suits/male_05_open_waistcoat.mdl",
    "models/suits/male_05_shirt.mdl",
    "models/suits/male_05_shirt_tie.mdl",
    "models/suits/male_06_closed_coat_tie.mdl",
    "models/suits/male_06_closed_tie.mdl",
    "models/suits/male_06_open.mdl",
    "models/suits/male_06_open_tie.mdl",
    "models/suits/male_06_open_waistcoat.mdl",
    "models/suits/male_06_shirt.mdl",
    "models/suits/male_06_shirt_tie.mdl",
    "models/suits/male_07_closed_coat_tie.mdl",
    "models/suits/male_07_closed_tie.mdl",
    "models/suits/male_07_open.mdl",
    "models/suits/male_07_open_tie.mdl",
    "models/suits/male_07_open_waistcoat.mdl",
    "models/suits/male_07_shirt.mdl",
    "models/suits/male_07_shirt_tie.mdl",
    "models/suits/male_08_closed_coat_tie.mdl",
    "models/suits/male_08_closed_tie.mdl",
    "models/suits/male_08_open.mdl",
    "models/suits/male_08_open_tie.mdl",
    "models/suits/male_08_open_waistcoat.mdl",
    "models/suits/male_08_shirt.mdl",
    "models/suits/male_08_shirt_tie.mdl",
    "models/suits/male_09_closed_coat_tie.mdl",
    "models/suits/male_09_closed_tie.mdl",
    "models/suits/male_09_open.mdl",
    "models/suits/male_09_open_tie.mdl",
    "models/suits/male_09_open_waistcoat.mdl",
    "models/suits/male_09_shirt.mdl",
    "models/suits/male_09_shirt_tie.mdl"
}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()
	
    inventory:Add("idc", 1)
 

end

FACTION.isDefault = false
FACTION.isGloballyRecognized = true

FACTION_NAVY = FACTION.index
