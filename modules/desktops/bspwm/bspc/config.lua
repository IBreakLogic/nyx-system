local Config = {}

--[[
Config.Properties = {
  Border = {
    Color = {
      Normal = "normal_border_color",
      Active = "active_border_color",
      Focused = "focused_border_color",
    },
    Width = "border_width",
  },
  Padding = {
    Top = "top_padding",
    Bottom = "bottom_padding",
    Right = "right_padding",
    Left = "left_padding",
  },
  Monocle = {
    Borderless = "borderless_monocle",
    Gapless = "gapless_monocle",
    Single = "single_monocle",
  },
}
--]]

Config.Properties = {
  Pointer = {
    FocusFollowPointer = "focus_follows_pointer",
    FollowFocus = "pointer_follows_focus",
    FollowMonitor = "pointer_follows_monitor",
  },
}

Config.OldProperties = {
    PaddingTop = "top_padding",
    PaddingRight = "right_padding",
    PaddingLeft = "left_padding",
    PaddingBottom = "bottom_padding",

    BorderWidth = "border_width",
    BorderColorNormal = "normal_border_color",
    BorderColorActive = "active_border_color",
    BorderColorFocused = "focused_border_color",

    MonocleBorderless = "borderless_monocle",
    MonocleGapless = "gapless_monocle",
    MonocleSingle = "single_monocle",
    MonoclePaddingTop = "top_monocle_padding",
    MonoclePaddingRight = "right_monocle_padding",
    MonoclePaddingLeft = "left_monocle_padding",
    MonoclePaddingBottom = "bottom_monocle_padding",

    -- Misc
    WindowGap = "window_gap",
    SplitRatio = "split_ratio",
}

function Config.set(property, value)
  local exec_str = string.format("bspc config %s %s", property, value)
  print(exec_str)
  return os.execute(exec_str)
end

return Config
