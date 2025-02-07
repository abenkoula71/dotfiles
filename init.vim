
"   ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
"   ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
"   ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
"   ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
"   ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

                            " be iMproved, required

" Plugins {{{

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/plug')
Plug 'junegunn/vim-plug'

" Code completion {{{

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'antoinemadec/coc-fzf'

" Plug 'neovim/nvim-lspconfig'
" Plug 'glepnir/lspsaga.nvim'
" Plug 'hrsh7th/nvim-compe'

Plug 'wellle/tmux-complete.vim'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'liuchengxu/vista.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'lervag/vimtex'
" }}}

" Syntax and Folds {{{
" Plug 'plasticboy/vim-markdown'
Plug 'chrisbra/vim-zsh'
Plug 'chrisbra/csv.vim', { 'on': 'CSVInit' }
Plug 'vim-python/python-syntax'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'jaredsampson/vim-pymol'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug '/opt/plumed-2.4.3/lib/plumed/vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'neoclide/jsonc.vim'
" }}}

" File, Buffer Browsers {{{
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'francoiscabrol/ranger.vim', {'on': 'Ranger'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
" }}}

" Colors {{{
" Plug 'rktjmp/lush.nvim'
" Plug 'npxbr/gruvbox.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'hoob3rt/lualine.nvim'
" Plug 'akinsho/nvim-bufferline.lua'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'machakann/vim-highlightedyank'
" Plug 'RRethy/vim-illuminate'
" Plug 'andreypopp/vim-colors-plain'
" Plug 'lifepillar/vim-solarized8'
" Plug 'ajmwagar/vim-deus'
" Plug 'flazz/vim-colorschemes'
" Plug 'romainl/flattened'
" Plug 'nightsense/stellarized'
" Plug 'guns/xterm-color-table.vim'
" Plug 'nightsense/vrunchbang'
" Plug 'nightsense/seagrey'
" }}}

" Utils {{{  
Plug 'w0rp/ale'
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'simnalamburt/vim-mundo', {'on': 'MundoToggle'}
Plug 'junegunn/vim-peekaboo'
" Plug 'kassio/neoterm'
Plug 'moll/vim-bbye'
Plug 'lambdalisue/suda.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'fsharpasharp/nvim-historian'
" Plug 'neomake/neomake'
Plug 'andymass/vim-matchup'
Plug 'jmcantrell/vim-virtualenv'
Plug 'chrisbra/unicode.vim'
Plug 'mhinz/vim-startify'
" }}}

" Editing Tools {{{
Plug 'godlygeek/tabular', {'on': 'Tabularize'}
Plug 'junegunn/vim-easy-align'
Plug 'dhruvasagar/vim-table-mode', {'on': 'TableModeToggle'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-repeat'
Plug 'chrisbra/NrrwRgn'
" }}}

" Tmux {{{
Plug 'benmills/vimux'
Plug 'tmux-plugins/vim-tmux'
" Plug 'tmux-plugins/vim-tmux-focus-events'
" }}}

call plug#end()

source $VIMRUNTIME/menu.vim
" }}}

" Plugin Options {{{

" Code completion {{{

"                  舘侀炙    ⌾

" }}}

let g:tmuxcomplete#trigger = ''

" let g:default_julia_version = '1.0'

let g:UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsListSnippets = '<c-x><c-s>'
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_default_executive = 'ctags'
let g:vista_ctags_executable = 'uctags'
" let g:vista_ctags_cmd = {
"       \ 'python': 'ctags -f - --sort=yes'
"       \ }
let g:vista_executive_for = {
    \ 'cpp': 'coc',
    \ 'python': 'coc',
    \ 'markdown': 'toc'
    \ }

" Syntax and Folds {{{
let g:python_highlight_all = 1
let g:python_highlight_file_headers_as_comments = 1
let g:python_highlight_space_errors = 0

let g:fastfold_fold_command_suffixes = ['x', 'X', 'a', 'A', 'o', 'O', 'c', 'C', 'r', 'R', 'm', 'M', 'i', 'n', 'N']
" let g:tex_fold_enabled = 1
" let g:vimsyn_folding ='af'
" let g:sh_fold_enabled = 7
" let g:markdown_folding = 0

let g:tex_flavor = 'latex'

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {}, --  "all", "maintained" or a list
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = false,      -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = false,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = false
  },
}
EOF

" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()

" }}}

" File, Buffer, Browsers {{{
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

