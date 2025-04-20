
return {
  -- Install nvim-treesitter plugin
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- Make sure parsers are updated automatically
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Specify languages you want to install
        ensure_installed = { "typescript", "tsx", "javascript", "lua", "python", "html", "css", "json" },
        
        -- Enable highlighting
        highlight = {
          enable = true,
        },

        -- Enable indentation using Treesitter
        indent = {
          enable = true,
        },

        -- Enable auto-tagging for HTML/JSX/TSX
        autotag = {
          enable = true,
        },
      })
    end,
  },
} 
