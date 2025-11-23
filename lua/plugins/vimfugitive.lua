return {
  {
    "tpope/vim-fugitive",

    keys = {
      {
        "<leader>gfs",
        function()
          local width = math.floor(vim.o.columns * 0.9)
          local height = math.floor(vim.o.lines * 0.9)
          local row = math.floor((vim.o.lines - height) / 2)
          local col = math.floor((vim.o.columns - width) / 2)

          -- create a real buffer
          local buf = vim.api.nvim_create_buf(true, false)

          -- open the floating window
          local win = vim.api.nvim_open_win(buf, true, {
            relative = "editor",
            width = width,
            height = height,
            row = row,
            col = col,
            style = "minimal",
            border = "rounded",
          })

          -- run :Git inside the floating window
          vim.api.nvim_win_call(win, function()
            vim.cmd("Git")
          end)
        end,
        desc = "Fugitive (Floating)",
      },
      { "<leader>gfd", "<cmd>Gdiffsplit<cr>", desc = "Git Diff" },
      { "<leader>gfb", "<cmd>Git blame<cr>", desc = "Git Blame" },
      { "<leader>gfc", "<cmd>Git commit<cr>", desc = "Git Commit" },
      { "<leader>gfp", "<cmd>Git push<cr>", desc = "Git Push" },
      { "<leader>gfl", "<cmd>Git pull<cr>", desc = "Git Pull" },
    },
  },
}
