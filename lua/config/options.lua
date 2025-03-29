-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.o.background = "light"

-- elixir format on save
vim.g.mix_format_on_save = 1
vim.g.mix_format_silent_errors = 1
vim.g.mix_format_options = "--check-equivalent"

-- avante
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

-- lazy
vim.g.lazyvim_check_order = false
