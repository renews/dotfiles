return {
  "saghen/blink.cmp",
  dependencies = {
    {
      "mikavilpas/blink-ripgrep.nvim",
      version = "*", -- use the latest stable version
    },
  },
  opts = {
    sources = {
      default = {
        "lsp",
        "path",
        "snippets",
        "buffer",
        "ripgrep",
      },
      providers = {
        ripgrep = {
          module = "blink-ripgrep",
          name = "Ripgrep",
          -- see the full configuration below for all available options
          opts = {
            project_root_marker = { ".git", "package.json", ".root", "mix.exs" },
          },
        },
      },
    },
  },
}
