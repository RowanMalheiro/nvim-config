vim.g.mapleader = " "
vim.g.maplocalleader = " "

--nicer looking lsp popups

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>o", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set("n", "K", function() 
        vim.lsp.buf.hover({border = "rounded"})
    end)
vim.keymap.set("v", "K", function() 
        vim.lsp.buf.hover({border = "rounded"})
    end)



