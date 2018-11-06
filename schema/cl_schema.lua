
function Schema:AddEmpireDisplayMessage(text, color, ...)
	if (LocalPlayer():IsEmpire() and IsValid(ix.gui.empire)) then
		ix.gui.empire:AddLine(text, color, nil, ...)
	end
end
