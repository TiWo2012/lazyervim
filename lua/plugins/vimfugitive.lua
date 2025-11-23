return {
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>")
    end,

    keys = {
      {
        "<leader>Gs",
        function()
          vim.cmd("Git")
        end,
        desc = "fugitive menu",
      },
      { "<leader>Gd", "<cmd>Gdiffsplit<cr>", desc = "Git Diff" },
      { "<leader>Gb", "<cmd>Git blame<cr>", desc = "Git Blame" },
      { "<leader>Gc", "<cmd>Git commit<cr>", desc = "Git Commit" },
      { "<leader>Gp", "<cmd>Git push<cr>", desc = "Git Push" },
      { "<leader>GP", "<cmd>Git pull<cr>", desc = "Git Pull" },
    },
  },
}
