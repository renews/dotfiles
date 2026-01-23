-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
local opt = vim.opt

opt.splitkeep = "cursor" -- default: screen, keep cursor position when splitting windows
opt.shell = "fish" -- default: sh, set shell to fish
opt.backspace = { "start", "eol", "indent" } -- default: "", allow backspacing over everything in insert mode
opt.path:append({ "**" }) -- Finding files - Search down into subfolders
opt.wildignore:append({ "*/node_modules/*", "*/_build/*", "*/deps/*" }) -- Ignore this folders always
opt.scrolloff = 6 -- Lines of context

-- Highlight the 120th columns
opt.colorcolumn = "120"
vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])
