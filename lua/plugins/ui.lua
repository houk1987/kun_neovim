return{
	{
	  "folke/tokyonight.nvim",
	  dependencies={
		'akinsho/bufferline.nvim',
		'nvim-tree/nvim-web-devicons',
		"houk1987/lualine.nvim",
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
	  },
	  lazy = false,
	  priority = 1000,
	  opts = {},
	  config = function()
		  vim.cmd[[colorscheme tokyonight-storm]]
		  vim.opt.termguicolors = true
		  require("lualine").setup()
		  require("bufferline").setup{}
		  require("ibl").setup()
	  end
	},
}
