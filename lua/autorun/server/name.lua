include(config.lua)

function NameCheckFilter()
	local plys = player.GetAll()
	for k, v in pairs(plys) do
		for ke, va in pairs(namefilterbadnames) do
			if string.match(string.lower(v:Name()), va) then
				if namefilter.ban == true then
					RunConsoleCommand("ulx", "ban", v:Name(), namefilter.banTime, namefilter.reason)
				else
					RunConsoleCommand("ulx", "kick", v:Name(), namefilter.banTime, namefilter.reason)
				end
			else
				if namefilter.prefixEnabled == true then
					for key, val in pairs(namefilterprefix) do
						if string.match(string.lower(v:Name()), va) then
							return end
						end	
					end
				end
			end
		end
	end				
end
timer.Create("NameFilter", 5, 0, NameCheckFilter)