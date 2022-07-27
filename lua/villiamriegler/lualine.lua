local statusOK, lualine = pcall(require, "lualine")
if not statusOK then 
    return
end

lualine.setup()
