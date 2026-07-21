-- render-markdown.nvim Markdown Prettifier
return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" },
  opts = {
    -- html/latex/yaml parsers aren't bundled with nvim and we no longer ship nvim-treesitter
    html = { enabled = false },
    latex = { enabled = false },
    yaml = { enabled = false },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
