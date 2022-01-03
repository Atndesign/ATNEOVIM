
call plug#begin("~/.vim/plugged")
  Plug 'Mofiqul/dracula.nvim'
  Plug 'joshdick/onedark.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'airblade/vim-rooter'
  Plug 'mattn/emmet-vim'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm install --frozen-lockfile'}
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'romgrk/barbar.nvim'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
call plug#end()
