
return {
	{
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { { "rustfmt", lsp_fallback = true } },
        javascript = { "prettier" },
        typescript = { "prettier" },
		go = {"gofmt"},
      },
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        require("conform").format({ bufnr = args.buf })
      end,
    })
  end,
  },
}
