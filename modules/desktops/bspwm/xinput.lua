local XInput = {}

XInput.Properties = {
  Pointer = {
    MiddleEmulation = "libinput Middle Emulation Enabled",
    AccelProfile = "libinput Accel Profile Enabled"
  },
}

function XInput.prop_list(device)
end

function XInput.prop_set(device, property, value)
  local exec_str = string.format("xinput set-prop '%s' '%s' %s", device, property, value)
  return os.execute(exec_str)
end

return XInput
