vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>oe", vim.cmd.Ex,
    { desc = "[O]pen [E]xplorer" })

-- keep cursor in middle when doing half page jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- find and replace all (in file) (thx prime)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "[S]earch and Replace" })

-- they're the same thing lul
vim.keymap.set("i", "<C-c>", "<Esc>")

-- never press this I guess.
-- After some reading, this is apparently 'ex' mode. not touching this lol
vim.keymap.set("n", "Q", "<nop>")

-- git stuff
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" })

-- select all
vim.keymap.set("n", "<C-a>", "ggVG")

-- move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- move single lines
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
-- move selected lines
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })

-- persistent indenting
vim.keymap.set("v", ">", ">gv", { desc = "Indent to the right" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent to the left" })

-- delete without yanking
vim.keymap.set("n", "<leader>d", "\"_d", { desc = "Delete without yanking" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "Delete without yanking" })
-- delete and go into insert mode without yanking
vim.keymap.set("n", "<leader>c", "\"_c", { desc = "Delete and go into insert mode without yanking" })
vim.keymap.set("v", "<leader>c", "\"_c", { desc = "Delete and go into insert mode without yanking" })
-- paste over selection without yanking
vim.keymap.set("v", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- buffers
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to recent buffer" })

-- lazygit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open lazygit" })

-- todo-comment
vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
