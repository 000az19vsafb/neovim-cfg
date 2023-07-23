-- Normal mode bindings
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':q<CR>', { noremap = true })

-- Inset mode bindings
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w<CR>i', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-x>', '<ESC>:q<CR>', { noremap = true })

-- hand up down sel
vim.api.nvim_set_keymap(
  'n',
  '<S-Up>',
  ':<C-u>execute "normal! " . (v:count1 ? v:count1 : 1) . "k"<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<S-Down>',
  ':<C-u>execute "normal! " . (v:count1 ? v:count1 : 1) . "j"<CR>',
  { noremap = true, silent = true }
)

-- Shift+Arrow keys to enter visual mode and move the selection
vim.api.nvim_set_keymap('n', '<S-Up>', 'v<Up>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Down>', 'v<Down>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Left>', 'v<Left>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Right>', 'v<Right>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Up>', '<Esc>v<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Down>', '<Esc>v<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Left>', '<Esc>v<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-Right>', '<Esc>v<Right>', { noremap = true })

-- Shift+Arrow keys to just move the selection when in visual mode
vim.api.nvim_set_keymap('v', '<S-Up>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Down>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Left>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Right>', '<Right>', { noremap = true })

-- Arrow keys in visual mode to enter insert mode and move the cursor
vim.api.nvim_set_keymap('v', '<Up>', '<Esc>i<Up>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Down>', '<Esc>i<Down>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Left>', '<Esc>i<Left>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Right>', '<Esc>i<Right>', { noremap = true })

-- Make Ctrl+C work as expected in insert and visual mode (Copy selected text)
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>"+yi', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+yi', { noremap = true })

-- Make Ctrl+V work as expected in insert and visual mode (Paste copied text)
vim.api.nvim_set_keymap('i', '<C-v>', '<Esc>"+pi', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-v>', '"+pi', { noremap = true })

-- In visual mode, backspace and delete remove the contents without copying to clipboard
vim.api.nvim_set_keymap('v', '<BS>', '"_d', { noremap = true })
vim.api.nvim_set_keymap('v', '<Del>', '"_d', { noremap = true })

-- In visual mode, Ctrl+X cuts the selected text to the clipboard
vim.api.nvim_set_keymap('v', '<C-x>', '"+x', { noremap = true })

-- Shift+Home to select from cursor to the beginning of the line
vim.api.nvim_set_keymap('i', '<S-Home>', '<Esc>v^V`', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Home>', '<Esc>^V`', { noremap = true })

-- Shift+End to select from cursor to the end of the line
vim.api.nvim_set_keymap('i', '<S-End>', '<Esc>v$V`', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-End>', '<Esc>$V`gv', { noremap = true })

-- Map Ctrl+A to select all in normal and visual mode
vim.api.nvim_set_keymap('n', '<C-A>', 'ggVG', { noremap = true })

-- Map Ctrl+A to enter visual mode and select all in insert mode
vim.api.nvim_set_keymap('i', '<C-A>', '<Esc>ggVGv', { noremap = true })

-- Indent and un-indent in visual mode using Tab, Ctrl+], and Ctrl+[
vim.api.nvim_set_keymap('i', '<Tab>', '<C-t>', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-]>', '<Esc>v>gi<Right><Right>', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-[>', '<Esc>v<gi<Left><Left>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-]>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-[>', '<gv', { noremap = true })

-- Shift+Del to delete the next word
vim.api.nvim_set_keymap('n', '<C-Del>', 'dw', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-Del>', 'd', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-Del>', '<C-O>dw', { noremap = true })

-- Shift+Backspace to delete the previous word
vim.api.nvim_set_keymap('n', '<C-BS>', 'db', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-BS>', 'd', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', { noremap = true })

------------------------------------

