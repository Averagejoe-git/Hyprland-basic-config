
-- ---- Monitors ---- --

hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "0x0",
	scale = 1
})

hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 8,

        border_size = 1,

        col = {
            active_border   = { colors = {"rgba(00D1B2FF)", "rgba(F5C86AEE)"}, angle = 60 },
            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = true,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 12,
        rounding_power = 1,

        active_opacity   = 1.0,
        inactive_opacity = 0.93,

        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
             color       = "rgba(0000001a)",
        },

        blur = {
            enabled   = true,
            size      = 4,
            passes    = 2,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

hl.config({
    dwindle = {
	preserve_split = true, -- You probably want this
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

hl.config({
    misc = {
        force_default_wallpaper = 1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

