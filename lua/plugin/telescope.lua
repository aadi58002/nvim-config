-- plugins/telescope.lua:
return {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        version = false, -- telescope did only one release, so use HEAD for now
        keys = {
            { "<leader>,",       "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
            { "<leader>/",       "<cmd>Telescope live_grep<cr>",                     desc = "Grep (root dir)" },
            { "<leader>:",       "<cmd>Telescope command_history<cr>",               desc = "Command History" },
            { "<leader><space>", "<cmd>Telescope find_files<cr>",                    desc = "Find Files (root dir)" },
        },
        opts = {
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
            },
        },
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
