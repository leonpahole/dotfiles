-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- import telescope actions safely
local state_setup, state = pcall(require, "telescope.state")
if not state_setup then
  return
end

-- import telescope actions safely
local builtin_setup, builtin = pcall(require, "telescope.builtin")
if not builtin_setup then
  return
end

-- configure telescope
telescope.setup({
  -- configure custom mappings
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
    },
  },
  extensions = {
    frecency = {
      default_workspace = "CWD",
      show_filter_column = false,
      show_unindexed = false,
    },
  },
})

telescope.load_extension("fzf")