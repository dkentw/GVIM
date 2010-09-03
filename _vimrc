set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

<<<<<<< HEAD
=======
"<my settings>
>>>>>>> 6605b6be90f43c34fb13b6437c8f22c4c9c0c4f6
:colorscheme ir_black
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
<<<<<<< HEAD
set guifont=Monaco:h12
set foldmethod=marker
nmap<leader>e :NERDTreeToggle<CR>
=======
set guifont=Monaco:h10
set foldmethod=marker
nmap<leader>e :NERDTreeToggle<CR>

set autoindent
>>>>>>> 6605b6be90f43c34fb13b6437c8f22c4c9c0c4f6