local option = { noremap= true, silent= true }

local keyset = vim.keymap.set

keyset('n', '<M-f>', vim.diagnostic.open_float, option)
keyset('n', '<M-p>', vim.diagnostic.goto_prev, option)
keyset('n', '<M-n>', vim.diagnostic.goto_next, option)
keyset('n', 'gl', vim.diagnostic.setloclist, option)

keyset('n', 'gD', vim.lsp.buf.declaration, option)
keyset('n', 'gd', vim.lsp.buf.definition, option)
keyset('n', 'K', vim.lsp.buf.hover, option)
keyset('n', '<space>D', vim.lsp.buf.type_definition, option)
keyset('n', '<space>rn', vim.lsp.buf.rename, option)
keyset('n', 'gr', vim.lsp.buf.references, option)
