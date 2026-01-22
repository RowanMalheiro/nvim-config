require("lazy").setup({
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },{
        "romainl/vim-cool"  --hide highlights after searching
    },
    { 
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()

            highlight = { enable = true }

        end
    },
    {
        "rmagatti/goto-preview",
        dependencies = { "rmagatti/logger.nvim" },
        event = "BufEnter",
        config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    -- LSP support
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim", config = true },
    { "williamboman/mason-lspconfig.nvim" },

    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip",
        },
    },
    {"simrat39/rust-tools.nvim"},
    {
        'nvim-java/nvim-java',
        config = function()
            require('java').setup()
            vim.lsp.enable('jdtls')
        end,
    },
})

require('goto-preview').setup {
    default_mappings = true,
}
