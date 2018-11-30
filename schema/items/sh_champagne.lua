ITEM.name = "Daruvvian Champagne"
ITEM.model = Model("models/bioshockinfinite/champagne_bottle.mdl")
ITEM.description = "A chilled bottle of fine Daruvvian Champagne."
ITEM.category = "Consumables"
ITEM.width = 1
ITEM.height = 1

ITEM.noBusiness = false

ITEM.price = 0

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(5)
		client:SetHealth(math.Clamp(client:Health() + 5, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end
}
