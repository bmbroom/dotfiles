return {
  "rebelot/kanagawa.nvim",
  config = function()
    require('kanagawa').setup({
      overrides = function(colors)
        return {
            -- Assign a static color to strings
            Comment = { fg = colors.palette.carpYellow, italic = false },
            String = { fg = colors.palette.springGreen, italic = false },
            --Keyword = { fg=colors.palette.dragonGViolet, italic = false },
            -- theme colors will update dynamically when you change theme!
            -- SomePluginHl = { fg = colors.theme.syn.type, bold = true },
        }
      end
    })
    vim.cmd("colorscheme kanagawa-dragon");
  end
}
