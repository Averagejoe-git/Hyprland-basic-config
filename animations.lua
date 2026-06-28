hl.curve("iosOpen", {
    type = "spring",
    mass = 1, stiffness = 200, dampening = 20
})
hl.curve("iosClose", {
    type = "spring",
    mass = 1, stiffness = 280, dampening = 26
})
hl.curve("iosWorkspace", {
    type = "spring",
    mass = 1, stiffness = 160, dampening = 22
})
hl.curve("iosFade", {
    type = "bezier",
    points = {{0.25, 0.1}, {0.25, 1.0}}
})

hl.animation({ leaf = "windowsIn",            enabled = true, speed = 1, spring = "iosOpen",      style = "popin 82%" })
hl.animation({ leaf = "windowsOut",           enabled = true, speed = 1, spring = "iosClose",     style = "popin 90%" })
hl.animation({ leaf = "windowsMove",          enabled = true, speed = 1, spring = "iosOpen" })
hl.animation({ leaf = "fadeIn",               enabled = true, speed = 3, bezier = "iosFade" })
hl.animation({ leaf = "fadeOut",              enabled = true, speed = 2, bezier = "iosFade" })
hl.animation({ leaf = "layersIn",             enabled = true, speed = 1, spring = "iosOpen",      style = "popin 90%" })
hl.animation({ leaf = "layersOut",            enabled = true, speed = 1, spring = "iosClose",     style = "popin 95%" })
hl.animation({ leaf = "fadeLayersIn",         enabled = true, speed = 2, bezier = "iosFade" })
hl.animation({ leaf = "fadeLayersOut",        enabled = true, speed = 2, bezier = "iosFade" })
hl.animation({ leaf = "workspaces",           enabled = true, speed = 1, spring = "iosWorkspace", style = "slide" })
hl.animation({ leaf = "specialWorkspaceIn",   enabled = true, speed = 1, spring = "iosOpen",      style = "slidevert" })
hl.animation({ leaf = "specialWorkspaceOut",  enabled = true, speed = 1, spring = "iosClose",     style = "slidevert" })
hl.animation({ leaf = "border",               enabled = true, speed = 10, spring = "iosClose" })
hl.animation({ leaf = "zoomFactor",           enabled = true, speed = 1, spring = "iosWorkspace" })

hl.curve("musicOpen",  { type = "spring", mass = 1, stiffness = 120, dampening = 20 })
hl.curve("musicClose", { type = "spring", mass = 1, stiffness = 160, dampening = 22 })

hl.animation({ leaf = "specialWorkspaceIn",  enabled = true, speed = 0.2, spring = "musicOpen",  style = "slidevert" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 0.2, spring = "musicClose", style = "slidevert" })
