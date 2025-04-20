local M = {}

local case_modes = { "smart_case", "ignore_case", "respect_case" }
local current_mode = 1

function M.ToggleCaseMode()
  current_mode = current_mode % #case_modes + 1
  local mode = case_modes[current_mode]
  print("Telescope case_mode: " ..mode)
  require("telescope").setup({
    defaults = {
      case_mode = mode,
    },
  })
end
return M
