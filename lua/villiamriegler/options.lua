-- This file contains standard vim options 

vim.opt.clipboard = 'unnamedplus'               -- Enables use of system clipboard without registers
vim.opt.mouse = 'a' 		                    -- Enables use of mouse
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                 
vim.opt.showtabline = 1                         -- show tabs more than 2, (if value = 2 -> always shows)
vim.opt.smartcase = true                        
vim.opt.smartindent = true                      
vim.opt.autoindent = true                       
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4                             -- insert 4 spaces for a tab
vim.opt.softtabstop = 4                         
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- set relative numbered lines
vim.opt.numberwidth = 4                         
--vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           
vim.opt.sidescrolloff = 8
vim.opt.confirm = true                          -- asking to save on :q error instead of throwing error
