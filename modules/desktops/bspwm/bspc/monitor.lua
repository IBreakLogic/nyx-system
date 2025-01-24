local Monitor = {}

-- Builder

local function builder_focus(self)
  return self
end

local function builder_swap(self)
  return self
end

---@param names string[]
local function builder_add_desktops(self, names)
  local str = table.concat(names, " ")
  print(str)
  table.insert(self.parts, str)
  return self
end

local function builder_reorder_desktops(self)
  return self
end

local function builder_reset_desktops(self)
  return self
end

local function builder_rectangle(self)
  return self
end

local function builder_rename(self)
  return self
end

local function builder_send(self)
  print(self.parts)
  return self
end

function Monitor.builder()
  return {
    -- Functions
    focus = builder_focus,
    swap = builder_swap,
    rectangle = builder_rectangle,
    rename = builder_rename,
    
    add_desktops = builder_add_desktops,
    reorder_desktops = builder_reorder_desktops,
    reset_desktops = builder_reset_desktops,

    send = builder_send,

    -- Data
    parts = {}
  }
end

-- Instant Execute

local function add_desktops(names)
  local str = table.concat(names, " ")
  return os.execute
end

return Monitor
