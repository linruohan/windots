
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @theniceboy


set laststatus=2
set backspace=2
set t_Co=256
syntax on


" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
"set clipboard=unnamedplus
let &t_ut=''
set autochdir
colorscheme snazzy
" ===
" === Editor behavior
" ===
set exrc
set laststatus=2
set secure
set number
"set relativenumber
set cursorline
set hidden
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set nolist
"set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
"set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p /c/Users/Administrator/.config/nvim/tmp/backup
silent !mkdir -p /c/Users/Administrator/.config/nvim/tmp/undo
"silent !mkdir -p /c/Users/Administrator/.config/nvim/tmp/sessions
set backupdir=/c/Users/Administrator/.config/nvim/tmp/backup,.
set directory=/c/Users/Administrator/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=/c/Users/Administrator/.config/nvim/tmp/undo,.
endif
set colorcolumn=100
set updatetime=100
set virtualedit=block

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
"autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
let mapleader=";"
noremap ; :

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e /c/Users/Administrator/.vimrc<CR>
noremap <LEADER>rv :e /c/Users/Administrator/.vimrc<CR>

" Undo operations
"noremap l u
" Insert Key
noremap k i
noremap K I
" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <silent> <LEADER>o za

" Open up lazygit
noremap \g :Git 
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>
" nnoremap <c-n> :tabe<CR>:-tabmove<CR>:term lazynpm<CR>


" ===
" === Cursor Movement
" ===
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     u
" < n   i >
"     e
"     v
" noremap <silent> u k
" noremap <silent> n h
" noremap <silent> e j
" noremap <silent> i l
" noremap <silent> gu gk
" noremap <silent> ge gj
" noremap <silent> \v v$h

" U/E keys for 5 times u/e (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j

" N key: go to the start of the line
noremap <silent> N 0
" I key: go to the end of the line
noremap <silent> I $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" set h (same as n, cursor left) to 'end of word'
noremap h e

" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-U> 5<C-y>
noremap <C-E> 5<C-e>



" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A
inoremap jk <ESC>

" ===
" === Command Mode Cursor Movement
" ===
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>


" ===
" === Searching
" ===
noremap - N
noremap = n


" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
"noremap <LEADER>w <C-w>w
"noremap <LEADER>u <C-w>k
"noremap <LEADER>e <C-w>j
"noremap <LEADER>n <C-w>h
"noremap <LEADER>i <C-w>l

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
"noremap <up> :res +5<CR>
"noremap <down> :res -5<CR>
"noremap <left> :vertical resize-5<CR>
"noremap <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>




" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of /c/Users/Administrator)
noremap ` /c/Users/Administrator

noremap <C-c> zz

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap tx :r !figlet 

" find and replace
noremap \s :%s//g<left><left>

" set wrap
noremap <LEADER>sw :set wrap<CR>

" press f10 to show hlgroup
function! SynGroup()
	let l:s = synID(line('.'), col('.'), 1)
	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
map <F10> :call SynGroup()<CR>

" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc




" ===================== End of Plugin Settings =====================


" ===
" === Necessary Commands to Execute
" ===
exec "nohlsearch"





"=========================
" 这里嘛。。是用来一键编译代码的
" ===========================
noremap <A-r> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    set splitbelow
    exec "!g++ -std=c++11 % -Wall -o %<"
    :sp
    :res -10
    :term ./%<
    exec "!rm -rf ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'html'
    silent! exec "!" google-chrome-stable " % &"
  elseif &filetype == 'markdown'
    exec "InstantMarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'dart'
    exec "CocCommand flutter.run -d ".g:flutter_default_device
    CocCommand flutter.dev.openDevLog
  elseif &filetype == 'javascript'
    set splitbelow
    :sp
    :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run .
  endif
endfunc

"每次创建C++文件都会初始化一些内容
autocmd BufNewFile *.cpp exec ":call CppInit()"
func CppInit()
  if expand("%:e") == "cpp"
    call setline(1,"/*")
    call setline(2,"*******************************************************************")
    call setline(3,"Author:                KyleJKC")
    call setline(4,"Date:                  ".strftime("%Y-%m-%d"))
    call setline(5,"FileName：             ".expand("%"))
    call setline(6,"Copyright (C):         ".strftime("%Y")." All rights reserved")
    call setline(7,"*******************************************************************")
    call setline(8,"*/")
    call setline(9,"#include<iostream>")
    call setline(10,"")
    call setline(11,"int main(int argc, const char *argv[]){")
    call setline(12,"")
    call setline(13,"  return 0;")
    call setline(14,"}")
  endif
endfunc

autocmd BufNewFile * normal G'



" ============vimscript学习========================

noremap <expr>s col(".")==1?"$":"0"
vnoremap <expr>s col(".")==1?"$h":"0"
" 空格选中单独的字符(当大于10列后viW)
noremap <expr><space> Test()
function! Test()
	if col(".") > 10
		return "viw"
	endif
	return "viW"
endfunction
autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc>i
autocmd FileType python     nnoremap <buffer> <leader>c I#<esc>i
" 向下查找()删除里面的内容并编辑
onoremap in( :<c-u>normal! f(vi(<cr>

" 向上查找()删除里面的内容并编辑
onoremap il( :<c-u>normal! F)vi(<cr>

" cih。Vim会删除光标所在章节的标题，然后保持在插入模式，这可以称为"修改所在的标题(change inside heading)"。
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
" cah试试看。删除标题和相连的等号组成的行。movement当作是“_环绕_这一节的标题(around this section's heading)“。
onoremap ah :<c-u>execute "normal! ?^==\\+\r:nohlsearch\rg_vk0"<cr>

"它在当前行的末尾补上一个分号并保持光标不动
nnoremap <c-i> :<c-u>execute "normal! mqA;\<esc>'q"

nnoremap <leader>N :setlocal number!<cr>
nnoremap <c-u> ve~



"Vimscript Study 3
" Loop in Vimscript
" ----------------------
" → while( condition )
"   ⇒ content
" → endwhile
" ----------------------
" → for item in list
"   ⇒ content
" → endfor
" ----------------------
" ⒈ printf(formal string,vargs)
" ☞ formal string input
"--------------------------
" ⒉ add(list,obj)
" ☞ add a item to list
"--------------------------
"example:>
""int j=0;printf("the char ( code is 40")
""#include <sys/types.h>
""if ((n=atoi(getchar()))>=atoi("123"))
"⒈ 
"" ..(.."xxxx(xxxx"....)...
"" --^------↑----------^---
"⒉ 
"" .."xxxxxxxx(xxx)xxx"....
"" -----------^---^--------
noremap <expr><space> ParentheseMatch()
function! ParentheseMatch()
  let buf=getline(".")
  let f1=0
  let f2=0
  let p1=0
  let p2=0
  let n=0
  let qlist=[]
  while 1
    let c=buf[n]
    if c is ''
      break
    endif
    if c is '"'
      let f1+=1
      if f1%2==0
        call add(qlist,p1)
        call add(qlist,n)
        "xxxx'xx"
        if p2>p1
          let f2=0
        endif
      endif
      let p1=n
    elseif c is "'"
      let f2+=1
      if f2%2==0
        call add(qlist,p2)
        call add(qlist,n)
        if p1>p2
          let f1=0
        endif
      endif
      let p2=n
    endif
    let n+=1
  endwhile
  let md=mode()
  if md is# 'v'
    let mf=''
    let oft=1
  elseif md is# 'n'
    let mf='v'
    let oft=0
  else
    return ''
  endif
  let bpos=col("v")-1
  let epos=col(".")-1
  let endl=col("$")-2
  let f1=0
  let f2=0
  let f3=0
  let f4=0
  let n=oft
  while bpos-n>=0
    let c=buf[bpos-n]
    if c is ')' && n>0
      let f1-=1
    elseif c is '('
      let f1+=1
      "(()xxxx(()))
      "()
      "()
      if f1==1
        let m=oft
        while m+epos<=endl
          let s=buf[m+epos]
          if s is '(' && m>0
            let f1+=1
          elseif s is ')'
            let f1-=1
            if f1==0
              if m==0
                return printf("v%dho",n)
              elseif n==0
                return printf("v%dl",m)
              else
                return printf(mf."%dlo%dho",m,n)
              endif
            endif
          elseif s is '"' || s is "'"
            let k=0
            for item in qlist
              if epos+m==item
                if k%2
                  return printf(mf."%dlo%dho",item-epos,bpos-qlist[k-1])
                else
                  let m+=qlist[k+1]-item
                endif
                break
              endif
              let k+=1
            endfor
          endif
          let m+=1
        endwhile
      endif
    elseif c is '"' || c is "'"
      if n==0
        let k=0
        for item in qlist
          if epos==item
            if k%2
              return printf("v%dho",epos-qlist[k-1])
            else
              return printf("v%dl",qlist[k+1]-epos)
            endif
          endif
          let k+=1
        endfor
      else
        let k=0
        for item in qlist
          if bpos-n==item
            if k%2
              let n+=item-qlist[k-1]
            else
              return printf(mf."%dlo%dho",qlist[k+1]-epos,bpos-item)
            endif
            break
          endif
          let k+=1
        endfor
      endif
    endif
    let n+=1
  endwhile
  return ''
endfunction
