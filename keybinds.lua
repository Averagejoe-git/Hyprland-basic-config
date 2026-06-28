-- Require Variable portion for organizational purposes
require("hyprland.variables")

-- Binding Startup Keys --
hl.bind("SUPER + Q", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + F", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + E", hl.dsp.exec_cmd(filemanager))
hl.bind("SUPER + L", hl.dsp.exec_cmd(lock))
hl.bind("SUPER + R", hl.dsp.exec_cmd(launcher))
hl.bind("SUPER + P", hl.dsp.exec_cmd(volumemixer))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --freeze output --clipboard-only"))
hl.bind("SUPER + Tab", hl.dsp.window.fullscreen())
hl.bind("SUPER + A", hl.dsp.exec_cmd("wayscriber --daemon-toggle")) 

-- ---- Defining special workspaces ---- --
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("music"))
hl.bind("SUPER + D", hl.dsp.workspace.toggle_special("discord"))

-- ---- Script Keybinds ---- --
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("~/bin/scripts/wallpicker.sh"))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("~/bin/scripts/bluetooth.sh"))

-- ---- Window/Workspace Binds ---- --
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + C", hl.dsp.window.kill())
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))

hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

	-- ---- Switch Workspaces ---- --
	for i = 1, 10 do		
	local key = i % 10 
		hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
		hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	end

	-- ---- Scroll Through Workspace ---- --
	hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
	hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

	-- ---- Move/Resize Windows ---- --
	hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
	hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

	-- ---- Move Focus With Arrows ---- --
	hl.bind("SUPER + left",  hl.dsp.focus({ direction = "left" }))
	hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
	hl.bind("SUPER + up",    hl.dsp.focus({ direction = "up" }))
	hl.bind("SUPER + down",  hl.dsp.focus({ direction = "down" }))

-- ---- Laptop Multi-Media Keybinds ---- --
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })
