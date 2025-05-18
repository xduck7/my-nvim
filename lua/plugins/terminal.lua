return 
{
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = true,

		config = function()
			require('toggleterm').setup({
				direction = "float",
				open_mapping = [[<leader>t]],
			})

			function _G.set_terminal_keymaps()
			  local opts = {buffer = 0}
			  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
			  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
			  vim.keymap.set('t', '<s-h>', [[<Cmd>wincmd h<CR>]], opts)
			  vim.keymap.set('t', '<s-j>', [[<Cmd>wincmd j<CR>]], opts)
			  vim.keymap.set('t', '<s-k>', [[<Cmd>wincmd k<CR>]], opts)
			  vim.keymap.set('t', '<s-l>', [[<Cmd>wincmd l<CR>]], opts)
			  vim.keymap.set('t', '<s-w>', [[<C-\><C-n><C-w>]], opts)
			  vim.keymap.set('t', '<C-c>', [[<C-c><C-\><C-i>]], opts)
			end
			vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
		end
	}
}

