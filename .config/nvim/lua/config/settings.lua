local opt = vim.opt

-- Disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--  Line numbers
opt.number = true           -- show absolute line number
opt.relativenumber = true   -- show relative line numbers

--  Tabs & Indentation
opt.tabstop = 4             -- number of spaces a <Tab> counts for
opt.shiftwidth = 4          -- spaces per auto-indent
opt.expandtab = true        -- convert tabs to spaces
opt.autoindent = true       -- auto-indent new lines
opt.smartindent = true      -- smart autoindenting on new lines

--  UI and usability
opt.cursorline = true       -- highlight the current line
opt.termguicolors = true    -- true color support
opt.scrolloff = 8           -- keep lines above/below cursor
opt.signcolumn = "yes"      -- always show the sign column

--  Clipboard
opt.clipboard = "unnamedplus"  -- use system clipboard

--  Save undo history
opt.undofile = true

--  Search behavior
opt.ignorecase = true       -- ignore case...
opt.smartcase = true        -- ...unless there's a capital letter
opt.incsearch = true        -- show matches while typing
opt.hlsearch = true         -- highlight search results
