-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { pattern = "*", command = "EnableHL" })
      require("hlchunk").setup({
        chunk = {
          enable = true,
          use_treesitter = false,
          notify = true, -- notify if some situation(like disable chunk mod double time)
          exclude_filetypes = {
            aerial = true,
            dashboard = true,
          },
          support_filetypes = {
            "*.lua",
            "*.js",
          },
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = ">",
          },
          style = {
            { fg = "#CB8764" },
          },
        },
        indent = {
          enable = true, --
          -- chars = { "│", "¦", "┆", "┊" },
          chars = { "▏" },
          -- chars = { " ", " ", " ", " " },
          use_treesitter = false,
          style = {
            -- { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") }
            { fg = "#51576e" }
          },
        },
        line_num = {
          enable = false,
          use_treesitter = true,
          style = "#806d9c",
        },
        blank = {
          enable = false,
          chars = {
            "․",
          },
          style = {
            vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
          },
        },
      })
    end
  }
}
