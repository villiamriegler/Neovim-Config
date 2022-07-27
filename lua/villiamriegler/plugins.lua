-- Bootstraping packer 
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Reloads neovim when this file is written
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Pcall packer
local statusOK, packer = pcall(require,"packer")
if not statusOK then 
    vim.notify("Packer could not be loaded")
    return 
end




-- Plugins go here 
return packer.startup(function(use)
     
    use "wbthomason/packer.nvim" -- Allowes packer to manage itself 

    -- Colorschemes (set up in colorschemes.lua)
    use "ellisonleao/gruvbox.nvim" 
    
    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Lsp
    use 'neovim/nvim-lspconfig' 
    use 'williamboman/nvim-lsp-installer'

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter",run = ":TSUpdate",}

    -- Autopairs
    use {"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end}

    -- NerdTree
    use 'preservim/nerdtree'

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
    require("packer").sync()
  end
end)
