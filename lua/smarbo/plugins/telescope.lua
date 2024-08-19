return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  init = function ()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader> ", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "<leader>fp", function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
  end
}
