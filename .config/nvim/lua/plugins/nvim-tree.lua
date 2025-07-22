return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional icons
  },
  cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile" },
  opts = {
    sort_by = "case_sensitive",
    view = {
      width = 30,
      side = "left",
      relativenumber = true,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,  -- show dotfiles
      custom = {},       -- don’t hide anything else
    },
    git = {
      enable = true,
      ignore = false,    -- show .gitignored files too
    },
    actions = {
      open_file = {
        quit_on_open = false,
      },
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = true,
    },
  },
}
