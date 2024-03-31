local function python_env()
	local conda_env = os.getenv("CONDA_DEFAULT_ENV")
	if conda_env then
		return "🅒 " .. conda_env
	else
		return ""
	end
end

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
                lualine_x = {'encoding', 'fileformat', 'filetype', python_env},
			},
		})
	end,
}
