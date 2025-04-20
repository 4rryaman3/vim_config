vim.opt.runtimepath:prepend("C:\\Users\\shree\\AppData\\Local\\nvim")
require("keymap")
require("options")
require("config.lazy") 
require("config.keymaps")
require("config.custom-dashbord")
require'nvim-tree'.setup {
  view = {
    side = 'right',  
    width = 30,     
  },
}
require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig").lua_ls.setup {}
require('config.lsp-config')
