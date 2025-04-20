
-- lua/lsp_config/init.lua
--

local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

-- Ensure Mason is set up
mason.setup()

-- List of servers to install using Mason
local servers = {"lua_ls","pyright","harper_ls","html","dockerls"}

-- Install and set up LSP servers via Mason
mason_lspconfig.setup {
  ensure_installed = servers, -- Automatically install the listed servers
  automatic_installation = true, -- Install missing servers automatically
}

-- Function to handle key mappings and LSP setup
local function on_attach(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- Key bindings for LSP functionality
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gl', '<cmd>lua vim.lsp.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
end

-- Function to set up LSP servers
local function setup()
  -- Configure each LSP server with on_attach function
  for _, server in ipairs(servers) do
    lspconfig[server].setup{
      on_attach = on_attach
    }
  end
end

-- Return the setup function to be called in init.lua
return {
  setup = setup
}


