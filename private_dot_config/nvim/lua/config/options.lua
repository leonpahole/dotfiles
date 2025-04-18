-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.completeopt = "menu,preview,menuone,noselect"

-- enable line wrap
vim.opt.wrap = true

vim.api.nvim_set_hl(0, "SatelliteBar", { bg = "#ffffff" })

vim.g.snacks_animate = false