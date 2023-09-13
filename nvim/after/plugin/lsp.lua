local lsp = require("lsp-zero").preset("recommended")

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

require("lspconfig").matlab_ls.setup({
    root_dir = function() return os.getenv("MATLABROOT") end
})

lsp.setup()
