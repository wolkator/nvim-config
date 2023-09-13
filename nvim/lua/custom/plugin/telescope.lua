return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
        vim.keymap.set("n", "<leader>r", "<cmd>Telescope live_grep<cr>", { desc = "Grep files" })
        vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
        vim.keymap.set("n", "<leader>o", "<cmd>Telescope oldfiles<cr>", { desc = "Find old files" })
        vim.keymap.set("n", "<leader>s", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search buffer" })
        vim.keymap.set("n", "<leader>t", "<cmd>Telescope<cr>", { desc = "Telescope" })
        vim.keymap.set("n", "<leader>:", "<cmd>Telescope command_history<cr>", { desc = "Command history" })
        vim.keymap.set("n", "<leader>?", "<cmd>Telescope help_tags<cr>", { desc = "Help" })
    end
}
