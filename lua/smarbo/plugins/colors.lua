return {
  "luisiacc/gruvbox-baby",
  init = function()
    vim.cmd.colorscheme("gruvbox-baby")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
}
