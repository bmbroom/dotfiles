return {
  "rebelot/kanagawa.nvim",
  config = function()
    require('kanagawa').setup({
      colors = {
        palette = {
          broomRed = "#d65c5c",
          broomOrange = "#d6995c",
          broomYellow = "#d6cc5c",
          broomYellowGreen = "#b4d65c",
          broomGreen = "#5cd664",
          broomBlueGreen = "#27db9f",
          broomnBlue = "#5ca5d6",
          broomPurple = "#a75cd6",
          broomPink = "#d65cd4",
        },
      },
      overrides = function(colors)
        return {
          Operator = { fg = colors.palette.broomRed, italic = false },
          Variable = { fg = colors.palette.broomBlue, italic = false },

          Comment = { fg = colors.palette.broomYellow, italic = false },
          String = { fg = colors.palette.broomGreen, italic = false },
          Function = { fg = colors.palette.broomYellowGreen, italic = false }, -- fn names (only) + brackets

          Statement = { fg = colors.palette.broomPink, italic = false }, -- return stmt in javascript
          Conditional = { fg = colors.palette.broomPink, italic = false },
          Repeat = { fg = colors.palette.broomPink, italic = false },

          Label = { fg = colors.palette.broomBlueGreen, italic = false },
          Keyword = { fg = colors.palette.broomPurple, italic = false, bold = true },
          -- theme colors will update dynamically when you change theme!
          -- SomePluginHl = { fg = colors.theme.syn.type, bold = true },
        }
      end
    })
    vim.cmd("colorscheme kanagawa-dragon");
  end
}
