local M={
	"windwp/nvim-autopairs",
}

M.config = function ()
	require("nvim-autopairs").setup{
		map_char = {
			all="(",
			tex="{",
		}
	}
end
return M;
