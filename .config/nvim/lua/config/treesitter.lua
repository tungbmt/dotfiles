require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indet = {
    enable = false,
    disable = {}
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "html",
    "scss",
  }
}
