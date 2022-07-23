local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

-- Fonts
theme.font          = "Dejavu Sans 8"

--Main UI
theme.bg_normal     = "#131519"
theme.bg_focus      = "#11121D"

theme.fg_normal     = "#dedede"
theme.fg_focus      = "#dedede"
theme.fg_urgent     = "#dedede"
theme.fg_minimize   = "#dedede"

-- Window
theme.useless_gap   = dpi(4)

theme.border_width  = dpi(2)
theme.border_normal = "#16181B"
theme.border_focus  = "#2F283Acc"
theme.border_Marked = "#2F283Acc"

beautiful.border_normal = "#171A1F"

-- Menu
theme.menu_bg_normal = "#ff0000"
theme.menu_bg_focus  = "#ff0000"


theme.notification_bg = "#11121dcc"
beautiful.notification_fg = "#ffffff"

beautiful.tooltip_bg = "#11121daa"
beautiful.tooltip_fg = "#ffffff"
beautiful.tooltip_font = "Dejavu Sans 8"

-- Wibox
theme.taglist_font  = "FantasqueSansMono Nerd Font 9"
beautiful.wibar_bg = "#00000000"
theme.taglist_fg_focus = "#D98594"
theme.taglist_fg_urgent = "#9272b2"
theme.taglist_fg_empty = "#0E172045"
theme.taglist_fg_occupied = "#0E1720"

-- Generate taglist squares:
local taglist_square_size = dpi(3)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
taglist_square_size, theme.fg_normal
)

theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- Define the image to load
theme.layout_fairv = "~/.config/awesome/icons/wibar/tile.png"
theme.layout_tile = "~/.config/awesome/icons/wibar/suitInv.png"
theme.layout_tileleft = "~/.config/awesome/icons/wibar/suit.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "/usr/share/icons/Flat-Remix-Grey-Dark"

return theme

