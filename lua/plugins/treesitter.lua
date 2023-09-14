return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "bash",
      "c",
      "eex",
      "elixir",
      "heex",
      "html",
      "javascript",
      "json",
      "kotlin",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "rust",
      "terraform",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    })
  end,
}
