vim.g.mapleader = " "
vim.keymap.set("n", "t", ":ToggleTerm size=80 direction=vertical<CR>", { silent = true })


vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle, { silent = true })
