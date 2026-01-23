-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- buffers
map("n", "<C-q>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- CodeCompanion
-- map("n", "<Leader>ac", "<cmd>CodeCompanionActions<cr>", opts)
-- map("v", "<C-c>", "<cmd>CodeCompanionActions<cr>", opts)
-- map("n", "<Leader>a", "<cmd>CodeCompanionChat Toggle<cr>", opts)
-- map("v", "<Leader>a", "<cmd>CodeCompanionChat Toggle<cr>", opts)
-- map("v", "ga", "<cmd>CodeCompanionChat Add<cr>", opts)
--
-- -- Expand 'cc' into 'CodeCompanion' in the command line
-- vim.cmd([[cab cc CodeCompanion]])

-- Overseer
map("n", "<leader>Ow", "<cmd>OverseerToggle<cr>", { desc = "Task list" })
map("n", "<leader>Oo", "<cmd>OverseerRun<cr>", { desc = "Run task" })
map("n", "<leader>Oq", "<cmd>OverseerQuickAction<cr>", { desc = "Action recent task" })
map("n", "<leader>Oi", "<cmd>OverseerInfo<cr>", { desc = "Overseer Info" })
map("n", "<leader>Ob", "<cmd>OverseerBuild<cr>", { desc = "Task builder" })
map("n", "<leader>Ot", "<cmd>OverseerTaskAction<cr>", { desc = "Task action" })
map("n", "<leader>Oc", "<cmd>OverseerClearCache<cr>", { desc = "Clear cache" })

-- Dial
map("n", "<C-a>", function()
  require("dial.map").manipulate("increment", "normal")
end, { desc = "Dial increment" })
map("n", "<C-x>", function()
  require("dial.map").manipulate("decrement", "normal")
end, { desc = "Dial decrement" })
map("n", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gnormal")
end, { desc = "Dial g-increment" })
map("n", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gnormal")
end, { desc = "Dial g-decrement" })
map("v", "<C-a>", function()
  require("dial.map").manipulate("increment", "visual")
end, { desc = "Dial increment" })
map("v", "<C-x>", function()
  require("dial.map").manipulate("decrement", "visual")
end, { desc = "Dial decrement" })
map("v", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gvisual")
end, { desc = "Dial g-increment" })
map("v", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gvisual")
end, { desc = "Dial g-decrement" })

map("n", "<Leader>bu", "<Cmd>UrlView<CR>", { desc = "View buffer URLs" })

-- Delete a word backwards
map("n", "dwb", 'vb"_d')

-- Select all
map("n", "<Leader>CA", "gg<S-v>G", { desc = "Select all text" })

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- My custom scripts
local utilities = require("coder.utilities")

map("n", "<Leader>fp", function()
  utilities.copy_to_clipboard()
end, { desc = "Copy relative path" })

map("n", "<Leader>fP", function()
  utilities.copy_to_clipboard(true)
end, { desc = "Copy path with line number" })

map("n", "<Leader>fd", function()
  utilities.copy_buffer_directory_to_clipboard()
end, { desc = "Copy file directory" })

-- Color conversion magic
map("n", "<leader>r", function()
  utilities.replace_hex_with_HSL()
end, { desc = "Replace hex with HSL" })