vim.api.nvim_set_keymap('n', '<F1>', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', '<F1>', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('v', '<F1>', '<Esc>', { noremap = true })

------------------------------------

vim.api.nvim_set_keymap('n', '<F2>', '<Esc>:Neotree focus<cr>', { noremap = true })
vim.api.nvim_set_keymap('i', '<F2>', '<Esc>:Neotree focus<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<F2>', '<Esc>:Neotree focus<cr>', { noremap = true })
------------------------------------

vim.api.nvim_set_keymap('n', '<F3>', '<Esc>:vsplit term://zsh<cr>i', { noremap = true })
vim.api.nvim_set_keymap('i', '<F3>', '<Esc>:vsplit term://zsh<cr>i', { noremap = true })
vim.api.nvim_set_keymap('v', '<F3>', '<Esc>:vsplit term://zsh<cr>i', { noremap = true })

------------------------------------

local is_commented = function(line)
  return line:match '^%s*//[^\n]*$' or line:match '^%s*<!--[^>]*$' or line:match '^%s*%-%-[^%-%-]*$'
end

toggle_comments = function(isVisual)
  local filetype = vim.bo.filetype

  if isVisual then
    local start_line, start_col, end_line, end_col = unpack(vim.fn.getpos '\'<')
    local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)

    for i, line in ipairs(lines) do
      if filetype == 'javascript' or filetype == 'typescript' or filetype == 'svelte' then
        if is_commented(line) then
          lines[i] = line:gsub('^%s*//%s*', '')
        else
          lines[i] = '// ' .. line
        end
      elseif filetype == 'html' or filetype == 'xml' then
        if is_commented(line) then
          lines[i] = line:gsub('^%s*<!--%s*', '')
        else
          lines[i] = '<!-- ' .. line
        end
      elseif filetype == 'lua' then
        if is_commented(line) then
          lines[i] = line:gsub('^%s*%-%-%s*', '')
        else
          lines[i] = '-- ' .. line
        end
      elseif filetype == 'bash' or filetype == 'sh' then
        if is_commented(line) then
          lines[i] = line:gsub('^%s*#%s*', '')
        else
          lines[i] = '# ' .. line
        end
      end
    end

    vim.api.nvim_buf_set_lines(0, start_line - 1, end_line, false, lines)
  else
    local line_number = vim.fn.line '.'
    local lines = vim.api.nvim_buf_get_lines(0, line_number - 1, line_number, false)

    if filetype == 'javascript' or filetype == 'typescript' or filetype == 'svelte' then
      local line = lines[1]
      if is_commented(line) then
        line = line:gsub('^%s*//%s*', '')
      else
        line = '// ' .. line
      end
      vim.api.nvim_buf_set_lines(0, line_number - 1, line_number, false, { line })
    elseif filetype == 'html' or filetype == 'xml' then
      local line = lines[1]
      if is_commented(line) then
        line = line:gsub('^%s*<!--%s*', '')
      else
        line = '<!-- ' .. line
      end
      vim.api.nvim_buf_set_lines(0, line_number - 1, line_number, false, { line })
    elseif filetype == 'lua' then
      local line = lines[1]
      if is_commented(line) then
        line = line:gsub('^%s*%-%-%s*', '')
      else
        line = '-- ' .. line
      end
      vim.api.nvim_buf_set_lines(0, line_number - 1, line_number, false, { line })
    elseif filetype == 'bash' or filetype == 'zsh' or filetype == 'sh' then
      local line = lines[1]
      if is_commented(line) then
        line = line:gsub('^%s*#%s*', '')
      else
        line = '# ' .. line
      end
      vim.api.nvim_buf_set_lines(0, line_number - 1, line_number, false, { line })
    end
  end
end

-- Ctrl+/ to toggle comments in insert mode and visual mode
vim.api.nvim_set_keymap('i', '<C-_>', '<Esc>:lua toggle_comments(false)<CR>i', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-_>', '<Esc>:lua toggle_comments(true)<CR>v', { noremap = true })

------------------------------------

-- define common options
local opts = {
  noremap = true, -- non-recursive
  silent = true, -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
