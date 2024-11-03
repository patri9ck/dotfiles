return {
    'VonHeikemen/lsp-zero.nvim',
    lazy = false,
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "zbirenbaum/copilot.lua",
        "zbirenbaum/copilot-cmp"
    },
    config = function()
        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({ buffer = bufnr })

            vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition)
            vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
            vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
            vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action)
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.references)
            vim.keymap.set("n", "<leader>n", vim.lsp.buf.rename)
            vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
        end)

        require("mason").setup()

        require("mason-lspconfig").setup({
            handlers = { lsp_zero.default_setup }
        })

        require("copilot").setup({
            suggestion = { enabled = false },
            panel = { enabled = false }
        })

        require("copilot_cmp").setup()

        local cmp = require("cmp")

        cmp.setup({
            sources = {
                { name = "copilot" },
                { name = "nvim_lsp" }
            },

            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = false
                }),
            })
        })
    end
}