let g:ranger_map_keys = 0

let g:fzf_layout = { 'window': 'call FloatingFZF()' }

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<Tab>"] = actions.move_selection_next,
        ["<S-Tab>"] = actions.move_selection_previous,
        ["<C-z>"] = actions.toggle_selection,
        ["<C-s>"] = actions.select_horizontal,
        ["<C-x>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        ["<C-z>"] = actions.toggle_selection,
        ["<C-s>"] = actions.select_horizontal,
        ["<C-x>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    },
  }
}
require('telescope').load_extension('dap')
EOF

" }}}

" Colors {{{
let g:gruvbox_italic = 1
" let g:gruvbox_sign_column = 'dark0'
let g:gruvbox_sign_column = 'bg0'

" lua <<EOF
" require'lualine'.setup{
"   options = {theme = 'gruvbox'},
" }  
" require("bufferline").setup{}
" EOF

let g:airline_focuslost_inactive = 1
let g:airline#extensions#neomake#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#csv#column_display = 'Name'
let g:airline_powerline_fonts = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
" let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline_theme = 'gruvbox'
let g:airline#extensions#virtualenv#enabled = 0

let g:limelight_default_coefficient = 0.7
let g:limelight_priority = -1
" }}}

" Utils {{{
let g:gutentags_ctags_exclude = ['.mypy_cache']
let g:gutentags_project_root = ['__init__.py']

let g:ale_floating_preview = 1
let g:ale_set_highlights = 1
let g:ale_sign_error = '' "  ⤫
let g:ale_sign_warning = '' " ﯧ  ﯦ   ⚠    
let g:ale_lint_on_text_changed = 'always'
let g:ale_fixers = { 'python': 'autopep8', 'sh': 'shfmt'}
let g:ale_linters = {'python': ['flake8', 'pylint', 'mypy']}
let g:ale_python_mypy_options = '--ignore-missing-imports'
let g:ale_python_pylint_options = '--disable=C'
let g:ale_python_flake8_options = '--ignore=E221,E241,E201'
let g:ale_virtualenv_dir_names = ['.env', '.venv', 'env', 've-py3', 've', 'virtualenv', 'venv', '.ve', 'venvs']
let g:ale_pattern_options = {'\.py$': {'ale_enabled': 0}}

let g:windowswap_map_keys = 0

let g:peekaboo_compact = 0
let g:peekaboo_window = 'vert bo 30 new'

let g:matchup_override_vimtex = 1
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_offscreen = {'method': 'popup'}

let g:virtualenv_directory = '~/venvs/'

let g:historian_registers = ['+', '"']

