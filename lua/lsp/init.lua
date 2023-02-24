require("mason").setup {}

require("mason-lspconfig").setup {
  ensure_installed = {
    'tsserver',
    'lua_ls',
    'cssls',
    'html',
    'jsonls' ,
    'emmet_ls',
  },
}

local lspconfig = require("lspconfig")
local function on_attach(client, bufnr)
end

local lsp_flags = {
  debounce_text_changes = 100,
}

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- start server
-- ts、js
lspconfig['tsserver'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {

  },
}

-- vue
lspconfig['vuels'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {

  },
}

-- lua
lspconfig['lua_ls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'use' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- css
lspconfig['cssls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  filetypes = { "css", "scss", "less", 'wxss' },
  settings = { },
}

-- json
lspconfig['jsonls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = { },
}

-- emmets
lspconfig['emmet_ls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "eruby", "wxml" },
  settings = {

  },
}

require("lsp.cmp")
-- require('lsp.lspKeyMap')
require('lsp.lspsaga')
-- require('lsp.neodim')

