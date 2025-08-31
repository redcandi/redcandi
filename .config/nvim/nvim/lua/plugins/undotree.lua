return {{
  "mbbill/undotree",
  cmd = { "UndotreeToggle", "UndotreeShow" }, -- optional lazy-loading
  keys = {
    { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle Undotree" },
  },
}
}
