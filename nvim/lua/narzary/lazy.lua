local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  {import = "narzary.plugins"},
  {import = "narzary.plugins.lsp"}

},{   -- Lazy custom properties
  install = {
--  install this colorscheme whenever lazy load a new plugin
    colorscheme = {"catppuccin"},
 },
  checker = {
    -- check for plugin updates and notify 
    enabled = true,
    notify = false,
  },
  change_detection = { -- detection of new plugins
    notify = false,
  }
})

