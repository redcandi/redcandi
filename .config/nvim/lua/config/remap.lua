vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--  Basic remaps
keymap("n", "<leader>w", ":w<CR>", opts)          -- save
keymap("n", "<leader>q", ":q<CR>", opts)          -- quit
keymap("n", "<leader>h", ":nohlsearch<CR>", opts) -- clear search highlight

-- Easy movement in wrapped lines
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- Better window navigation
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)

-- Optional: move lines up/down with Alt
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- undo tree
vim.keymap.set("n", "<C-u>", "<cmd>UndotreeToggle<CR>", { desc = "Toggle Undotree" })

-- Nvim-Tree Toggle
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- Telescope
vim.keymap.set("n","<leader>ff","<cmd>Telescope find_files<CR>",{desc = "fuzzy finder file search"})

-- terminal toggleterm
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
vim.keymap.set("t", "<C-t>", [[<C-\><C-n><cmd>ToggleTerm<CR>]], { desc = "Toggle Terminal from terminal" })
