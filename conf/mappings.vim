"KEY REMAPPING START
"MAP LEADER KEY
let g:mapleader="\<Space>"
"REMAPPING ESC INSERT MODE
inoremap kj <esc>
nnoremap <esc> :nohl<CR>
"REMAPPING AUTOCOMPLTE OPTIONS NAVIGATION
inoremap <A-j> <C-n>
inoremap <A-k> <C-p>
"NORMAL MODE MAP
nnoremap <A-h> _
nnoremap <A-l> $
vnoremap <A-h> _
vnoremap <A-l> $
vnoremap <leader>y "+y
"INSERT MODE MAPPINGS
inoremap <M-l> <right>
inoremap <M-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <M-a> <C-o>A
inoremap <M-i> <C-o>I
inoremap <M-o> <C-o>o<C-o>cc
"EMMET KEYS MAP
let g:user_emmet_leader_key=','
"TERMINAL HOT-KEYS
tnoremap kj <C-\><C-n>
"TABS REMAPPING
nmap <M-t> :tabnew<CR>:Dashboard<CR>
nmap <M-a> :tabprevious<CR>
nmap <M-d> :tabnext<CR>
"FUZZY FINDER MAPPINGS
"Window resize
nnoremap <leader>= :vertical resize +3<CR> 
nnoremap <leader>- :vertical resize -3<CR> 
nnoremap <leader>+ :resize +3<CR> 
nnoremap <leader>_ :resize -3<CR> 
"COLOR TOGGLE COMMAND
nnoremap Tc :ColorToggle<CR>
"BUFFERS MAPPING
function DeleteBuffers()
  let l:visible_buffers = {}
  for tabnr in range(1, tabpagenr('$'))
    for bufnr in tabpagebuflist(tabnr)
      let l:visible_buffers[bufnr] = 1
    endfor
  endfor
  for bufnr in range(1, bufnr('$'))
    if bufexists(bufnr) && !has_key(l:visible_buffers,bufnr)
      execute printf('bwipeout %d', bufnr)
    endif
  endfor
endfunction
nnoremap <leader>bd :bdelete <C-D>
"SESSION MANAGER
nnoremap <leader>sl :SessionLoad _<C-D>
nnoremap <leader>ss :SessionSave _<C-D>
"NEOFORMAT
nnoremap Ff :Neoformat<CR>
"EASYMOTION MAPPINGS
map ml <Plug>(easymotion-prefix)e
map mh <Plug>(easymotion-prefix)ge
map mj <Plug>(easymotion-prefix)j
map mk <Plug>(easymotion-prefix)k
map s <Plug>(easymotion-prefix)s

