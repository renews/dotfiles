-- ###########################################################
-- ### Copy file path with or without line number to clipboard
-- ###########################################################

local M = {}

-- Copy relative path of current file to clipboard
function M.copy_to_clipboard(has_current_line)
  local current_file_name = vim.fn.expand("%")
  local relative_path = vim.fn.fnamemodify(current_file_name, ":.")

  if has_current_line then
    relative_path = relative_path .. ":" .. vim.fn.line(".")
  end

  vim.fn.setreg("+", relative_path)

  local message = has_current_line and "Copied with line: " or "Copied path: "
  vim.notify(message .. relative_path, vim.log.levels.INFO)
end

-- Copy absolute directory of current file to clipboard
function M.copy_buffer_directory_to_clipboard()
  local buffer_directory = vim.fn.expand("%:p:h")

  if buffer_directory == "" then
    vim.notify("No file directory to copy", vim.log.levels.WARN)
    return
  end

  vim.fn.setreg("+", buffer_directory)
  vim.notify("Copied directory: " .. buffer_directory, vim.log.levels.INFO)
end

-- Helper functions for table manipulation
function M.shallow_copy(t)
  local copy = {}
  for k, v in pairs(t) do
    copy[k] = v
  end
  return copy
end

function M.shallow_merge(table_1st, table_2nd)
  local result = M.shallow_copy(table_1st)
  for k, v in pairs(table_2nd) do
    result[k] = v
  end
  return result
end

-- ###########################################################
-- ### Convert hex colors to HSL
-- ###########################################################
function M.hex_to_HSL(hex)
  -- Your existing color conversion functions here
  local rgb = M.hex_to_rgb(hex)
  local h, s, l = M.rgb_to_hsl(rgb[1], rgb[2], rgb[3])
  return string.format("hsl(%d, %d%%, %d%%)", math.floor(h + 0.5), math.floor(s + 0.5), math.floor(l + 0.5))
end

function M.replace_hex_with_HSL()
  local line_number = vim.api.nvim_win_get_cursor(0)[1]
  local line_content = vim.api.nvim_buf_get_lines(0, line_number - 1, line_number, false)[1]

  -- Find and replace hex codes
  for hex in line_content:gmatch("#[0-9a-fA-F]+") do
    local hsl = M.hex_to_HSL(hex)
    line_content = line_content:gsub(hex, hsl)
  end

  vim.api.nvim_buf_set_lines(0, line_number - 1, line_number, false, { line_content })
end

return M
