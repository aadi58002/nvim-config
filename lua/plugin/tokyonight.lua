-- plugins/tokyonight.lua:
return {
    'folke/tokyonight.nvim',
    opts = {
        style = "moon",
        transparent = false,
    },
    config = function(_, opts)
        require("tokyonight").setup(opts)
        vim.cmd("colorscheme tokyonight")
    end
}
