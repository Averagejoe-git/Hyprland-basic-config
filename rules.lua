
-- Setting Window/Workspace Rules with LUA --

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

   no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


-- Setting Personal Special Workspace Rules --

hl.workspace_rule({ workspace = "special:music", on_created_empty = "strawberry" })
hl.window_rule({
	name = "music",
	match = { workspace = "special:music"},
	border_size = 0,
	no_screen_share = 0,
	persistent_size = true,
	float = true,
	size = "1200 600",
	move = "350 600",
})


hl.workspace_rule({ workspace = "special:discord", on_created_empty = "vesktop"})
hl.window_rule({
	name = "vesktop",
	match = { workspace = "special:discord" },
	no_screen_share = 0,
	persistent_size = true,
})
 

