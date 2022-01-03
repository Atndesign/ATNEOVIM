source $HOME/.config/nvim/vim-plug/plug.vim
source $HOME/.config/nvim/settings/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/lualine.rc.lua
" source $HOME/.config/nvim/plug-config/onedark.vim
source $HOME/.config/nvim/plug-config/project-start.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim

" -------- Clipboard ---------
set clipboard=unnamed
set clipboard=unnamedplus

" --------- THEME --------
colorscheme dracula
syntax on
set termguicolors

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif


hi Normal guibg=NONE ctermbg=NONE
"Draculass
" show the '~' characters after the end of buffers
let g:dracula_show_end_of_buffer = 1
" use transparent background
let g:dracula_transparent_bg = 1
" set custom lualine background color
let g:dracula_lualine_bg_color = "#44475a"
let g:dracula_colorterm = 0
" ------- EMMMET CONF ---------

let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key=','    "enable all function in all mode.


" ---------- TREESITTER ------------ 

lua <<EOF
require('nvim-treesitter.install').compilers = { "gcc" }
EOF
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages"
  ignore_install = {"teal","godot_resource", "swift","gdscript","d", "devicetree", "ocamllex"},
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
}
EOF

