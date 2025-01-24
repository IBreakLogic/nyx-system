#!/usr/bin/env lua

-- So the modules can be loaded from everywhere
package.path = '/home/omni/system/modules/desktops/bspwm/?.lua;' .. package.path

local XInput = require("xinput")
local Bspc = require("bspc.init")

local MAGENTA = "#bd0058"


local function bspc(type, key, value)
    return os.execute(string.format("bspc %s %s %s", type, key, value))
end

function conf(key, value)
    print(key, value)
    return bspc("config", key, value)
end

-- Specaility Functions
local function setDesktops(names)
    return os.execute("bspc monitor -d " .. names)
end


os.execute("pgrep -x sxhkd > /dev/null || sxhkd &")-- Ripped straight from the example config
os.execute("xrandr --output HDMI-0 --mode 2560x1440 --rate 144")
os.execute("xwallpaper --maximize /home/omni/Images/wallpapers/yu-yiming_花海入口-up2sharp.png")

local mouse = "pointer:Compx LAMZU 4K Receiver"

XInput.prop_set(mouse, XInput.Properties.Pointer.MiddleEmulation, 0)
XInput.prop_set(mouse, XInput.Properties.Pointer.AccelProfile, "0 1 0")

setDesktops("I II III IV V VI VII VIII IX X")

local conf_set = Bspc.Config.set
local conf_props = Bspc.Config.OldProperties

conf_set(conf_props.BorderWidth, 1)
conf_set(conf_props.WindowGap, 0)

conf_set(conf_props.BorderColorFocused, string.format("'%s'", MAGENTA)) -- Because shells don't like '#'
conf_set(conf_props.SplitRatio, 0.5)
conf_set(conf_props.MonocleBorderless, true)
conf_set(conf_props.MonocleGapless, true)
