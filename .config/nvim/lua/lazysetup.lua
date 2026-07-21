-- Plugin manager bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy.vim Setup
require("lazy").setup({
  -- Import plugins folder
  { import = "plugins" },
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "nvim-lualine/lualine.nvim",
  "lewis6991/gitsigns.nvim",
})

-- Telescope configuration
require('telescope').setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case"
    },
    file_ignore_patterns = { "node_modules", "%.git/", "%.cache" },
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
    }
  },
  extensions = {
    project = {
      hidden_files = true,
      theme = "dropdown",
      order_by = "recent",
      search_by = "title",
      sync_with_nvim_tree = true,
    }
  }
})

