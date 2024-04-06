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

keymap.set("n", "<Space>at", ":CopilotChatToggle<CR>")

for _, mode in ipairs({ "n", "v" }) do
  keymap.set(mode, "<Space>ae", ":CopilotChatExplain<CR>")
  keymap.set(mode, "<Space>au", ":CopilotChatTests<CR>")
  keymap.set(mode, "<Space>aff", ":CopilotChatFix<CR>")
  keymap.set(mode, "<Space>afd", ":CopilotChatFixDiagnostic<CR>")
  keymap.set(mode, "<Space>ao", ":CopilotChatOptimize<CR>")
  keymap.set(mode, "<Space>ad", ":CopilotChatDocs<CR>")

  -- These two don't work yet
  -- keymap.set(mode, "<Space>acc", ":CopilotChatCommit<CR>")
  -- keymap.set(mode, "<Space>acs", ":CopilotChatCommitStaged<CR>")
end

vim.cmd([[
  function! OpenInNautilus()
    let l:file = substitute(neotree#get_curr_file(), " ", "\\ ", "g")
    silent execute "!nautilus --select " . l:file . " &"
  endfunction
]])

vim.api.nvim_set_keymap("n", "<leader>on", ":call OpenInNautilus()<CR>", { noremap = true, silent = true })
