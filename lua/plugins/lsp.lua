return {
	'neovim/nvim-lspconfig',
	dependencies={
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim'
	},
	
	config = function()
		local servers= {
			lua_ls={},
			pyright={},
		}
		require("mason").setup({
		})
		require("mason-lspconfig").setup({
			ensure_installed = vim.tbl_keys(servers),
			handlers={
				function(server_name)
					require("lspconfig")[server_name].setup{
						settings = servers[server_name]
					}
				end
			}

		})
	end
}
