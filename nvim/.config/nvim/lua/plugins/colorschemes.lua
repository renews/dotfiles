return {
  { "tahayvr/matteblack.nvim", lazy = false, priority = 1000 },
  { "rebelot/kanagawa.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
      borderless_pickers = true,
      italic_comments = true,
      transparent = true,
    },
  },
}
