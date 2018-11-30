ITEM.name = "Parmigiano Reggiano Cheese Wheel"
ITEM.model = Model("models/bioshockinfinite/round_cheese.mdl")
ITEM.description = "A bright yellow wheel of fine and smooth Parmigiano Reggiano. Known for it's luxury, this cheese stands out amongst all others."
ITEM.category = "Consumables"
ITEM.width = 2
ITEM.height = 2

ITEM.noBusiness = false

ITEM.price = 0

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(10)
		client:SetHealth(math.Clamp(client:Health() + 5, 0, client:GetMaxHealth()))
		client:EmitSound("npc/zombie/claw_strike1.wav", 75, 90, 0.35)
	end
}
