"kassio/neoterm
let g:neoterm_default_mod = "belowright"
let g:neoterm_size = 13
let g:neoterm_autoinsert = 0
let g:neoterm_autoscroll = 1
let g:neoterm_term_per_tab = 1
let g:neoterm_autojump = 1

"SNIPPETS
let g:UltiSnipsJumpForwardTrigger="<M-d>"
let g:UltiSnipsJumpBackwardTrigger="<M-a>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"

"FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

"VIMWIKI
autocmd BufWinEnter *.wiki hi VimwikiHeader1 guifg=#D16950 gui=bold
autocmd BufWinEnter *.wiki hi VimwikiHeader2 guifg=#E88D44 gui=bold
autocmd BufWinEnter *.wiki hi VimwikiHeader3 guifg=#BFC249 gui=bold
autocmd BufWinEnter *.wiki hi VimwikiHeader4 guifg=#916132 gui=bold
autocmd BufWinEnter *.wiki hi VimwikiLink guifg=#595CD7 gui=underline
let g:vimwiki_list = [{'path': '~/vimwiki/'}]

"AUTOSAVE
let g:auto_save = 1 

"AUTOPAIRS CONF
let g:AutoPairsFlyMode = 0

"INDENTLINE SETTINGS
let g:indentLine_bufNameExclude = ['_.*', '*.wiki', '*.md']
let g:indentLine_fileTypeExclude = ['vimwiki', 'markdown']
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'vimwiki', 'markdown']
let g:indentLine_concealcursor=""
let g:indentLine_conceallevel=1
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2

"NEOFORMATTER
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_javascript = ['jsbeautify']
let g:neoformat_enabled_css = ['cssbeautify']
let g:neoformat_enabled_python = ['black']

"DASHBOARD
let g:dashboard_default_executive ='fzf'
let g:dashboard_session_directory = '/home/maudev/.config/nvim/sessions'

let g:dashboard_custom_header = [
\'                                                        ',
\'___  ___           ______             ___________ _____ ', 
\'|  \/  |           |  _  \           |_   _|  _  \  ___| ', 
\'| .  . | __ _ _   _| | | |_____   __   | | | | | | |__  ', 
\'| |\/| |/ _` | | | | | | / _ \ \ / /   | | | | | |  __| ', 
\'| |  | | (_| | |_| | |/ /  __/\ V /   _| |_| |/ /| |___ ', 
\'\_|  |_/\__,_|\__,_|___/ \___| \_/    \___/|___/ \____/ ',
\'                                                        ',
\'                                                        ',] 

"FLOATERM
let g:floaterm_autoinsert = v:false
let g:floaterm_wintype = 'float'
let g:floaterm_position = 'bottomright'
let g:floaterm_height = 0.5
let g:floaterm_width = 0.5

"VISTA
let g:vista_default_executive = 'ctags'
let g:neoformat_php_php_beautifier = {
     \ 'exe': 'php_beautifier',
    \ 'args': ['--filters "NewLines(before=if:switch:T_CLASS,after=T_COMMENT:function)"']
    \ }
let g:neoformat_enabled_php = ['php_beautifier']

"COQ CONFIG
let g:coq_settings = {"auto_start": 'shut-up', "keymap.recommended": v:false, "keymap.pre_select": v:false, "clients.tabnine.enabled" : v:true}
ino <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
ino <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
ino <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
ino <silent><expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
ino <silent><expr> <M-j>   pumvisible() ? "\<C-n>" : "\<Tab>"
ino <silent><expr> <M-k> pumvisible() ? "\<C-p>" : "\<BS>"

"NVIM TREE
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }


