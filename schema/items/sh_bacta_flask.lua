ITEM.name = "Bacta Flask"
ITEM.model = Model("models/lt_c/sci_fi/dm_container_small.mdl")
ITEM.description = "A large flask of viscous Bacta."
ITEM.category = "Medical"
ITEM.price = 85

ITEM.functions.Apply = {
	sound = "npc/antlion_grub/squashed.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 55, client:GetMaxHealth()))
	end
}
