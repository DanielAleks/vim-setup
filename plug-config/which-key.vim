
""""""""""""""""""""""""""""""""
" => vanilla vim
""""""""""""""""""""""""""""""""
let g:vanilla_vim_map = {}

let g:vanilla_vim_map.1 = {
      \'name' : 'buffers & tabs' ,
      \ ':bn, :bp' : [''     , 'switch between buffers']          ,
      \ 'Ctrl i,o' : [''     , 'go back/forward where cursor was']          ,
      \ ':bd, :bd!' : [''     , 'delete current buffer']          ,
      \ 'gt, gT' : [''     , 'switch tabs']          ,
      \ '<num>gt' : [''     , 'go to specific tab']          ,
      \ }

let g:vanilla_vim_map.2 = {
      \'name' : 'nav in file' ,
      \ 'gg , G' : [''     , 'go to top/bottom of file']          ,
\ 'ctrl u/d' : ['','scrolls up/down half a page'],
\ 'ctrl b/f' : ['','scrolls up/down a page'],
\ 'ctrl y/e' : ['','scroll but cursor in place'],
      \ '<C-p>' : [''     , 'fuzzy find']          ,
\ 'gr, gd' : ['','go to symbol definition'],
\ 'gD' : ['','find all instances of symbol'],
\ '*' : ['','go to next symbol'],
\ 's|S<chars>, t|T|f|F<char> (spam s|S to go next)' : ['','sneak navigation (primary method)'],
\ 'w,e b' : ['','jump by word'],
\ 'shift + ]/[' : ['','Jump to next/prev empty line'],
\ 'gf go' : ['','click on hyperlink and go back'],
\ 'n,N' : ['','jump to next/prev found item'],
      \ }

let g:vanilla_vim_map.3 = {
      \'name' : 'edit' ,
\ 'd,c,v{$|^}' : ['','from where at to end/beginning of line '],
      \ "{d/v/y/c}i ~ ',w,[,{,p,t"    : [""     , 'delete/select/yank/change inner word, {}, [], ", paragraph, tag' ]          ,
      \ 'shift d'                 : [''     , 'delete from where you are to the end']          ,
      \ ' d<num>j/k'                 : [''     , 'deleted from where u at to desired number']          ,
      \ '<leader> cc'             : [''     , 'comment out']          ,
      \ ':m .+<number>'           : [''     , 'move line up num']          ,
      \ ':m .-<number>'           : [''     , 'move line down num']          ,
      \ 'ctrl h'                     : [''     , '(i) delete letter']          ,
      \ 'ctrl w'                     : [''     , '(i) delete word']          ,
      \ 'o,O'                     : [''     , 'insert line above/below']          ,
      \'ctrl 6' : ['','jump back to prev file'],
\ 'ctrl y ,' : ['','activate emmet snippet'],
      \ }

let g:vanilla_vim_map.4 = {
      \'name' : 'meta' ,
      \ 'shift zz'                : [''     , 'save and quit']          ,
      \ 'ctrl w ⇒ +,-,<,>,_'      : [''     , 'window resizing (if 2+ open)']          ,
      \ 'space rv'                : [''     , 'restart vim']          ,
      \ '<C-\><C-n>'                     : [''     , 'close terminal']          ,
      \ ':e'                     : [''     , 'reopen file']          ,
\ ':mn' : ['','see all commands or plugins'],
      \ } 

let g:vanilla_vim_map.5 = {
      \'name' : 'nav files/dir' ,
      \ ':tabe <file>'            : [''     , 'Open another file']          ,
      \ 'cmd'                     : [''     , 'definition']          ,
      \ } 

let g:vanilla_vim_map.6 = {
      \'name' : 'window split' ,
      \ 'ctrl w => hjkl'          : [''     , 'navigate between windows']          ,
      \ 'ctrl w w'                     : [''     , 'navigate to next window']          ,
      \ 'ctrl w ⇒ {v/h}'                     : [''     , 'split vertical']          ,
      \ } 

let g:vanilla_vim_map.7 = {
      \'name' : 'VimWiki' ,
      \ } 

let g:vanilla_vim_map.8 = {
      \'name' : 'name' ,
      \ 'cmd'          : [''     , 'definition']          ,
      \ } 



""""""""""""""""""""""""""""""""
" => open which-key
""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader>l :<c-u>WhichKey!  g:vanilla_vim_map<CR>


