-- plugins/playground.lua:
return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' }, -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' }, -- Required
    },
    config = function()
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
        end)

        -- When you don't have mason.nvim installed
        -- You'll need to list the servers installed in your system
        lsp.setup_servers({ 'tsserver', 'rust_analyzer' })

        -- (Optional) Configure lua language server for neovim
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

        lsp.setup()
    end
}
