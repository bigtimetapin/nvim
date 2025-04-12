return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
  opts = {
    provider = "gemini",
    auto_suggestions_provider = "gemini",
    cursor_applying_provider = nil, -- The provider used in the applying phase of Cursor Planning Mode, defaults to nil, when nil uses Config.provider as the provider for the applying phase
    -- claude = {
    --   endpoint = "https://api.anthropic.com",
    --   model = "claude-3-7-sonnet-20250219",
    --   timeout = 30000, -- timeout in milliseconds
    --   temperature = 0,
    --   max_tokens = 4096,
    -- },
    gemini = {
      endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
      model = "gemini-2.5-pro-exp-03-25",
      timeout = 30000, -- timeout in milliseconds
      temperature = 0,
      max_tokens = 40960,
    },
  },
  suggestion = {
    debounce = 600,
    throttle = 600,
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    -- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    -- "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