" dap
lua <<EOF
vim.fn.sign_define('DapBreakpoint', {text='⬤ ', texthl='debugBreakpoint', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▶', texthl='debugBreakpoint', linehl='debugPC', numhl=''})
require('dap-python').setup('~/venvs/debugpy/bin/python')
require('dap.ext.vscode').load_launchjs()
EOF
let g:dap_virtual_text = v:true

" Startify

let g:startify_commands = [
    \ ':PlugUpdate',
    \ ':checkhealth',
    \ ]
let g:startify_bookmarks = [ '~/.config/nvim/init.vim', '~/.zshrc' ]
let g:startify_myheader = [
\'███╗   ██╗██╗   ██╗██╗███╗   ███╗',
\'████╗  ██║██║   ██║██║████╗ ████║',
\'██╔██╗ ██║██║   ██║██║██╔████╔██║',
\'██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
\'██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
\'╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
\]
let g:startify_custom_header = 'startify#pad(g:startify_myheader + startify#fortune#boxed())'

" Tagbar {{{
let g:tagbar_ctags_bin = '/opt/local/bin/uctags'
let g:tagbar_type_markdown= {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '/Users/laurenzi/.vim/mystuff/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }
let g:tagbar_type_PDB= {
    \ 'ctagstype': 'PDB',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 'a:atom',
    \ ],
\ }
" }}}
" }}}

" Editing Tools {{{
let g:delimitMate_expand_inside_quotes = 0
let g:delimitMate_jump_expansion = 1
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_nesting_quotes = ['"','`']
" }}}

" }}}

" Functions {{{

function! VimuxSlime()
 call VimuxRunCommand(@v, 0)
endfunction

function! WinZoomToggle() abort
    if ! exists('w:WinZoomIsZoomed') 
      let w:WinZoomIsZoomed = 0
    endif
    if w:WinZoomIsZoomed == 0
      let w:WinZoomOldWidth = winwidth(0)
      let w:WinZoomOldHeight = winheight(0)
      wincmd _
      wincmd |
      let w:WinZoomIsZoomed = 1
    elseif w:WinZoomIsZoomed == 1
      execute 'resize ' . w:WinZoomOldHeight
      execute 'vertical resize ' . w:WinZoomOldWidth
      let w:WinZoomIsZoomed = 0
   endif
endfunction

function! FloatReg() abort
  let l:regs = ''
  redir => l:regs
  execute 'silent reg'
  redir end
  let l:text = split(l:regs, '\n')
  let l:buf = nvim_create_buf(v:false, v:true)
  call nvim_buf_set_lines(l:buf, 0, -1, v:true, l:text)
  let l:h = len(l:text)
  let l:opts = {'relative': 'cursor', 'width': 80, 'height': l:h, 'col': 0, 'row': 1, 'anchor': 'NW', 'style': 'minimal'}
  let l:win = nvim_open_win(l:buf, 0, l:opts)
endfunction

function! FloatingFZF()
  let width = float2nr(&columns * 0.9)
  let height = float2nr(&lines * 0.6)
  let opts = { 'relative': 'editor',
              \ 'row': (&lines - height) / 2,
              \ 'col': (&columns - width) / 2,
              \ 'width': width,
              \ 'height': height }
  let win = nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
  call setwinvar(win, '&winhighlight', 'NormalFloat:Normal')
endfunction

" }}}

" Commands {{{

command! CD lcd %:p:h

command! FollowSymLink execute "file " . resolve(expand('%')) | edit

command! Reload source $MYVIMRC | noh

command! -range=% Wc <line1>,<line2>w ! wc

augroup MyAutoCommands
  autocmd!

  " zsh!
  " autocmd vimenter * let &shell='"/opt/local/bin/zsh" -i'
  
  " Science
  autocmd BufNewFile,BufRead *.pdb set filetype=PDB
  autocmd BufNewFile,BufRead *.aln set filetype=clustal
  autocmd BufNewFile,BufRead *.fasta,*.fa set filetype=fasta
  autocmd BufNewFile,BufRead *.msj set filetype=config
  autocmd BufNewFile,BufRead *.cms,*mae setlocal foldmarker={,} | setlocal fdm=marker

  " Distraction Free
  autocmd User GoyoEnter Limelight
  autocmd User GoyoLeave Limelight!
  
  " Competions Preview
  " autocmd CompleteDone * silent if pumvisible() == 0 && bufname("%") != "[Command Line]" | pclose | endif
  
  " Set SpellCheck
  autocmd FileType latex,tex,markdown,txt setlocal spell

  " Line Wrapping
  " autocmd FileType latex,tex,markdown,txt,text setlocal wrap 

  " DelimitMate
  autocmd FileType python let b:delimitMate_nesting_quotes = ['"']
  autocmd FileType markdown let b:delimitMate_nesting_quotes = ['`']

  " Syntax
  autocmd BufNewFile,BufRead *.coffee set filetype=coffee
  autocmd FileType json syntax match Comment +\/\/.\+$+
    
  " Send to Repl
  autocmd FileType python xnoremap <buffer> <leader>vs "+y :call VimuxRunCommand('%paste')<CR>

  " make
  autocmd FileType markdown,pandoc setlocal makeprg=pandoc\ --pdf-engine=xelatex\ %\ -o\ %:r.pdf

  " Surround
  autocmd FileType tex let g:surround_92 = "\\\1\\\1{\r}"

  " Terminal
  autocmd TermOpen * setlocal nonumber norelativenumber

augroup END

" }}}

" Settings {{{
let g:python3_host_prog = '/Users/laurenzi/venvs/base/bin/python'
let g:python_host_prog = '/Users/laurenzi/venvs/base27/bin/python'
" let g:netrw_browsex_viewer = 'open'

syntax on                " enable syntax highlighting
set termguicolors        " enable gui colors for terminal
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" 
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:vimsyn_embed = 'lPr'
                         " Failsafe to enable True Colors in tmux; is it really required?
set encoding=utf-8       " enconding
set modeline             " enable vim modelines
set mouse=a              " enable mouse for all modes
set noerrorbells novb	" remove all errors; 'set visualbell noeb' to revert
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set nobackup             " no backup file 
set noswapfile           " don't write .swp files
set undofile             " set permanent undo (default `undodir = ~/.local/share/nvim/undo/` 
set nowrap               " don't wrap lines
set tabstop=4            " a tab is four spaces
let &shiftwidth=&tabstop " number of spaces to use for autoindenting
set shiftround           " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab            " expand tab to count tabstop n° of spaces
set backspace=indent,eol,start
                         " allow backspacing over everything in insert mode
set autoindent           " always set autoindenting on
set copyindent           " copy the previous indentation on autoindenting
set number               " always show line numbers
set showmatch            " show matching parenthesis with a quick jump
set ignorecase           " ignore case when searching with / or ?
set smartcase            " ignore case if search pattern is all lowercase,
                         "    case-sensitive otherwise
set smarttab             " insert tabs on the start of a line according to
                         "    shiftwidth, not tabstop
set hlsearch             " highlight search terms
set incsearch            " show search matches as you type
set hidden               " allow modified buffers to be hidden 
" set wildmode=longest,list:longest,full
" set wildmenu             " diplay command completion listing and choice menu
set wildoptions+=pum
set wildignorecase       " ignore case command completion menu 
" set shell=/opt/local/bin/zsh\ --login   " default shell (interactive)
" set shellcmdflag=-c      " default shell command for non interactive invocations
"set clipboard=unnamed   " send yanks to system clipboard (buggy with v-block)
set showcmd              " show key spressed in lower-right corner
set sidescroll=1         " smooth side scrolling
set conceallevel=2       " conceal marked text
set completeopt=menuone,noinsert,noselect
set pumheight=15         " set completion menu max height
                         " set the behavior of the completion menu 
set fillchars+=vert:┃,fold:\ 
set fillchars+=foldopen:▾,foldsep:│,foldclose:▸
                         " set various fillchars; in this case removes clobbering signs from folds ('\ ')
set inccommand=split     " real time preview of substitution commands
set noshowmode           " Do not show -- MODE -- in cmdline"
set cmdheight=1          " Height of the command line
set updatetime=250       " time required to update CursorHold hook
set shortmess+=c         " remove 'match x of y' echoing line
" set printdevice=OLIVETTI_d_COPIA4500MF_plus__2_
set showbreak=↪\ 
set listchars=tab:\|.,trail:_,extends:>,precedes:<,nbsp:~,eol:¬
set wildcharm=<C-Z>      " trigger completion in macros
set signcolumn=auto:4

set dictionary=/usr/share/dict/words
" }}}

" Colors {{{
colorscheme gruvbox
set background=dark

" Colorscheme Overrides {{{
hi! link SpecialKey GruvboxBlue
hi! link pythonDot GruvboxRed
"}}}

" Highlights {{{

" Spell {{{
hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare
" Works well with iTerm2 underline color
hi SpellBad   gui=undercurl  guisp=red 
hi SpellLocal gui=undercurl  guisp=yellow
hi SpellCap   gui=undercurl  guisp=orange
hi SpellRare  gui=undercurl  guisp=darkyellow
" }}}

" ALE {{{
" hi ALEInfo                  gui=undercurl guisp=blue
" hi ALEError                 gui=undercurl guisp=red
" hi ALEWarning               gui=undercurl guisp=orange
" hi ALEStyleError            gui=undercurl guisp=green
" hi ALEStyleWarning          gui=undercurl guisp=green
" hi link ALEInfoSign         GruvboxYellow
" hi link ALEErrorSign        GruvboxRed
" hi link ALEWarningSign      GruvboxOrange
" hi link ALEStyleErrorSign   GruvboxAqua
" hi link ALEStyleWarningSign GruvboxBlue

" hi link CautocmdocInfoSign GruvboxYellow
" hi link CocErrorSign GruvboxRed
" hi link CocWarningSign GruvboxOrange
" hi link CocHighlightText DiffChange
" hi link CocHighlightRead DiffChange
" hi link CocHighlightWrite DiffChange
" }}}

" python syntax {{{
" https://stackoverflow.com/questions/18774910/how-to-partially-link-highlighting-groups
" exe 'hi pythonClassVar gui=italic guifg=' . synIDattr(synIDtrans(hlID('pythonClassVar')), 'fg', 'gui')
" exe 'hi pythonBuiltinType gui=italic guifg=' . synIDattr(synIDtrans(hlID('pythonBuiltinType')), 'fg', 'gui')
exe 'hi pythonBuiltinType gui=italic guifg=' . synIDattr(synIDtrans(hlID('GruvboxAqua')), 'fg', 'gui')
exe 'hi pythonClassVar gui=italic guifg=' . synIDattr(synIDtrans(hlID('GruvboxBlue')), 'fg', 'gui')
hi link pythonClass GruvboxAquaBold
" exe 'hi pythonClass gui=bold guifg=' . synIDattr(synIDtrans(hlID('GruvboxAquaBold')), 'fg', 'gui')
" }}}

" }}}
" }}}

" Mappings {{{
let mapleader = ','
nnoremap <Space> :
xnoremap <Space> :

" fast [e]dit and [s]ourcing .[v]imrc
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <silent><leader>sv :source $MYVIMRC<CR>:noh<CR>

" Tab S-Tab prev/next candidate, CR confirm, BS delete completion,
" C-l escape delimiters, C-Space invoke completion,
" C-U C-D scroll Up/Down

let g:ulti_expand_res = 0
function! Ulti_Expand_and_getRes() abort
  call UltiSnips#ExpandSnippet()
  return g:ulti_expand_res
endfunction

imap <silent><CR> <C-R>=pumvisible() ? Ulti_Expand_and_getRes() ? "" : "\<C-y>" : delimitMate#ExpandReturn()<CR>
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>" 
imap <expr><S-Tab> pumvisible() ? "\<C-p>" : "<Plug>delimitMateS-Tab"
inoremap <expr><C-d> pumvisible() ? "\<PageDown>" : "\<C-d>" 
inoremap <expr><C-u> pumvisible() ? "\<PageUp>" : "\<C-u>"
imap <C-l> <Plug>delimitMateS-Tab


" remap <Esc> to jk in insert mode
" inoremap jk <Esc>
" inoremap kj <Esc>

" toggle [r]elative line [n]umbers
nnoremap <silent><leader>rn :set invrelativenumber<CR>

" move around and resize windows
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <m->> <C-W>>
nnoremap <m-<> <C-W><
nnoremap <m-+> <C-W>+
nnoremap <m--> <C-W>-
nnoremap <m-z> :call WinZoomToggle()<CR>

" Vertical/Horizontal Scrolling
nnoremap <m-l> zl
nnoremap <m-h> zh
nnoremap <m-j> <C-E>
nnoremap <m-k> <C-Y>

" close window/buffer
nnoremap <leader>q :close<CR>
nnoremap <leader>Q :bdelete<CR>
nnoremap <leader>bd :Bdelete<CR>
nnoremap <leader>bo :%bd <bar> e# <bar> bd #<CR>

" Go to [b]uffer, [s]plit, [v]ertical, [t]ab or [d]elete
nnoremap <silent><m-n> :bnext<CR>
nnoremap <silent><m-p> :bprev<CR>
nnoremap gbb :ls<CR>:b 
nnoremap gbs :ls<CR>:sb 
nnoremap gbv :ls<CR>:vertical sb 
nnoremap gbt :ls<CR>:tab sb 
nnoremap gbd :ls<CR>:bdelete 

" [w]rite buffer 
nnoremap <leader>w :w<cr>

" redraw screen and c[l]ear highlights
nnoremap <silent><leader>l :noh<CR>:redraw!<CR>

" [re]load buffer
nnoremap <leader>re :e%<CR>

" [e]dit, [v]ertical, horizontal [s]plit or [t]ab a [n]ew buffer
nnoremap <leader>en :enew<CR>
nnoremap <leader>vn :rightbelow vnew<CR>
nnoremap <leader>sn :belowright new<CR>
nnoremap <leader>tn :tabnew<cr>

" Edit or select [R/r]egister
" nnoremap <silent><leader>" :reg<CR>:execute 'norm! "' . input("Select [register][action]: ")<CR>
nnoremap <leader>" :<C-U><C-R><C-R>='let @'. v:register .' = '. string(getreg(v:register))<CR><C-F><left>

" Easier increase/decrease indents
xnoremap > >gv
xnoremap < <gv

" select [a]ll
nnoremap <leader>a ggVG

" [y]ank to clipnoard
nnoremap <leader>y "+y
xnoremap <leader>y "+y

" [p]aste from clipboard
nnoremap <leader>p "+p
xnoremap <leader>p "+p

" Qui[c]kFix [O]pen, [N]ext, [P]revious, [C]lose
nnoremap <leader>co :copen<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cNext<CR>
nnoremap <leader>cc :cclose<CR>

" Location[L]ist [O]pen, [N]ext, [P]revious, [C]lose
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lNext<CR>
nnoremap <leader>lc :lclose<CR>

" Text Formatting
nnoremap <leader>gq vipgq

" Search visual selection
xnoremap g/ "sy/\V<C-r>=escape(@s,'/\')<CR><CR>

" Set @/ to word under cursor
nnoremap <silent><leader>/ :call setreg('/', expand('<cword>'))<CR>

" Poor men refactoring
nnoremap cr *``cgn

" Add blank lines above/below cursor
nnoremap ]<CR> :call append(line('.'), '')<CR>
nnoremap [<CR> :call append(line('.')-1, '')<CR>

" Move selection up/down
xnoremap <C-J> :m'>+1<CR>gv=gv
xnoremap <C-K> :m'<-2<CR>gv=gv

" WindowSwap
nnoremap <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
 
" toggle tagbar
nnoremap <silent><F8> :TagbarToggle<CR>

" [N]ERDTree
nnoremap <silent><leader>nt :NERDTreeToggle<CR>
nnoremap <silent><leader>nf :NERDTreeFind<CR>

" Toggle [Mu]ndo
nnoremap <silent><leader>mu :MundoToggle<CR>

" FZF [f]files, [h]istory, [b]uffers, [l]lines
" nnoremap <leader>ff :FZF<CR>
" nnoremap <leader>fh :History<CR>
" nnoremap <leader>fb :Buffer<CR>
" nnoremap <leader>fl :Lines<CR>
" nnoremap <leader>h  :History:<CR>
" nnoremap <leader>fh :Helptags<CR>
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>f. :Telescope file_browser<CR>
nnoremap <leader>fl :Telescope current_buffer_fuzzy_find<CR>
nnoremap <leader>fq :Telescope quickfix<CR>
nnoremap <leader>fh :Telescope oldfiles<CR>
nnoremap <leader>fb :Telescope buffer<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader><space> :Telescope commands<CR>
nnoremap <leader>ft :Telescope treesitter<CR>

" Marks
" nnoremap <leader>m :Marks<CR>
nnoremap <leader>m :Telescope marks<CR>

" Vimux
xnoremap <leader>vs "vy :call VimuxSlime()<CR>
nnoremap <leader>vp :VimuxPromptCommand<CR>

" EasyAlign
xmap ga <Plug>(EasyAlign)

" Vista
nnoremap <leader>vv :Vista!!<CR>
nnoremap <leader>vf :Vista finder<CR>

" gitgutter
nnoremap <leader>sd :SignifyHunkDiff<CR>

" Menu
nnoremap <F2> :emenu <C-Z>
xnoremap <F2> :emenu <C-Z>

" Sintax stuff
nnoremap <F7> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Debugger
nnoremap <leader>do :lua require'dap'.step_over()<CR>
nnoremap <leader>dO :lua require'dap'.step_out()<CR>
nnoremap <leader>dn :lua require'dap'.step_into()<CR>
nnoremap <leader>dN :lua require'dap'.step_back()<CR>
nnoremap <leader>db :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <leader>de :lua require'dap'.set_exception_breakpoints(})<CR>
nnoremap <leader>dr :lua require'dap'.repl.toggle()<CR>
nnoremap <leader>dv :Telescope dap variables<CR>
nnoremap <leader>dc :Telescope dap commands<CR>
nnoremap <leader>di :lua require'dap.ui.widgets'.hover()<CR>
xnoremap <leader>di :lua require'dap.ui.variables'.visual_hover()<CR>
" nnoremap <leader>ds :lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>
nnoremap <leader>ds :lua local widgets=require'dap.ui.widgets'; local dap_sidebar=widgets.sidebar(widgets.scopes); dap_sidebar.toggle()<CR>
nnoremap <leader>d. :lua require'dap'.goto_()<CR>
nnoremap <leader>dh :lua require'dap'.run_to_cursor()<CR>

" netrw_gx fix
" nmap gx yiW:!open <cWORD><CR> <C-r>" & <CR><CR>
" }}}

" LSP {{{
source $HOME/.config/nvim/nvim-coc-config
" source $HOME/.config/nvim/nvim-lsp-config
" }}}

" vim: ts=2 sw=2 fdm=marker
