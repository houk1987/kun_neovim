return{
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},

	{
		"houk1987/lualine.nvim",
		dependencies={
			'nvim-tree/nvim-web-devicons'
		},
		config = true
	},

	{
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	  config = function()
		  vim.cmd[[colorscheme tokyonight-storm]]
	  end
	}

}
