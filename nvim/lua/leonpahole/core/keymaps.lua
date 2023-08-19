-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>q", ":qa<cr>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- better paste in visual mode
keymap.set("v", "p", '"_dP')

-- save
keymap.set("n", "<C-s>", ":w<cr>")
keymap.set("i", "<C-s>", "<esc>:w<cr>")

-- paste with ctrl + v
keymap.set("i", "<C-v>", "<C-R><C-P>+")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fr", "<cmd>Telescope resume<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string globally
keymap.set("n", "<leader>fc", '"zyiw:Telescope live_grep default_text=<C-r>z<cr>') -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- saga
keymap.set("n", "<S-l>", "<cmd>Lspsaga show_line_diagnostics<cr>", { remap = true })

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-n>", function()
  ui.nav_prev()
end)
vim.keymap.set("n", "<C-m>", function()
  ui.nav_next()
end)

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- when scrolling down, add some centering
local api = vim.api
api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })
api.nvim_set_keymap("n", "G", "Gzz", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

vim.keymap.set("i", "<F8>", "copilot#Next()", { expr = true, remap = true })
vim.keymap.set("i", "<F9>", "copilot#Previous()", { expr = true, remap = true })
vim.keymap.set("i", "<C-x>", "copilot#Dismiss()", { expr = true, remap = true })
vim.keymap.set("i", "<F10>", "copilot#Suggest()", { expr = true, remap = true })
