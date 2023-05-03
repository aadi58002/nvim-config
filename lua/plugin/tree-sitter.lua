-- plugins/tree-sitter.lua:
return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "lua", "help", "rust", "typescript", "javascript", "query" },
        sync_install = false,
        auto_install = true,
        hightlight = { enable = true, additional_vim_regex_highlighting = false, },
        indent = { enable = true }
    }
}
