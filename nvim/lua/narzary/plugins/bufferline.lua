return{
  "akinsho/bufferline.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons"},
  version = "*",

  config = function()
    local bufferline =  require('bufferline')


    bufferline.setup{
    options ={
       -- see :h bufferline.nvim
      mode = "buffers",
      seperator_style = {"/", "/"},
      numbers = "ordinal",
      tab_size = 20,
      always_show_bufferline = true,
      sort_by = 'insert_after_current',

    },
  }
  end
}

