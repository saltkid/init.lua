vim.g.mapleader = " "
vim.keymap.set("n", "<leader>oe", vim.cmd.Ex,
    { desc = "[O]pen [E]xplorer" })

-- keep cursor in middle when doing half page jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- find and replace all (in file)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "[S]earch and Replace" })

-- they're the same thing lul
vim.keymap.set("i", "<C-c>", "<Esc>")

-- never press this I guess
vim.keymap.set("n", "Q", "<nop>")

-- git stuff
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" })
