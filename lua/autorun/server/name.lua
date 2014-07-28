local namebanreason = "Change your name!GTFO"
local namebantime 	= 1440--If not using
local badnames 		= {"cunt", "fuck", "shit", "fag", "asshole", "slut" "skank"}
local nameban       = true

function NameCheckFilter()
	local plys = player.GetAll()
	
	for k, v in pairs(plys) do
		for ke, va in pairs(badnames) do
			if string.match(string.lower(v:Name()), va) then
				if nameban == true then
					RunConsoleCommand("ulx", "ban", v:Name(), namebantime, namebanreason)
					v:ChatPrint("hi. detected")
				else
					RunConsoleCommand("ulx", "kick", v:Name(), namebantime, namebanreason)
					v:ChatPrint("hi. detected")	
					end

			else
				//v:ChatPrint("not detected.")
			end
		end
	end				
end
timer.Create("wao", 5, 0, NameCheckFilter)