return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",  -- v3 syntax
    opts = {
      indent = { char = "│" },
      scope = { enabled = false }, 
      whitespace = { remove_blankline_trail = true },
    },
  }
}
