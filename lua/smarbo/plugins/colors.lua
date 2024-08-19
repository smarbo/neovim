return {
	"glepnir/zephyr-nvim",
	init = function ()
    vim.cmd.colorscheme("zephyr")
		vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
	end
}
