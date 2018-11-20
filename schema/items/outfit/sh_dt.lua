
ITEM.name = "Death Trooper Uniform"
ITEM.description = "A classified and vastly unknown black plastoid composite coated with various battlefield contraptions."
ITEM.category = "Armor"
ITEM.model = "models/player/hydro/swbf_deathtrooper/swbf_deathtrooper3.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.outfitCategory = "Empire"
ITEM.pacData = {}
ITEM.newSkin = 1
ITEM.replacements = "models/npc/swbf_deathtrooper/swbf_deathtrooper2_npc.mdl"

ITEM.functions.equip = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(35)
        client:SetHealth(math.Clamp(client:Health() + 100, 100, client:GetMaxHealth()))
        client:SetArmor(math.clamp(client:Armor() + 100, 100, client:GetMaxArmor()))
		client:EmitSound("buttons/button19.wav", 75, 90, 0.35)
	end
}
