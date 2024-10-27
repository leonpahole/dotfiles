return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    init = function()
      require("lazyvim.util").lsp.on_attach(function(_, buffer)
        vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
        vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
      end)
    end,
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
