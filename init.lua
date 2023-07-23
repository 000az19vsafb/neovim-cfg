vim.cmd("autocmd VimEnter * startinsert")
vim.cmd("autocmd VimEnter * Neotree")

require("options")
require("keymaps")
require("plugins")
require("colorscheme")
require("lsp")
require("init-powerline")
