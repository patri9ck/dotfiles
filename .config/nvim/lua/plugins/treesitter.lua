return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "rust", "bash" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
