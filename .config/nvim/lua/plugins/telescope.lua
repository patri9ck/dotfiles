return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>f", builtin.find_files)
        vim.keymap.set("n", "<leader>fg", builtin.git_files)
        vim.keymap.set("n", "<leader>b", builtin.buffers)
        vim.keymap.set("n", "<leader>l", function()
            builtin.grep_string({ search = vim.fn.input("Grep: ") })
        end)
    end
}
