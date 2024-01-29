return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lua_line = require("lualine")
    local lazy_status = require("lazy.status") -- status of lazy pending upadtes

    local colors = {
      green = "#8cb578",
      red = "#dd4d03",
      blue = "#7288ed",
      cream = "fbedda",
      dark_red = "6a111d",
      dark_purple = "#231c47",
      fg = "#07210d",
      bg = "#ccc9f5",
      inactive_bg = "#fa9da2",
    }

    local custom_theme = {
      normal = {
        a = { bg = colors.green, fg = colors.fg , gui = "bold" },
        b = { bg = colors.fg , fg = colors.bg },
        c = { bg = colors.bg , fg = colors.fg },
      },
      insert = {
        a = { bg = colors.blue , fg = colors.fg, gui = "italic" },
        b = { bg = colors.fg , fg = colors.bg },
        c = { bg = colors.bg , fg = colors.fg },
      },
      visual = {
        a = { bg = colors.dark_red , fg = colors.bg , gui = "italic"},
        b = { bg = colors.fg , fg = colors.bg },
        c = { bg = colors.cream, fg = colors.fg },
      },
      command = {
        a = { bg = colors.dark_purple, fg = colors.cream , gui = "italic"},
        b = { bg = colors.fg, fg = colors.bg },
        c = { bg = colors.green, fg = colors.fg },
r     },
      replace = {
        a = { bg = colors.red , fg = colors.bg , gui = "italic" },
        b = { bg = colors.fg , fg = colors.bg },
        c = { bg = colors.bg , fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg , fg = colors.fg , gui = "italic" },
        b = { bg = colors.bg , fg = colors.bg },
        c = { bg = colors.bg , fg = colors.bg },
      },
    }

    -- configure lualine with custom_theme
    lua_line.setup({
      options = {
        theme = custom_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#f21160"},
          },
          {"encoding"},
          {"fileformat"},
          {"filetype"},          
        },
      },
    })
  end
}
