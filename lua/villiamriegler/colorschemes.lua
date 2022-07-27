vim.o.background = "dark"

local statusOK, gruvbox = pcall(require, "gruvbox")
if not statusOK then 
    vim.notify("Gruvbox could not be loaded")
    return 
end


-- setup for Gruvbox 
gruvbox.setup({
  overrides = {},
})

vim.cmd("colorscheme gruvbox")
