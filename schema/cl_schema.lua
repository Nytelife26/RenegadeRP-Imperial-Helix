
function Schema:AddEmpireDisplayMessage(text, color, ...)
	if (LocalPlayer():IsCombine() and IsValid(ix.gui.empire)) then
		ix.gui.empire:AddLine(text, color, nil, ...)
	end
end
