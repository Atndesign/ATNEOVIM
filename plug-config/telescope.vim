nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>

lua << EOF 
  require('telescope').setup{ 
    defaults = { 
      file_ignore_patterns = {"node_modules"} 
    } 
  }
