source $HOME/AppData/Local/nvim/vim-plug/plugins.vim
source $HOME/AppData/Local/nvim/plug-config/coc-config.vim
source $HOME/AppData/Local/nvim/plug-config/ctrlp-config.vim
source $HOME/AppData/Local/nvim/plug-config/sneak.vim
source $HOME/AppData/Local/nvim/plug-config/quickscope.vim
source $HOME/AppData/Local/nvim/plug-config/airline.vim
source $HOME/AppData/Local/nvim/plug-config/rnvimr.vim
source $HOME/AppData/Local/nvim/plug-config/treesitter.vim

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
"set cursorline
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>


let g:startify_session_dir = '~/.config/nvim/sessions'

" Theme
" let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox
set hlsearch
hi Normal guibg=NONE ctermbg=NONE
hi Search cterm=NONE ctermfg=black ctermbg=LightBlue
 "let g:lightline.colorscheme = 'default'
 let g:lightline = {'colorscheme': 'wombat' }
let g:airline_theme='transparent' "biogoo, wombat, transparent, minimalist, term, behilet, owo
"biogoo, grayscale, transparent
set termguicolors

" Commands
let mapleader = " "
let localmapleader = "."

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

command! Rl execute "source $MYVIMRC" " reload Vim
nnoremap <leader>rv :source $MYVIMRC<CR> 
command! Test123 execute ":CocCommand prettier.formatFile" " comment line
nnoremap <leader>g :redo<CR>
let test = "{}"
nnoremap <leader>d /test
nnoremap <C-s> gt
nnoremap <C-a> gT
command! Initf execute "e ~/AppData/Local/nvim/init.vim"
command! Plugf execute "e ~/AppData/Local/nvim/vim-plug/plugins.vim"
command! Codef execute "e ~/Documents/code"
command! Otherf execute "e ~/Documents/code/other"
command! Webf execute "e ~/Documents/code/websites"
command! Zshrc execute "e ~/.zshrc"
" prettier format on save
"command! -nargs=0 Prettier :CocCommand prettier.formatFile
":CocCommand prettier.formatFile





nnoremap <silent> . :WhichKey '<localleader>'<CR>

" Map leader to which_key
nnoremap <silent> <localleader> :silent WhichKey '<localleader>'<CR>
vnoremap <silent> <localleader> :silent <c-u> :silent WhichKeyVisual '<localleader>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler




" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")


 ""     let g:codi#interpreters = {
  ""                \ 'javascript': {
   ""                   \ 'bin': 'node',
    ""   \ 'prompt': '^\(>>>\|\.\.\.\) ',
      ""             \ },
       ""       \ }
" let g:codi#virtual_text=0
"nnoremap <leader>d /
"<CR> is Enter
"() [] {}

"let t:is_transparent = 0

"function! Toggle_transparent()
"    if t:is_transparent == 0
 "       hi Normal guibg=NONE ctermbg=NONE
  "      let t:is_transparent = 1
  "  else
 "       set background=dark
"        let t:is_tranparent = 0
"    endif
"endfunction
"nnoremap <C-t> : call Toggle_transparent()<CR>




" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)


" make into tabs
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'














