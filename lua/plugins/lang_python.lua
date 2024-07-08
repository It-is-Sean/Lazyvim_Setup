return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          enabled = true,
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
          },
        },
        pyright = {
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end,
          },
        },
        ruff_lsp = {
          enabled = false,
        },
        black = {
          enabled = false,
        },
      },
    },
  },
}
