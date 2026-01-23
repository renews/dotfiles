return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        groups = {
          options = {
            toggle_hidden_on_enter = true, -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
          },
          items = {
            {
              name = "Tests", -- Mandatory
              highlight = { underline = true, sp = "green" }, -- Optional
              priority = 2, -- determines where it will appear relative to other groups (Optional)
              icon = " ", -- Optional
              matcher = function(buf) -- Mandatory
                if not buf.filename then
                  return false
                end
                return buf.filename:match("%_test") or buf.filename:match("%_spec")
              end,
            },
            {
              name = "Docs",
              highlight = { undercurl = true, sp = "blue" },
              auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
              matcher = function(buf)
                if not buf.filename then
                  return false
                end
                return buf.filename:match("%.md") or buf.filename:match("%.txt") or buf.filename:match("%.neorg")
              end,
              separator = { -- Optional
                style = require("bufferline.groups").separator.tab,
              },
            },
          },
        },
      },
    },
  },
}
