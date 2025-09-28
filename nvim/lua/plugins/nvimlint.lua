vim.env.PATH = vim.env.HOME .. "/.venvs/nvim-lint/bin:" .. vim.env.PATH

return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      lua = { "luacheck" },
      javascript = { "eslint" },
      typescript = { "eslint" }, 
python = { "pylint" },
      java = { "checkstyle" },
      sh = { "shellcheck" },
      -- Add more filetypes and linters as needed
    }

    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
