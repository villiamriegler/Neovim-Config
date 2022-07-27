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
    

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
    require("packer").sync()
  end
end)
