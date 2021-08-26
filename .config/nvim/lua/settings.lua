-- CHANGE HERE --
local options = {
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert 2 spaces for a tab
  number = true, -- set number lines
  relativenumber = true, -- set relative number lines
  hidden = true, -- required to keep multiple buffers and open multiple buffers
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  fileencoding = "utf-8", -- the encoding written to a file 
  mouse = "a", -- allow the mouse to be used in neovim
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  termguicolors = true, -- set term gui colors (most terminals support this)
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 2, -- more space in the neovim command line for displaying messages
  title = true, -- set the title of window to the value of the titlestring
  updatetime = 300, -- faster completion
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true, -- convert tabs to spaces
  wrap = false, -- display lines as one long line
  cursorline = true, -- highlight the current line
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  spell = true,
  spelllang = "en",
  scrolloff = 8,
  sidescrolloff = 8,
}

-- DO NOT TOUCH --
local M = {}

function M.load_options(options)
  local opt = vim.opt
  opt.shortmess:append "c"

  for k, v in pairs(options) do
    vim.opt[k] = v
  end
end

M.load_commands = function () 
  local cmd = vim.cmd
  cmd("set whichwrap+=<,>,[,],h,l")
  cmd('syntax on')
  cmd('colorscheme onedark')
  cmd('hi Normal ctermbg=none guibg=none')
end

function M.setup()
  M.load_options(options)
  M.load_commands()
end

return M
