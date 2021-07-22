if !exists('g:loaded_telescope') | finish | endif

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["f"] = actions.send_to_qflist
      },
    },
  }
}
EOF

