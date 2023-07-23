-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies". 
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use 'tanvirtin/monokai.nvim'

    -- LSP
    use { 'neovim/nvim-lspconfig' }

    use({
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!:).
      run = "make install_jsregexp"
    })

    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim'}

    -- use {
    --   'nvim-tree/nvim-tree.lua',
    --   requires = {
    --     'nvim-tree/nvim-web-devicons', -- optional
    --   },
    -- }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          {
            -- only needed if you want to use the commands with "_with_window_picker" suffix
            's1n7ax/nvim-window-picker',
            tag = "v1.*",
            config = function()
              require'window-picker'.setup({
                autoselect_one = true,
                include_current = false,
                filter_rules = {
                  -- filter using buffer options
                  bo = {
                    -- if the file type is one of following, the window will be ignored
                    filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                    -- if the buffer type is one of following, the window will be ignored
                    buftype = { 'terminal', "quickfix" },
                  },
                },
                other_win_hl_color = '#e35e4f',
              })
            end,
          }
        },
        config = function ()
          -- If you want icons for diagnostic errors, you'll need to define them somewhere:
          vim.fn.sign_define("DiagnosticSignError",
            {text = " ", texthl = "DiagnosticSignError"})
          vim.fn.sign_define("DiagnosticSignWarn",
            {text = " ", texthl = "DiagnosticSignWarn"})
          vim.fn.sign_define("DiagnosticSignInfo",
            {text = " ", texthl = "DiagnosticSignInfo"})
          vim.fn.sign_define("DiagnosticSignHint",
            {text = "󰌵", texthl = "DiagnosticSignHint"})

          require("neo-tree").setup({
            close_if_last_window = true,
          })

          vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
        end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

