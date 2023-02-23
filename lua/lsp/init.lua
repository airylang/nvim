require("mason").setup {}

require("mason-lspconfig").setup {
  ensure_installed = { 'tsserver' },
}

local lspconfig = require("lspconfig")
local function on_attach(client, bufnr)
end

local lsp_flags = {
  debounce_text_changes = 100,
}

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- after local capabilities = ....
-- start server
lspconfig.tsserver.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {

  },
}

-- lspconfig['vue-language-server'].setup {
lspconfig['vuels'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {

  },
}

require("lsp.cmp")

require('lsp.lspKeyMap')
-- require('lsp.lspsaga')

