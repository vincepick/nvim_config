return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    vim.opt.list = true -- ← key line most people miss

    local highlight = {
      "RainbowCyan",
      "RainbowViolet",
      "RainbowGreen",
      "RainbowOrange",
      "RainbowBlue",
      "RainbowYellow",
      "RainbowRed",
    }

    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#56B6C2" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
      vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#98C379" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
      vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#61AFEF" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
      vim.api.nvim_set_hl(0, "RainbowRed",    { fg = "#E06C75" })
    end)

    require("ibl").setup {
      indent = { highlight = highlight },
      scope = { enabled = false }, -- disables scope lines so indent colors show clearly
    }
  end
}

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
