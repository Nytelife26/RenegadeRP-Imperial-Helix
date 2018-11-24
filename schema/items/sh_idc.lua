
ITEM.name = "Identicard"
ITEM.model = "models/kingpommes/venator/misc_panel_2.mdl"
ITEM.description = "An identicard with ID #%s, assigned to %s."

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000"), self:GetData("name", "nobody"))
end
