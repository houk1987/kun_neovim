local cmp =require 'cmp'
local preset=cmp.mapping.preset
local luasnip=require("luasnip")
local types = require "cmp.types"
local presetvalue={
	["<C-k>"] = cmp.mapping(
        cmp.mapping.select_prev_item { behavior = types.cmp.SelectBehavior.Select },
        { "i", "c" }
      ),
	["<C-j>"] = cmp.mapping(
        cmp.mapping.select_next_item { behavior = types.cmp.SelectBehavior.Select },
        { "i", "c" }
      ),
	  ["<CR>"] = cmp.mapping.confirm { select = true },
	  ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
}
local snippet={
	expand = function(args)
		luasnip.lsp_expand(args.body)
    end,
}

local sources={
	{ name = 'nvim_lsp' },
	{ name = 'vsnip' },
}

cmp.setup({
	snippet=snippet,
	sources = cmp.config.sources(
		sources
	),
	mapping=preset.insert(
		presetvalue
	)
})
