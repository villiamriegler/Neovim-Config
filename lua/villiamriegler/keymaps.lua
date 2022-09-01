-- This file sets useful keymappings 

-- Often used shorthands
local keymap = vim.api.nvim_set_keymap

local opt = { silent = true , noremap = true }
local silent = { silent = true }




-- ***********keymappings**************

keymap("", "<Space>", "<Nop>", opt)             -- remaps space to my leader key
vim.g.mapleader = " "


-- Modes
--      normal = "n"
--      insert = "i"
--      visual = "v"


-- Normal 
--inserting a new line 
keymap("n", "<Leader>o", "o<ESC>", opt)
keymap("n", "<Leader>O", "O<ESC>", opt)
keymap("n","<Leader>n", ":NERDTreeToggle<CR>", opt)

--Navigating buffers
keymap("n", "gn", ":bn<CR>",opt)
keymap("n", "gp", ":bp<CR>",opt)
keymap("n", "bc", ":NERDTreeClose | BufferClose<CR>",opt)




-- Insert
-- exit insert_mode fast
keymap("i", "jk", "<ESC>", opt)




-- Visual
-- keep indent mode
keymap("v", "<", "<gv", opt)
keymap("v", ">", ">gv", opt)
