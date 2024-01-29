return{
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.buttons.val = {
      dashboard.button("e","  New file" , ":ene <BAR> startinsert <CR>" ),
      dashboard.button("l", "Lazy", ":Lazy<CR>"),
      dashboard.button("t", "Nvim-tree", ": NvimTreeOpen<CR>"),
      dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>" )
    }

    dashboard.config.opts.noautocmd = true
    vim.cmd[[autocmd User AlphaReady echo 'READY FOR A NEW SESSION']]
    alpha.setup(dashboard.config)
  end
}
