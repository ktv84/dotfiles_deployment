let PLUGIN_PATH = expand('~/.vim/autoload/plug.vim')

if has('vim_starting') && empty(glob(PLUGIN_PATH))
    silent execute '!curl -fLo ' . PLUGIN_PATH . ' --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Inform Plug that we start our plugin installation
call plug#begin('~/.vim/plugged')

" Git plugins
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

" colorschemes
Plug 'altercation/vim-colors-solarized'

" Utility
Plug 'terryma/vim-multiple-cursors'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'

" Ansible
Plug 'pearofducks/ansible-vim', { 'do': 'cd ./UltiSnips; python2 generate.py' }

" Markdown
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
