return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- "expert",
        "typescript-language-server",
        "css-lsp",
        "tailwindcss-language-server",
        "biome", -- Fast formatter/linter
        "ruby-lsp",
        "erlang-ls",
        "rubocop",
        "erb-lint",
        "erb-formatter",
      })
    end,
  },
}
