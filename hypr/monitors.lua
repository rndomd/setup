-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "DP-1", mode = "2560x1440@180", position = "0x0", scale = 1 })
hl.monitor({ output = "DP-2", mode = "1920x1080@300", position = "2560x360", scale = 1 })
hl.workspace_rule({ workspace = "0", monitor = "DP-1" })
-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })
