------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/configuring/core/monitors/
--
-- Fallback for unknown displays
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })

hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1200@60.0",
    position = "0x0",
    scale    = 1,
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "3440x1440@49.99",
    position = "-3440x0",
    scale    = 1,
})
