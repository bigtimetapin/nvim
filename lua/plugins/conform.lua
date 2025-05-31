return {
  "stevearc/conform.nvim",
  optional = true, -- We might need to revisit this if formatting doesn't trigger
  opts = {
    formatters_by_ft = {
      kotlin = { "ktlint" },
      elixir = { "mix_format_with_check" },
      heex = { "mix_format_with_check" }, -- For .heex files, assuming mix format handles them
      -- You can also add 'surface' if needed and mix format supports it
      -- surface = { "mix_format_with_check" },
    },
    formatters = {
      mix_format_with_check = {
        command = "mix",
        args = { "format", "--check-equivalent", "-" },
        stdin = true,
      },
    },
    -- Consider adding format_on_save options if not handled globally by LazyVim
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    --   quiet = true, -- To match vim.g.mix_format_silent_errors behavior
    -- },
  },
}
