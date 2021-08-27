require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indet = {
    enable = true,
  },
  ensure_installed = {
    'typescript',
    'javascript',
    'regex',
    'bash',
    'tsx',
    'json',
    'yaml',
    'html',
    'scss',
  }
}
