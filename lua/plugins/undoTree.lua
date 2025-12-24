return {
  "mbbill/undotree",
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_SplitWidth = 30

    -- keep undo history persistent even after closing files
    vim.opt.undofile = true

    -- optional: set undo directory (useful for persistent undo)
    vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
    vim.fn.mkdir(vim.opt.undodir:get(), "p")
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_HighlightChangedNodes = 1
    vim.g.undotree_TreeNodeShape = "•"
  end,
}
