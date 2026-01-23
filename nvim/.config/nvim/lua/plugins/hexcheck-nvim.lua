-- return {
--   {
--     dir = "~/projects/hexcheck.nvim",
--   },
-- }
return {
  "renews/hexcheck.nvim",
  cmd = "HexCheck",
  opts = {
    highlight_color = "#8ec07c",
    italic = true,
    bold = false,
    message_prefix = "new version available ",
  },
}
