return {
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "go", "rust", "cpp" },
				   auto_install = true,
				   highlight = {
						enable = true,
				   },
			})
		end
	}
}
