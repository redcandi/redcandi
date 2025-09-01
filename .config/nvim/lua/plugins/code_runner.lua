return {
  "CRAG666/code_runner.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    require("code_runner").setup({
      mode = "term", -- or "toggle", "float", "tab"
      focus = true,
      startinsert = true,
      term = {
        position = "belowright", -- or "vert", "tab", etc.
        size = 15,
      },
      filetype = {
        python = "python3 -u",
        rust = "rustc $fileName && ./$(basename $fileName .rs)",
        c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        asm =  "as $fileName -o $fileNameWithoutExt.o && ld $fileNameWithoutExt.o -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        javascript = "node",
        lua = "lua",
        sh = "bash",
      },
    })
  end,
  keys = {
    { "<leader>r", "<cmd>RunCode<CR>", desc = "Run current file" },
  },
  cmd = { "RunCode", "RunFile", "RunProject", "RunClose" },
}
