return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "vertical",
      size = 80,
    },
    keys = {
      {
        "<leader>wt",
        function()
          require("toggleterm").toggle()
        end,
        desc = "Vertical Terminal",
      },
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "*",
        callback = function()
          vim.api.nvim_buf_set_keymap(0, "t", "<C-x>", [[<C-\><C-n>]], { noremap = true, silent = true })
        end,
      })
    end,
  },
}
