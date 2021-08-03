require('bufferline').setup{
    options = {
        numbers = "none",
        show_close_icon = false,
        show_buffer_close_icons = false,
        separator_style = "thin",
        always_show_bufferline = true,
        diagnostics = false, -- "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon
        end
    }
}
