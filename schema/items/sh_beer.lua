ITEM.name = "Ebla Beer"
ITEM.model = Model("models/bioshockinfinite/loot_bottle_lager.mdl")
ITEM.description = "An alcoholic beverage brewed on Bonadan from the Ebla grain."
ITEM.category = "Consumables"
ITEM.width = 1
ITEM.height = 1

ITEM.noBusiness = false

ITEM.price = 0

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(0)
		client:SetHealth(math.Clamp(client:Health() + 5, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end
}
