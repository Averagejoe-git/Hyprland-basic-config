
-- Beginning From Scratch, New LUA replacement 


require("hyprland.keybinds")
require("hyprland.general")
require("hyprland.rules")
require("hyprland.execs")
require("hyprland.animations")
require("hyprland.env")




--[[
	Just off of reference, this is how you inlcude custom configurations properly

 	if is_file_exists(HOME .. "~/.config/hypr/custom/[section].lua") then
		require("custom.[section]")
 	end

 	Section here means env/general/execs/rules etc. 
  ]]
