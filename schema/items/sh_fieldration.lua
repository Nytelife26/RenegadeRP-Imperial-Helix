
ITEM.name = "Standard Imperial Field Rations"
ITEM.model = Model("models/bioshockinfinite/food_ration.mdl")
ITEM.description = "A sealed tin containing a tasteless gruel."

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(30)
		client:SetHealth(math.Clamp(client:Health() + 20, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return itemTable.player:IsEmpire()
	end
}
