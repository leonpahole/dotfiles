return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.experimental = {
      ghost_text = false,
    }
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
      ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
      ["<C-e>"] = cmp.mapping.abort(), -- close completion window
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
    })
    opts.window = {
      completion = {
        border = "rounded",
        side_padding = 0,
      },
      documentation = {
        border = "rounded",
        -- make it transparent
        winhighlight = "Normal:Pmenu,PmenuSbar:experc,PmenuThumb:experd,FloatBorder:Pmenu,Search:None",
        side_padding = 0,
      },
    }
  end,
}
