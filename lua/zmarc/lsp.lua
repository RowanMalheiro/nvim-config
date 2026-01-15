---- ==============================
---- LSP + Mason setup
---- ==============================
--
---- Mason: easy LSP installer
--require("mason").setup()
--require("mason-lspconfig").setup({
--  ensure_installed = { "lua_ls", "clangd", "rust_analyzer"}, -- choose your languages
--  automatic_enable = {
--    exclude = { "luau_lsp" },
--  },
--})
--
---- LSPConfig: attach servers
--local lspconfig = require("lspconfig")
--
---- Default capabilities (so completion works)
--local capabilities = require("cmp_nvim_lsp").default_capabilities()
--local base_capabilities = vim.lsp.protocol.make_client_capabilities()
--local rs_capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
--
---- Example servers:
--lspconfig.lua_ls.setup({ capabilities = capabilities })
--lspconfig.pyright.setup({ capabilities = capabilities })
----lspconfig.rust_analyzer.setup({capabilities = capabilities})
----lspconfig.ts_ls.setup({ capabilities = capabilities })
--lspconfig.bashls.setup({ capabilities = capabilities })
--
--lspconfig.clangd.setup {
--    settings = {
--        clangd = {
--            queryDrivers = { "/usr/bin/g++-13", "/usr/bin/clang++-17" }
--        }
--    }
--}
--
--local rt = require("rust-tools")
--
--rt.setup({
--  server = {
--    capabilities = rs_capabilities,
--    settings = {
--      ["rust-analyzer"] = {
--        cargo = {
--          allFeatures = true,
--        },
--        checkOnSave = false,
--        check = {
--            command = "clippy",
--        },
--        diagnostics = {
--          enable = true,
--        },
--        completion = {
--          callable = {
--            snippets = "add_parentheses",
--          },
--        },
--      },
--    },
--  },
--})

-- ==============================
-- LSP + Mason setup
-- ==============================

-- Mason: easy LSP installer
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd"}, -- choose your languages
  automatic_enable = {
    exclude = { "luau_lsp", "rust-analyzer" },
  },
})

-- LSPConfig: attach servers
local lspconfig = require("lspconfig")

-- Default capabilities (so completion works)
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Example servers:
lspconfig.lua_ls.setup({ capabilities = capabilities })
lspconfig.pyright.setup({ capabilities = capabilities })
lspconfig.bashls.setup({ capabilities = capabilities })
local rt = require("rust-tools")

rt.setup({
  server = {
    capabilities = capabilities,
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
        checkOnSave = false,
        check = {
            command = "clippy",
        },
        diagnostics = {
          enable = true,
        },
        completion = {
          callable = {
            snippets = "add_parentheses",
          },
        },
      },
    },
  },
})

--lspconfig.clangd.setup {
--    settings = {
--        clangd = {
--            queryDrivers = { "/usr/bin/g++-13", "/usr/bin/clang++-17" }
--        }
--    }
--}

vim.diagnostic.config({
  update_in_insert = true,
  virtual_text = false,
  signs = true,
  underline = true,
})
