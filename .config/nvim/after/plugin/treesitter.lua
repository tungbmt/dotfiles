require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indet = {
    enable = true,
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "html",
    "scss",
  }
}
