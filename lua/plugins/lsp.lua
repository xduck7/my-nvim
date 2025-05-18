return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
		lspconfig.gopls.setup({
		  root_dir = require('lspconfig.util').root_pattern('go.work', 'go.mod', '.git'),
		  settings = {
			gopls = {
			  analyses = {
				unusedparams = true,
			  },
			  staticcheck = true,
			},
		  },
		})

		vim.diagnostic.config({
  virtual_text = true,      -- Показывать ошибки справа от строки
  signs = true,             -- Отображать иконки в колонке слева
  underline = true,         -- Подчёркивать ошибочные места
  update_in_insert = false, -- Не обновлять во время набора (чтобы не мешало)
  severity_sort = true,     -- Критичные ошибки выше
})


      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          vim.keymap.set('n', '<leader>g', vim.lsp.buf.type_definition, opts)  -- Исправлено type_defenition -> type_definition
          vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts)
          vim.keymap.set({'n', 'v'}, '<leader>la', vim.lsp.buf.code_action, opts)  -- Исправлено 'y' на 'v' (visual mode)
          vim.keymap.set('n', '<leader>lf', function()
            vim.lsp.buf.format({ async = true })
          end, opts)
        end
      })
    end
  }, 
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "gopls" }
      })
    end
  }
}
