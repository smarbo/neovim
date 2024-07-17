return {{
    'nvim-telescope/telescope.nvim', tag = '-1.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
  end
}, {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function ()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {require("telescope.themes").get_dropdown {}}
        },
        file_ignore_patterns = {
          "./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*"
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }}
