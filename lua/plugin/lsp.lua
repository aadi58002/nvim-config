-- plugins/playground.lua:
return {
    'neovim/nvim-lspconfig',
    version = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp'
    },
    config = function()
        -- Add additional capabilities supported by nvim-cmp
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require('lspconfig')

        -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
        local servers = { 'ccls', 'rust_analyzer', 'pyright', 'tsserver' }
        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup {
                -- on_attach = my_custom_on_attach,
                capabilities = capabilities,
            }
        end

        require('cmp').setup({
            sources = {
                { name = 'nvim_lsp' },
            },
        })
    end
}
