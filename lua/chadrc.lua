-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },

  -- Vanduir: colocar linha e coluna na linha de status
  statusline = {
    -- theme = "vscode_colored",
    -- theme = "vscode",
    theme = "default",
    modules = {
      -- The default cursor module is override
      cursor = function()
        -- return "%#BruhHl#" .. " bruh "
        -- return "%#St_pos_sep#|%#St_pos_icon#|%1 %c"
        return "- %l:%c"
      end,
    }
  }
}

M.base46 = {
	theme = "palenight",
  -- Vanduir: setar transparência
  transparency = true,
}

return M
