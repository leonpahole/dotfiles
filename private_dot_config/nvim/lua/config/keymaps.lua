-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- better paste in visual mode
keymap.set("v", "p", '"_dP')

-- paste with ctrl + v
keymap.set("i", "<C-v>", "<C-R><C-P>+")

-- space + x + r: run :LspRestart
keymap.set("n", "<Space>xr", ":LspRestart<CR>")

keymap.set("n", "<Space>ce", ":lua vim.diagnostic.open_float()<CR>")

-- Define the function to get the selected file in NeoTree
function GetNeotreeSelectedFile()
  local current_window = vim.api.nvim_get_current_win()
  local neotree_buffer = vim.fn.winbufnr(current_window)
  local cursor_line = vim.fn.line(".")
  return vim.api.nvim_buf_get_lines(neotree_buffer, cursor_line - 1, cursor_line, false)[1]
end

-- Bind the function to a keymap
vim.api.nvim_set_keymap(
  "n",
  "<Leader>on",
  ':lua print("Selected file: " .. GetNeotreeSelectedFile())<CR>',
  { noremap = true, silent = true }
)

-- open lazygit in new Tmux window
keymap.set("n", "<leader>gg", ":!tmux new-window -c " .. vim.fn.getcwd() .. " -- lazygit <CR><CR>", { silent = true })

-- telescope word search selection
keymap.set("n", "<leader>sw", '"zyiw:Telescope live_grep default_text=<C-r>z<cr>')

-- disable macro recording
vim.api.nvim_set_keymap("n", "q", "<Nop>", { noremap = true })
