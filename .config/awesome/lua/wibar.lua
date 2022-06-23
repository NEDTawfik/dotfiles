local sep = wibox.widget {
	widget = wibox.widget.textbox,
	markup = "	",
}

local mytextdate = wibox.widget {
	widget = wibox.widget.textclock,
	format = "%a %b %d",
}

local mytextclock = wibox.widget {
	widget = wibox.widget.textclock,
	format = "%R",
}

local userText = wibox.widget {
	widget = wibox.widget.textbox,
	markup = "﫸 ",
	font = "FantasqueSansMono Nerd Font 13"
}

local volIcon = wibox.widget {
	widget = wibox.widget.textbox,
	markup = " ",
	font = theme.taglist_font
}

local volume = lain.widget.pulse {
	 timeout = 0,
    settings = function()
        vlevel = volume_now.left
        widget:set_markup(lain.util.markup(theme.fg_normal,vlevel))
    end
}

local tray = wibox.widget.systray()

awful.screen.connect_for_each_screen(function(s)
    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()

    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = taglist_buttons,
		  widget_template = {
        widget = wibox.container.background,
        forced_width = 28,
        {
            layout = wibox.layout.flex.horizontal,
            {
                id = 'text_role',
                widget = wibox.widget.textbox,
            },
        },
		}
   }

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 25, ontop = false, bg = wiboxBg})

    -- Add widgets to the wibox
    s.mywibox:setup {
		layout = wibox.layout.stack,
    {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
				sep,
				userText
        },
        nil,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            tray,
				sep,
				volIcon,
				volume,
				sep,
				mytextdate,
				sep,
				mytextclock,
				sep,
        },
    },
    {
        s.mytaglist,
        valign = "center",
        halign = "center",
        layout = wibox.container.place
    }
    }

end)