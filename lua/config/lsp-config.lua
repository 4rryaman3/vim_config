require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {"lua_ls","pyright","harper_ls","html","spectral","dockerls"}
}


