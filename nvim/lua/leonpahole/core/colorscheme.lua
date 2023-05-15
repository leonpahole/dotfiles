require("catppuccin").setup({
  flavour = "frappe",
  transparent_background = true,
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")
