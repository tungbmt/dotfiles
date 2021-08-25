-- CHANGE HERE --
local keymaps = {
  insert_mode = {
    ["jk"] = "<ESC>",
  },
  normal_mode = {
    -- <C-s> to save
    ["<C-s>"] = { ":write<CR>", { noremap=true } },
  },
  visual_mode = {
    -- Better indenting
    ["<"] = "<gv",
    [">"] = ">gv",
  },
}

-- DO NOT TOUCH --
local M = {}

local generic_opts_any = { noremap = true, silent = true }

local generic_opts = {
  ["i"] = generic_opts_any,
  ["n"] = generic_opts_any,
  ["v"] = generic_opts_any,
  ["x"] = generic_opts_any,
  ["c"] = generic_opts_any,
  ["t"] = { silent = true },
}

local mode_adapters = {
  insert_mode = "i",
  normal_mode = "n",
  term_mode = "t",
  visual_mode = "v",
  visual_block_mode = "x",
  command_mode = "c",
}

function M.set_keymaps(mode, from, to) 
  local opt = generic_opts[mode] and generic_opts[mode] or generic_opts_any
  if type(from) == "table" then
    opt = from[2]
    from = from[1]
  end
  vim.api.nvim_set_keymap(mode, to, from, opt)
end

function M.load_mode(mode, mappings)
  mode = mode_adapters[mode] and mode_adapters[mode] or mode
  for to, from in pairs(mappings) do
    M.set_keymaps(mode, from, to)
  end
end

function M.load(keymaps)
  for mode, mappings in pairs(keymaps) do
    M.load_mode(mode, mappings)
  end
end

function M.setup()
  M.load(keymaps)
end

return M
