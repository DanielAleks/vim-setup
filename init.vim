source $HOME/AppData/Local/nvim/vim-plug/plugins.vim
source $HOME/AppData/Local/nvim/plug-config/coc-config.vim
source $HOME/AppData/Local/nvim/plug-config/ctrlp-config.vim
source $HOME/AppData/Local/nvim/plug-config/sneak.vim
source $HOME/AppData/Local/nvim/plug-config/quickscope.vim
source $HOME/AppData/Local/nvim/plug-config/airline.vim
source $HOME/AppData/Local/nvim/plug-config/rnvimr.vim
source $HOME/AppData/Local/nvim/plug-config/treesitter.vim
source $HOME/AppData/Local/nvim/commands/main.vim

let g:python2_host_prog = 'C:/Python27'

set list
set expandtab
set number
set shiftwidth=2
set softtabstop=2
set relativenumber
set wildmenu
set smartcase " searches for upper and lower cased
set ignorecase " complements above line
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>


let g:startify_session_dir = '~/.config/nvim/sessions'


"""""""""""""""""""""""""""""""""""""""""""
" => Theme
""""""""""""""""""""""""""""""""""""""""""


" let g:gruvbox_contrast_dark='soft'
set termguicolors
"colorscheme base16-tomorrow-night
colorscheme spacegray
set hlsearch
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=transparent
" colors for sneak
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=pink ctermfg=red ctermbg=blue


 "let g:lightline.colorscheme = 'default'
 let g:lightline = {'colorscheme': 'wombat' }
let g:airline_theme='transparent' "biogoo, wombat, transparent, minimalist, term, behilet, owo  => biogoo, grayscale, transparent












