
return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("code_runner").setup({
        mode = "toggleterm",
        filetype = {
          python = "python3 -u",
          c = "gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          cpp = "g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          java = "javac $fileName && java $fileNameWithoutExt",
          javascript = "node $fileName",
          typescript = "ts-node $fileName",
          go = "go run $fileName",
          rust = "rustc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          ruby = "ruby $fileName",
          bash = "bash $fileName",
          sh = "bash $fileName",
        },
        term = {
          position = "float",
          size = 15,
        },
        runner = {
          start_insert = true,
          focus = true,
        }
      })

      vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>rf', ':RunFiletype<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = true })
    end
  }
}
