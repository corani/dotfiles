if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "go","elixir","python"
  },
  -- plugin: p00f/nvim-ts-rainbow
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" },  -- List of languages for which to disable the plugin
    extended_mode = true,           -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> bool
    max_file_lines = nil,           -- Do not enable for files with more than n lines, int
    -- colors = {},                 -- Table of hex strings
    -- termcolors = {},             -- Table of colour name strings
  },
}
EOF
