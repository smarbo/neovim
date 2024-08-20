return {
  "nvim-telescope/telescope-file-browser.nvim",
  config = function ()
    require("telescope").load_extension("file_browser")
    vim.keymap.set("n", "<C-n>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
  end
}
