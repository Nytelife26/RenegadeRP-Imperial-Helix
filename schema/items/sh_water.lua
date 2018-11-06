ITEM.name = "Can of Water"
ITEM.model = Model("models/props_junk/popcan01a.mdl")
ITEM.description = "A blue aluminium can full of chilled water."
ITEM.category = "Consumables"
ITEM.width = 1
ITEM.height = 1

ITEM.noBusiness = false

ITEM.price = 15

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(20)
		client:SetHealth(math.Clamp(client:Health() + 5, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp1.wav", 75, 90, 0.35)
	end
}
