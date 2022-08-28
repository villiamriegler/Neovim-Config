local t = require('telescope')

t.setup {
    extensions = {
        file_browser = {
            hijack_netrw = true
        }
    }
}

t.load_extension 'file_browser'
