return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
        vim.keymap.set("n", "<leader>g", vim.cmd.Git)
    end
}
