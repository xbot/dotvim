" cSpell: disable

" ------------------------------ Plugins ------------------------------"{{{

function! s:plugged(bundle)
    let plugs = get(g:, 'plugs', {})
    return has_key(plugs, a:bundle) ? isdirectory(plugs[a:bundle].dir) : 0
endfunction

call plug#begin('~/.vim/plugged')

Plug '0x84/vim-coderunner'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'RRethy/vim-illuminate'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/ListToggle'
Plug 'adelarsq/vim-matchit'
Plug 'aklt/plantuml-syntax'
Plug 'arecarn/vim-fold-cycle'
Plug 'chrisbra/SudoEdit.vim'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-titlecase'
Plug 'dstein64/vim-startuptime'
Plug 'farmergreg/vim-lastplace'
Plug 'gcmt/wildfire.vim'
Plug 'godlygeek/tabular'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'jiazhoulvke/jianfan'
Plug 'jreybert/vim-largefile'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vader.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-plug'
Plug 'junkblocker/git-time-lapse'
Plug 'liuchengxu/vista.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/fencview'
Plug 'mhinz/vim-startify'
Plug 'n0v1c3/vira', { 'do': './install.sh', 'on': ['ViraIssues', 'ViraReport', 'ViraLoadProject', 'ViraSetActiveTicket', 'ViraFilterEdit'] }
Plug 'preservim/nerdcommenter'
Plug 'rizzatti/dash.vim'
Plug 'segeljakt/vim-silicon'
Plug 'skywind3000/asyncrun.vim'
Plug 'szw/vim-maximizer'
Plug 't9md/vim-choosewin'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-capslock'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-unimpaired'
Plug 'twitvim/twitvim'
Plug 'tyru/open-browser.vim'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/SQLUtilities'
Plug 'weirongxu/plantuml-previewer.vim'

Plug 'peterhoeg/vim-qml',            { 'for': 'qml'       }
Plug 'vim-scripts/Pydiction',        { 'for': 'python'    }
Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown', 'do': 'cd app && yarn install' }
Plug 'xbot/pdv',                     { 'for': 'php'       }
Plug 'tobyS/vmustache',              { 'for': 'php'       }
Plug 'tpope/vim-dispatch',           { 'for': 'php'       }
Plug 'tpope/vim-projectionist',      { 'for': 'php'       }
Plug 'noahfrederick/vim-composer',   { 'for': 'php'       }
Plug 'noahfrederick/vim-laravel',    { 'for': 'php'       }
Plug 'dgryski/vim-godef',            { 'for': 'go'        }
Plug 'fatih/vim-go',                 { 'for': 'go'        }
Plug 'Blackrush/vim-gocode',         { 'for': 'go'        }

" colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'base16-project/base16-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'jacoborus/tender.vim'
Plug 'joshdick/onedark.vim'
Plug 'ldelossa/vimdark'
Plug 'lifepillar/vim-solarized8'
Plug 'liuchengxu/space-vim-theme'
Plug 'morhetz/gruvbox'
if has('nvim')
    Plug 'EdenEast/nightfox.nvim'
    Plug 'LunarVim/horizon.nvim'
    Plug 'Mofiqul/dracula.nvim'
    Plug 'NTBBloodbath/doom-one.nvim'
else
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'romgrk/doom-one.vim'
endif

" LeaderF group
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'git@github.com:xbot/Leaderf-folder.git'
Plug 'git@github.com:xbot/Leaderf-phpnamespace.git', { 'for': 'php' }
" Plug 'HaomingJu/LeaderF-gitlab' " Does not work with the settings given by the document

" Search plugins
Plug 'mhinz/vim-grepper'
Plug 'wincent/ferret'

" Zoom plugins
if has('nvim')
    Plug 'nyngwang/NeoZoom.lua'
endif
Plug 'dhruvasagar/vim-zoom'

" vimspector group
" let g:vimspector_enable_mappings = 'HUMAN'
Plug 'puremourning/vimspector'

" fugitive group
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rbong/vim-flog'
Plug 'sodapopcan/vim-twiggy'
" Plug 'akinsho/git-conflict.nvim', { 'tag': 'v1.0.0' } " Buggy at present, but with more features than conflict-marker
Plug 'rhysd/conflict-marker.vim'
Plug 'rhysd/git-messenger.vim'

" EnhancedJumps group
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-EnhancedJumps'

" ultisnips group
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" tabline and statusline group
if has('nvim')
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
    Plug 'nvim-lualine/lualine.nvim'
else
    " airline group
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
endif

" wilder
if has('nvim')
    function! UpdateRemotePlugins(...)
        " Needed to refresh runtime files
        let &rtp=&rtp
        UpdateRemotePlugins
    endfunction

    Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
    Plug 'gelguy/wilder.nvim'

    " To use Python remote plugin features in Vim, can be skipped
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" textobj plugins
let g:textobj_diff_no_default_key_mappings=1
let g:textobj_lastpat_no_default_key_mappings=1
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-datetime'
Plug 'kana/vim-textobj-diff'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-syntax'
Plug 'glts/vim-textobj-comment'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'junegunn/vim-after-object'
Plug 'machakann/vim-sandwich'
" Plug 'tpope/vim-surround'
" Plug 'kana/vim-textobj-underscore' " Also provided in targets.vim
" Plug 'kentaro/vim-textobj-function-php' " Too old and 'if' works not as exptected in PHP syntax.

" ctags/gtags group
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'xbot/gtags.vim'

" offline plugins
Plug '~/.vim/plugged/confluencewiki'

" neovim plugins
if has('nvim')

    " Plug 'github/copilot.vim'
    Plug 'NTBBloodbath/rest.nvim'
    Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
    Plug 'ckipp01/stylua-nvim'
    Plug 'elihunter173/dirbuf.nvim' " Conflict with dirvish
    Plug 'f-person/git-blame.nvim'
    Plug 'folke/which-key.nvim'
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    Plug 'kevinhwang91/nvim-bqf', { 'for': 'qf' } | Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'kevinhwang91/nvim-hlslens'
    Plug 'mrjones2014/smart-splits.nvim'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'phaazon/hop.nvim'
    Plug 'rcarriga/nvim-notify'
    Plug 'simnalamburt/vim-mundo'

    " mason group
    Plug 'williamboman/mason.nvim'
    Plug 'WhoIsSethDaniel/mason-tool-installer.nvim'

    " fine-cmdline group
    Plug 'MunifTanjim/nui.nvim'
    Plug 'VonHeikemen/fine-cmdline.nvim'

    " telescope group
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-symbols.nvim'

    " diffview group
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'sindrets/diffview.nvim'

    " auto-session group
    " Will complain errors under GUI
    if !has('gui_running')
        Plug 'rmagatti/auto-session'
        Plug 'rmagatti/session-lens'
    endif

    " treesitter group
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    " nvim-tree group
    Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
    Plug 'kyazdani42/nvim-tree.lua'

    " nvim-dap group
    Plug 'mfussenegger/nvim-dap'
    Plug 'rcarriga/nvim-dap-ui'
    Plug 'theHamsta/nvim-dap-virtual-text'
    Plug 'jbyuki/one-small-step-for-vimkind'

    " Plug 'caenrique/nvim-toggle-terminal'
    " Plug 'tveskag/nvim-blame-line' " Has performance problem

    " " defx group
    " " This plugin has been stopped developing, see ddu.vim and ddu-ui-filer
    " Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'kristijanhusak/defx-git'
    " Plug 'kristijanhusak/defx-icons'
else

    " vim plugins
    Plug 'andrejlevkovitch/vim-lua-format'
    Plug 'chrisbra/Colorizer'
    Plug 'easymotion/vim-easymotion'
    Plug 'gcmt/taboo.vim' " Conflict with bufferline.nvim
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'   }
    Plug 'ojroques/vim-oscyank'
    Plug 'pakutoma/toggle-terminal'
    Plug 'rhysd/vim-healthcheck'
    Plug 'vim-scripts/AnsiEsc.vim' " To enhance vim-flog

    " defx group
    " This plugin has been stopped developing, see ddu.vim and ddu-ui-filer
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

if has('gui_running')
    Plug 'drmikehenry/vim-fontsize'
endif

" LSP group
Plug 'neoclide/coc.nvim', {'branch': 'release'}
if has('nvim') && !s:plugged('coc.nvim')
    " Experimental replacements of coc.nvim
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
    Plug 'onsails/lspkind.nvim'
    Plug 'sbdchd/neoformat'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-copilot'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'airblade/vim-rooter'
    Plug 'lewis6991/spellsitter.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    " Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
    " Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim' " Experience needs to be improved.
endif

" Plug 'dense-analysis/ale'
" Plug 'joeytwiddle/sexy_scroller.vim'
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" Plug 'mhinz/vim-signify'
" Plug 'plasticboy/vim-markdown',     { 'for': 'markdown' }
" Plug 'psliwka/vim-smoothie'
" Plug 'tweekmonster/startuptime.vim'

" " Conflict with dirbuf
" Plug 'justinmk/vim-dirvish'
" " Plug 'kristijanhusak/vim-dirvish-git'
" Plug 'roginfarrer/vim-dirvish-dovish', {'branch': 'main'}

" Buggy
" Plug 'brooth/far.vim'

" " nerdtree group
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
"}}}

" ------------------------------ Miscellaneous ------------------------------"{{{
" Check the current platform
function! IsPlatform(mixed)"{{{
    if type(a:mixed) == 1
        let plist = [a:mixed]
    elseif type(a:mixed) == 3
        let plist = a:mixed
    else
        return 0
    endif

    if has('win16') || has('win32') || has('win64') || has('winnt')
        return index(plist, 'win')>=0
    elseif has('mac')
        return index(plist, 'mac')>=0
    else
        return index(plist, 'unix')>=0
    endif

    return 0
endfunction"}}}

set nocompatible
filetype on
filetype indent on
filetype plugin on
syntax on

" encoding & decoding settings
set encoding=utf-8
set fencs=ucs-bom,utf-8,chinese,big5,windows-1252
if IsPlatform('win')
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif
let &termencoding=&encoding
set langmenu=en_US.UTF-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8
language message en_US.UTF-8

" map <Leader>
let mapleader=','

" Environment settings
if IsPlatform('win')
    set rtp-=$HOME/vimfiles
endif

" Generic declarations
" Platform specific declarations
if IsPlatform('win')
    let gbl_vimrc_name = '_vimrc'
    let gbl_vimrc_file = $VIM.'/'.gbl_vimrc_name
else
    let gbl_vimrc_name = '.vimrc'
    let gbl_vimrc_file = expand('~/'.gbl_vimrc_name)
endif

" Use command :Man to view manpages
if has('unix')
    source $VIMRUNTIME/ftplugin/man.vim
endif
if IsPlatform('win')
    source $VIMRUNTIME/vimrc_example.vim
endif
if IsPlatform('win')
    source $VIMRUNTIME/mswin.vim
    behave mswin
    map <C-f> <PageDown>
endif
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
source $HOME/.vimrc_private

if IsPlatform('mac')
    let g:ruby_host_prog='~/.rbenv/shims/ruby'
    let g:python_host_prog='~/.pyenv/shims/python2'
    let g:python3_host_prog='~/.pyenv/shims/python3'
else
    let g:python3_host_prog='/usr/bin/python3'
endif

"}}}

" ------------------------------ Application Settings ------------------------"{{{

" set spell
" set winheight=9999
set autoindent
set cedit=\<C-Y>
set cindent
set clipboard+=unnamed
set cmdheight=0
set confirm
set cursorcolumn
set cursorline
set expandtab
set fdm=marker
set fillchars+=diff:\ 
set history=100        " keep 50 lines of command line history
set hlsearch
set ignorecase
set laststatus=2
set lazyredraw " Do not redraw while macros are running , this accelerates vim greatly .
set list listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
set mouse=a
set nobackup
set noequalalways
set nowrap
set nrformats+=alpha
set number
set relativenumber
set shiftround
set shiftwidth=4
set smartcase
set softtabstop=4
set splitbelow
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}[%Y]%=%l,%c%V%8P
set tabstop=4
set termguicolors
set undofile
set updatetime=10000
set vb t_vb=
set viminfo+=!
set wildignore=*.class,*.pyc
set wildmenu " Type :help and press <TAB> , so that's the effect .
set winminheight=1

if has('nvim')
    set undodir=~/.vim/undodir/nvim/
else
    set undodir=~/.vim/undodir/vim/
endif
if IsPlatform('win')
    set grepprg=d:/dev/tool/GnuWin32/bin/grep.exe\ -n
else
    " set grepprg=grep\ -n
    set grepprg=ag\ --nogroup\ --column\ -U\ --ignore\ tags
endif

if has('nvim')
    let g:backupdir=expand(stdpath('data') . '/backup')
    if !isdirectory(g:backupdir)
        call mkdir(g:backupdir, "p")
    endif
    let &backupdir=g:backupdir
endif

if has('gui_running')
    if !has('nvim')
        set macligatures
        set macthinstrokes
        " set guifont=Monaco\ for\ Powerline:h16
        set guifont=CaskaydiaCove\ Nerd\ Font:h16
    endif

    set linespace=2

    " set background=dark
    set background=light

    " let g:solarized_diffmode="high"
    " colorscheme solarized

    colorscheme solarized8_flat
    " colorscheme dracula
    " colorscheme nord
    " colorscheme onedark

    set lines=70 columns=189

    " GUI Options
    set go-=T
    set go-=m
    set go-=L
    if IsPlatform('win')
        set go-=r
    endif
    set go-=r
    "set go+=b

    " Toggle menu bar
    if !IsPlatform('mac')
        map <silent> <C-S-F2> :if &guioptions =~# 'm' <Bar>
                    \set guioptions-=m <bar>
                    \else <Bar>
                    \set guioptions+=m <Bar>
                    \endif<CR>
    endif
else
    " neovide hacks
    if exists('g:neovide')
        set guifont=CaskaydiaCove\ Nerd\ Font:h16
        let g:neovide_cursor_vfx_mode = "torpedo"
        let g:neovide_remember_window_size = v:true
        set linespace=2
    endif

    " For CLI vim
    " set background=light
    " set background=dark
    " let g:solarized_termcolors=256
    " colorscheme solarized
    " colorscheme nord
    " colorscheme dracula
    " colorscheme space_vim_theme
    " colorscheme flattened_light
    " colorscheme solarized8_flat
    " colorscheme base16-oned

    if has('nvim')

        set background=light
        " set background=dark
        let g:tokyonight_style = 'day' " available: night, storm, day
        let g:tokyonight_italic_functions = 1
        " let g:tokyonight_transparent = 1
        " let g:tokyonight_transparent_sidebar = 1
        " let g:tokyonight_dark_sidebar = 1
        " let g:tokyonight_dark_float = 1
        " Change the "hint" color to the "orange" color, and make the "error" color bright red
        let g:tokyonight_colors = {
                    \ 'hint': 'orange',
                    \ 'error': '#ff0000',
                    \ }
        colorscheme tokyonight

        " set background=dark | colorscheme doom-one

    else
        set background=light
        let g:solarized_termcolors=256
        colorscheme solarized8_flat
    endif
endif

" vim-airline colorscheme
if s:plugged('vim-airline')
    if !has('gui_running') && has('nvim')
        let g:airline_theme = 'base16_harmonic_light'
    else
        let g:airline_theme = 'base16_solarized_light'
    endif
endif
" LeaderF colorscheme
if s:plugged('LeaderF')
    if !has('gui_running') && has('nvim')
        let g:Lf_PopupColorscheme = 'default'
        " let g:Lf_PopupColorscheme = 'gruvbox_default'
        let g:Lf_PopupPalette = {
            \  'light': {
            \      'Lf_hl_popup_inputText': {
            \                'gui': 'NONE',
            \                'font': 'NONE',
            \                'guifg': '#627E99',
            \                'guibg': '#E4EAF0',
            \                'cterm': 'NONE',
            \                'ctermfg': '255',
            \                'ctermbg': '237'
            \              },
            \      'Lf_hl_popup_window': {
            \                'gui': 'NONE',
            \                'font': 'NONE',
            \                'guifg': '#555555',
            \                'guibg': '#DADBE1',
            \                'cterm': 'NONE',
            \                'ctermfg': '255',
            \                'ctermbg': '237'
            \              },
            \      'Lf_hl_popup_blank': {
            \                'gui': 'NONE',
            \                'font': 'NONE',
            \                'guifg': '#627E99',
            \                'guibg': '#E4EAF0',
            \                'cterm': 'NONE',
            \                'ctermfg': '255',
            \                'ctermbg': '237'
            \              }
            \      }
            \  }
    else
        " let g:Lf_PopupColorscheme = 'default'
        let g:Lf_PopupColorscheme = 'gruvbox_material'
        " let g:Lf_PopupColorscheme = 'powerline'
        " let g:Lf_PopupColorscheme = 'one'
        " let g:Lf_PopupColorscheme = 'popup'
    endif
endif

" Auto reload file if changed outside.
set autoread
autocmd FocusGained,BufEnter * if mode() == 'n' && getcmdwintype() == '' | checktime | endif

" clipboard over SSH
if has('nvim')

    let ssh_client_ip = matchstr($SSH_CLIENT, '\v(\d{1,3}\.){3}\d{1,3}')

    if ssh_client_ip != ''
        let lemonade_port = 2489

        " iMac
        if ssh_client_ip == '10.1.1.2'
            let lemonade_port = 2490
        endif

        let g:clipboard = {
            \   'name': 'myClipboard',
            \   'copy': {
            \      '+': ['lemonade', '--port=' . lemonade_port, 'copy'],
            \      '*': ['lemonade', '--port=' . lemonade_port, 'copy'],
            \      '"': ['lemonade', '--port=' . lemonade_port, 'copy'],
            \    },
            \   'paste': {
            \      '+': ['lemonade', '--port=' . lemonade_port, 'paste'],
            \      '*': ['lemonade', '--port=' . lemonade_port, 'paste'],
            \      '"': ['lemonade', '--port=' . lemonade_port, 'paste'],
            \    },
            \   'cache_enabled': 1,
            \ }
    endif

endif

"}}}

" ------------------------------ Plugin Settings --------------------------{{{
" vim-plug settings
if exists('g:plug_home')

    let g:plug_window='-tabnew'

    command! SnapshotPlugins PlugSnapshot ~/.vim/plugin.lock

endif

" FencView settings
if s:plugged('fencview')

    let g:fencview_autodetect    = 0
    let g:fencview_checklines    = 10
    let g:fencview_auto_patterns = '*.txt,*.htm{l\=},*.php,*.lib,*.inc,*.sql'

endif

" UltiSnips settings
if s:plugged('ultisnips')"{{{

    let g:UltiSnipsExpandTrigger                           = '<C-Tab>'
    let g:UltiSnipsJumpForwardTrigger                      = '<C-j>'
    let g:UltiSnipsJumpBackwardTrigger                     = '<C-k>'
    let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = '~/.vim/UltiSnips'
    let g:ulti_expand_or_jump_res                          = 0
    let g:UltiSnipsEditSplit                               = 'tabdo'
    let g:UltiSnipsEnableSnipMate                          = 0

    nmap <Leader>ue :UltiSnipsEdit<Space>

    " inoremap <silent> <TAB> <C-r>=CleverTab()<CR>
    " snoremap <silent> <TAB> <ESC>:call UltiSnips#ExpandSnippetOrJump()<CR>
    " function! CleverTab()"{{{
        " call UltiSnips#ExpandSnippetOrJump()
        " if g:ulti_expand_or_jump_res
            " return ''
        " else
            " if s:plugged('coc.nvim')
                " if coc#pum#visible()
                    " return coc#_select_confirm()
                " else
                    " return coc#refresh()
                " endif
            " else
                " if pumvisible()
                    " return "\<c-n>"
                " endif
            " endif
        " endif
    " endfunction"}}}

endif"}}}

" vim-grepper settings
if s:plugged('vim-grepper')

    runtime plugin/grepper.vim
    let g:grepper.rg.grepprg .= ' --no-ignore-vcs --smart-case -g !vendor/composer/ -g !storage/ -g !node_modules/'

    nnoremap <Leader>gs <Plug>(GrepperOperator)
    xnoremap <Leader>gs <Plug>(GrepperOperator)
    nnoremap <Leader>gg <Cmd>Grepper<CR>
    nnoremap <Leader>gr :GrepperRg 

endif

" Ferret settings
" @see https://0x3f.org/posts/the-best-practice-of-searching-in-vim/
if s:plugged('ferret')"{{{

    let g:FerretExecutable='rg'
    let g:FerretExecutableArguments = {
                \   'ag': '--skip-vcs-ignores --ignore-dir=storage --vimgrep --width 4096 --follow --ignore-dir=vendor/composer --ignore-dir=storage',
                \   'rg': '--no-ignore-vcs --vimgrep --no-heading --no-config --max-columns 4096 --follow -g !vendor/composer/ -g !storage/ -g !node_modules/'
                \ }
    " let g:FerretQFHandler='botright copen 20'
    " let g:FerretLLHandler='botright lopen 20'

    nmap <Leader>ak  <Plug>(FerretAck)
    nmap <Leader>lak <Plug>(FerretLack)
    nmap <Leader>aw  <Plug>(FerretAckWord)
    nmap <Leader>as  <Plug>(FerretAcks)
    vmap <Leader>ak  y:Ack <C-R>=Escape_regex(@", 1)<CR>
    vmap <Leader>lak y:Lack <C-R>=Escape_regex(@", 1)<CR>

    " The patterns passed to the :Ack command may be not compatible with the
    " :Acks command, so we need to escape some characters in them additionally
    " in the command-line window.
    augroup escape_ferret_pattern_in_the_current_line_in_commandline_window
        au!
        autocmd BufEnter * if mode() == 'n' && getcmdwintype() == '' | nnoremap <Leader>ee :call EscapeFerretPatternInCurrentLine()<CR> | endif
    augroup END

    function! EscapeFerretPatternInCurrentLine()
        exec 's/>/\\>/g'
        exec 's/&/\\&/g'
    endfunction

    " List all tasks under the current directory
    map <Leader><Leader>tl :Ack //\s(TODO\|FIXME)\s(lidong\|donie)<CR>
    " Highlight TODO, FIXME, NOTE, etc.
    augroup ferret
        au!
        autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|BUG\|HACK\)')
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
    augroup END

endif"}}}

" ListToggle settings
if s:plugged('ListToggle')

    let g:lt_location_list_toggle_map = "<C-;>"
    let g:lt_quickfix_list_toggle_map = "<C-'>"

endif

" nvim-bqf settings
if s:plugged('nvim-bqf')

    hi BqfPreviewBorder guifg=#50a14f ctermfg=71
    hi link BqfPreviewRange Search

lua << EOF
local status, bqf = pcall(require, 'bqf')
if not status then
    return
end

bqf.setup({
    auto_enable = true,
    auto_resize_height = true, -- highly recommended enable
    preview = {
        win_height = 12,
        win_vheight = 12,
        delay_syntax = 80,
        border_chars = {'┃', '┃', '━', '━', '┏', '┓', '┗', '┛', '█'},
        show_title = false,
        should_preview_cb = function(bufnr, qwinid)
            local ret = true
            local bufname = vim.api.nvim_buf_get_name(bufnr)
            local fsize = vim.fn.getfsize(bufname)
            if fsize > 100 * 1024 then
                -- skip file size greater than 100k
                ret = false
            elseif bufname:match('^fugitive://') then
                -- skip fugitive buffer
                ret = false
            end
            return ret
        end
    },
    -- make `drop` and `tab drop` to become preferred
    func_map = {
        drop = 'o',
        openc = 'O',
        split = '<C-s>',
        tabdrop = '<C-t>',
        tabc = '',
        ptogglemode = 'z,',
    },
    filter = {
        fzf = {
            action_for = {['ctrl-s'] = 'split', ['ctrl-t'] = 'tab drop'},
            extra_opts = {'--bind', 'ctrl-o:toggle-all', '--prompt', '> '}
        }
    }
})
EOF

endif

" Pydiction Settings
if s:plugged('Pydiction')

    if IsPlatform('win')
        let g:pydiction_location = 'D:/Program Files/vim/vimfiles/plugged/Pydiction/complete-dict'
    else
        let g:pydiction_location = '~/.vim/plugged/Pydiction/complete-dict'
    endif

endif

" SQL Type Default
let g:sql_type_default = 'sqlsvr'

" NERD_commenter Settings
if s:plugged('nerdcommenter')

    let NERDSpaceDelims           = 1
    let NERDCreateDefaultMappings = 0

    map <Leader>cc <plug>NERDCommenterComment
    map <Leader>cs <plug>NERDCommenterSexy
    map <Leader>cu <plug>NERDCommenterUncomment

endif

" NERD Tree
if s:plugged('nerdtree')

    nmap <Leader>nt :NERDTreeToggle<CR>
    nmap <Leader>nf :NERDTreeFind<CR>
    nmap <Leader>nd :NERDTree %:h<CR>

    let NERDTreeIgnore      = ['\.scc$', '\.pyc$', '\~$']
    let NERDTreeNaturalSort = 1

endif

" TwitVim settings
if s:plugged('twitvim')

    let twitvim_enable_python = 1
    " let twitvim_proxy         = '127.0.0.1:8123'
    let twitvim_browser_cmd   = 'open -a Safari'
    " let twitvim_browser_cmd = '/usr/bin/google-chrome-stable'
    let twitvim_count = 30
    nmap <Leader>twit :PosttoTwitter<CR>
    nmap <Leader>twmy :UserTwitter<CR>
    nmap <Leader>twls :FriendsTwitter<CR>
    nmap <Leader>twpb :PublicTwitter<CR>
    nmap <Leader>twmt :MentionsTwitter<CR>
    nmap <Leader>twdm :DMTwitter<CR>
    nmap <Leader>twre :RetweetedByMeTwitter<CR>

endif

if IsPlatform('win')
    let g:netrw_http_cmd = $VIM.'\plugged\binary-utils\dist\bin\curl.exe -o'
endif

if IsPlatform('win')
    let g:pydoc_cmd = "python C:\\Python27\\Lib\\pydoc.py"
endif

" DirDiff
if s:plugged('vim-dirdiff')
    let g:DirDiffExcludes = 'CVS,*.class,*.exe,.*.swp,.svn,.git,assets,tags'
endif

" ALE settings
if s:plugged('ale')"{{{
    let g:ale_sign_column_always = 0
    let g:ale_set_highlights = 0
    let g:ale_set_signs = 0
    let g:ale_sign_highlight_linenrs = 1
    let g:airline#extensions#ale#enabled = 1
    let g:ale_sign_error = '✗'
    let g:ale_sign_warning = '⚠'
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

    let g:ale_fix_on_save = 0
    let g:ale_php_phpcs_standard = 'PSR2'
    let g:ale_php_phpcs_executable='./vendor/bin/phpcs'
    let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'
    let g:ale_fixers = {'php': ['php_cs_fixer']}

    let g:ale_lint_on_save = 0
    let g:ale_linters = {'php': ['phpstan'], 'markdown': ['markdownlint']}
    let g:ale_php_phpstan_executable='./vendor/bin/phpstan'
    let g:ale_php_phpstan_configuration='./phpstan.neon'
    let g:ale_php_phpstan_level=7

    " 普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
    nmap sp <Plug>(ale_previous_wrap)
    nmap sn <Plug>(ale_next_wrap)
    " 触发/关闭语法检查
    nmap <Leader>at :ALEToggle<CR>
    " 查看错误或警告的详细信息
    nmap <Leader>ad :ALEDetail<CR>
    nmap <Leader>af :ALEFix<CR>

    " autocmd FileType php let b:ale_disable_lsp = 1
endif"}}}

" pdv settings
if s:plugged('pdv')
    
    let g:pdv_template_dir = $HOME .'/.vim/plugged/pdv/templates_snip'

    augroup pdv
        au!
        autocmd FileType php nnoremap <buffer> <Leader>\\ :call pdv#DocumentWithSnip()<CR>
    augroup END

endif

" easy-align settings
if s:plugged('vim-easy-align')

    vmap <Leader>al <Plug>(EasyAlign)

    let g:easy_align_ignore_groups = ['String']

endif

" vim-markdown
if s:plugged('vim-markdown')

    let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'php', 'bash=sh']

endif

" leaderf settings
if s:plugged('LeaderF')"{{{

    let g:Lf_DefaultMode     = 'NameOnly'
    let g:Lf_DelimiterChar   = ";"
    let g:Lf_DevIconsFont    = "CaskaydiaCove Nerd Font"
    let g:Lf_ExternalCommand = 'rg --files --no-ignore --follow "%s"'
    let g:Lf_PopupShowFoldcolumn = 0 " Bring left border of the popup window into alignment.
    let g:Lf_PreviewInPopup  = 1
    let g:Lf_ReverseOrder    = 1
    let g:Lf_ShortcutF       = '<C-P>'
    let g:Lf_ShowDevIcons    = 1
    let g:Lf_ShowHidden      = 1
    let g:Lf_StlSeparator    = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "Cascadia Code PL" }
    let g:Lf_WindowPosition  = 'popup'

    let g:Lf_CommandMap      = {
                \'<C-c>': ['<Esc>', '<C-c>'],
                \'<C-j>': ['<C-n>', '<C-j>'],
                \'<C-k>': ['<C-p>', '<C-k>'],
                \}
    let g:Lf_RgConfig        = [
        \ "--hidden"
    \ ]

    let g:Lf_GtagsAutoGenerate = 0
    let g:Lf_GtagsGutentags = 1
    let g:Lf_CacheDirectory = expand('~')

    " " Looks not so good.
    " let g:Lf_PopupShowBorder = 1
    " let g:Lf_PopupBorders = ["─","│","─","│","╭","╮","╯","╰"]

    " autocmd FileType leaderf setlocal signcolumn=no

    nmap <Leader>be  :LeaderfBuffer<CR>
    nmap <Leader>bf  :LeaderfFunction<CR>
    nmap <Leader>bt  :LeaderfBufTag<CR>
    nmap <Leader>cl  :LeaderfColorscheme<CR>
    nmap <Leader>cm  :LeaderfCommand<CR>
    nmap <Leader>fh  :LeaderfHistoryCmd<CR>
    nmap <Leader>fl  :LeaderfLine<CR>
    nmap <Leader>hp  :LeaderfHelp<CR>
    nmap <Leader>mru :LeaderfMru<CR>
    nmap <Leader>ot  :call <SID>flexible_leaderf_tag()<CR>

    noremap <Leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
    noremap <Leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
    noremap <Leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
    noremap <Leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
    noremap <Leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

    function! s:flexible_leaderf_tag()"{{{
        let l:sub_cmd = 'tag'

        if exists('g:gutentags_modules') && index(g:gutentags_modules, 'gtags_cscope') >= 0
            let l:sub_cmd = 'gtags'
        endif

        let l:cmd = "Leaderf " . l:sub_cmd

        let l:cword = s:get_cword_safely()
        if l:cword != ''
            let l:cmd = l:cmd . " --input " . l:cword
        endif

        exec l:cmd
    endfunction"}}}
endif"}}}

" Leaderf-phpnamespace settings
if s:plugged('Leaderf-phpnamespace')

    augroup leaderf_phpnamespace
        au!
        autocmd FileType php noremap <buffer> <Leader>iu :<C-U><C-R>=printf("Leaderf phpns --input %s", expand("<cword>"))<CR><CR>
        autocmd FileType php noremap <buffer> <Leader>ec :<C-U><C-R>=printf("Leaderf phpns --input %s --expand", expand("<cword>"))<CR><CR>
    augroup END

endif

" bufferline.nvim settings
if s:plugged('bufferline.nvim')

    nnoremap L :BufferLineCycleNext<CR>
    nnoremap H :BufferLineCyclePrev<CR>

    nnoremap <silent><A-L> :BufferLineMoveNext<CR>
    nnoremap <silent><A-H> :BufferLineMovePrev<CR>

    nnoremap <silent><Leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
    nnoremap <silent><Leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
    nnoremap <silent><Leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
    nnoremap <silent><Leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
    nnoremap <silent><Leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
    nnoremap <silent><Leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
    nnoremap <silent><Leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
    nnoremap <silent><Leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
    nnoremap <silent><Leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
    nnoremap <silent><Leader>0 <Cmd>BufferLineGoToBuffer -1<CR>

    autocmd TabNewEntered * BufferLineSortByTabs

lua << EOF
require("bufferline").setup({
    options = {
        mode = "tabs",
        separator_style = "slant",
        numbers = function(opts)
            return string.format('%s.%s', opts.ordinal, opts.raise(opts.id))
        end,
        close_command = "bdelete! %d",
        right_mouse_command = nil,
        left_mouse_command = nil,
        middle_mouse_command = nil,
        indicator = {
            style = 'icon',
            icon = '▎',
        },
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 10,
        diagnostics = 'coc',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = ""
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " " or (e == "warning" and " " or "")
                s = s .. sym
            end
            return s
        end,
        custom_filter = function(bufnr)
            -- if the result is false, this buffer will be shown, otherwise, this
            -- buffer will be hidden.

            -- filter out filetypes you don't want to see
            local exclude_ft = { "qf", "fugitive", "git" }
            local cur_ft = vim.bo[bufnr].filetype
            local should_filter = vim.tbl_contains(exclude_ft, cur_ft)

            if should_filter then
                return false
            end

            return true
        end,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        enforce_regular_tabs = false,
        always_show_bufferline = false,
        sort_by = "tabs",
    },
})
EOF

endif

" lualine settings
if s:plugged('lualine.nvim')

lua << END
require('lualine').setup{
    options = {
        icons_enabled = true,
        theme = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { {'branch', icon = ''} },
        lualine_c = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
        },
        lualine_x = {
            { 'diagnostics', sources = { "coc" }, symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' } },
            'encoding',
            'filetype'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
        },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {'fugitive', 'nvim-tree', 'quickfix', 'toggleterm'},
}
END

endif

" airline settings
if s:plugged('vim-airline')

    let g:airline_powerline_fonts = 1
    let g:airline#extensions#wordcount#enabled               = 1
    let g:airline#extensions#tabline#enabled                 = 1
    let g:airline#extensions#tabline#show_splits             = 0
    let g:airline#extensions#tabline#show_buffers            = 0
    let g:airline#extensions#tabline#show_tabs               = 1
    let g:airline#extensions#tabline#show_tab_type           = 1
    let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
    let g:airline#extensions#tabline#exclude_preview         = 1
    let g:airline#extensions#tabline#tab_nr_type             = 2
    let g:airline#extensions#tabline#buffer_idx_mode         = 1

    nmap <Leader>1 <Plug>AirlineSelectTab1
    nmap <Leader>2 <Plug>AirlineSelectTab2
    nmap <Leader>3 <Plug>AirlineSelectTab3
    nmap <Leader>4 <Plug>AirlineSelectTab4
    nmap <Leader>5 <Plug>AirlineSelectTab5
    nmap <Leader>6 <Plug>AirlineSelectTab6
    nmap <Leader>7 <Plug>AirlineSelectTab7
    nmap <Leader>8 <Plug>AirlineSelectTab8
    nmap <Leader>9 <Plug>AirlineSelectTab9
    " nmap <Leader>- <Plug>AirlineSelectPrevTab
    " nmap <Leader>+ <Plug>AirlineSelectNextTab

    " let g:airline#extensions#xkblayout#enabled = 1
    " let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'
    call airline#parts#define_function('cwd', 'GetCWD')
    fun! GetCWD()"{{{
        return fnamemodify(getcwd(), ":t")
    endfun"}}}
    " Options: ['cwd', 'mode', 'crypt', 'paste', 'keymap', 'spell', 'capslock', 'xkblayout', 'iminsert']
    let g:airline_section_a = airline#section#create_left(['cwd', 'crypt', 'paste', 'keymap', 'spell', 'capslock', 'xkblayout', 'iminsert'])

endif

" mason.nvim settings
if s:plugged('mason.nvim')

lua << EOF
require("mason").setup()
EOF

endif

" mason-lspconfig.nvim settings
if s:plugged('mason-lspconfig.nvim')

lua << EOF
require("mason-lspconfig").setup({
    ensure_installed = { 'sumneko_lua', 'intelephense', 'bashls', 'grammarly', 'jsonls', 'vimls', 'yamlls' }
})
EOF

endif

" mason-tool-installer.nvim settings
if s:plugged('mason-tool-installer.nvim')

lua << EOF
require('mason-tool-installer').setup {

  -- a list of all tools you want to ensure are installed upon
  -- start; they should be the names Mason uses for each tool
  ensure_installed = {
      'php-debug-adapter'
  },

  -- if set to true this will check each tool for updates. If updates
  -- are available the tool will be updated. This setting does not
  -- affect :MasonToolsUpdate or :MasonToolsInstall.
  -- Default: false
  auto_update = false,

  -- automatically install / update on startup. If set to false nothing
  -- will happen on startup. You can use :MasonToolsInstall or
  -- :MasonToolsUpdate to install tools and check for updates.
  -- Default: true
  run_on_start = true,

  -- set a delay (in ms) before the installation starts. This is only
  -- effective if run_on_start is set to true.
  -- e.g.: 5000 = 5 second delay, 10000 = 10 second delay, etc...
  -- Default: 0
  start_delay = 3000, -- 3 second delay
}
EOF

endif

" lspconfig settings
if s:plugged('nvim-lspconfig')

lua << EOF
local lsp_defaults = {
    flags = {
        debounce_text_changes = 150,
    },
    capabilities = require('cmp_nvim_lsp').update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    ),
    on_attach = function(client, bufnr)
        vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
    end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
    'force',
    lspconfig.util.default_config,
    lsp_defaults
)

lspconfig['intelephense'].setup{
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    settings = {
        intelephense = {
            files = {
                maxSize = 3000000;
            },
            environment = {
                phpVersion = "8.1.0",
            }
        }
    }
}
lspconfig['bashls'].setup{}
lspconfig['grammarly'].setup{}
lspconfig['jsonls'].setup{}
lspconfig['vimls'].setup{}
lspconfig['yamlls'].setup{}
lspconfig['sumneko_lua'].setup {
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    vim.api.nvim_get_runtime_file("", true),
                    string.format('%s/.hammerspoon/Spoons/EmmyLua.spoon/annotations', os.getenv('HOME')),
                },
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
-- lspconfig['phpactor'].setup{
--     on_attach = on_attach,
--     init_options = {
--         ["language_server_phpstan.enabled"] = true,
--     }
-- }

EOF

endif

" lspkind settings
if s:plugged('lspkind.nvim')

lua << EOF
require('lspkind').init({
    -- DEPRECATED (use mode instead): enables text annotations
    --
    -- default: true
    -- with_text = true,

    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})
EOF

endif

" nvim-cmp settings
if s:plugged('nvim-cmp')

lua << EOF
local cmp = require('cmp')
local ultisnips_mappings = require('cmp_nvim_ultisnips.mappings')
local lspkind = require('lspkind')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'ultisnips' },
        { name = 'buffer' },
        -- { name = 'copilot' },
    },
    formatting = {
        format = lspkind.cmp_format({with_text = false, maxwidth = 50}),
    },
    experimental = {
        ghost_text = true
    },
    mapping = {
        ['<Tab>'] = cmp.mapping(
            function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                else
                    ultisnips_mappings.expand_or_jump_forwards(fallback)
                end
            end,
            {'i', 's'}
        ),
        ['<S-Tab>'] = cmp.mapping(
            function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                else
                    ultisnips_mappings.jump_backwards(fallback)
                end
            end,
            {'i', 's'}
        ),
        ['<CR>'] = function(fallback)
            if cmp.visible() then
                cmp.confirm()
            else
                fallback() -- If you use vim-endwise, this fallback will behave the same as vim-endwise.
            end
        end,
    }
})
EOF

endif

" lspsaga settings.
if s:plugged('lspsaga.nvim')

lua << EOF
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<A-K>',      '<Cmd>Lspsaga      hover_doc<CR>',            opts)
vim.keymap.set("n", "<Leader>ca", "<cmd>Lspsaga      code_action<CR>",          opts)
vim.keymap.set("v", "<Leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>",    opts)
vim.keymap.set("n", "<Leader>sh", "<Cmd>Lspsaga      signature_help<CR>",       opts)
vim.keymap.set("n", "<Leader>pd", "<cmd>Lspsaga      preview_definition<CR>",   opts)
vim.keymap.set("n", "]E",         "<cmd>Lspsaga      diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "[E",         "<cmd>Lspsaga      diagnostic_jump_prev<CR>", opts)
vim.keymap.set('n', '<Space>gr',  '<Cmd>Lspsaga      lsp_finder<CR>',           opts)
-- vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

require('lspsaga').init_lsp_saga({
    --the range of 0 for fully opaque window (disabled) to 100 for fully
    --transparent background. Values between 0-30 are typically most useful.
    saga_winblend = 0,
    show_diagnostic_source = true,
})
EOF

endif

" gitsigns.nvim settings
if s:plugged('gitsigns.nvim')

lua << EOF
require('gitsigns').setup()
EOF

endif

" spellsitter.nvim settings
if s:plugged('spellsitter.nvim')

lua << EOF
require('spellsitter').setup()
EOF

endif

" vim-choosewin
if s:plugged('vim-choosewin')

    nmap - <Plug>(choosewin)

    let g:choosewin_overlay_enable = 0

endif

" wildfire
if s:plugged('wildfire.vim')

    nmap <Leader>vv <Plug>(wildfire-quick-select)

endif

" vim-test settings
if s:plugged('vim-test')

    let g:test#runner_commands = ['PHPUnit']

    augroup vim_test"{{{
        au!
        autocmd FileType php nnoremap <buffer> <Leader>tT :call MyTestRun('nothing')<CR>:PHPUnit <C-R>=expand('%:.')<CR> --filter '::test'<Left>
        autocmd FileType php nnoremap <buffer> <Leader>tn :call MyTestRun('nearest')<CR>
        autocmd FileType php nnoremap <buffer> <Leader>tL :call MyTestRun('last')<CR>
        autocmd FileType php nnoremap <buffer> <Leader>tF :call MyTestRun('file')<CR>
        autocmd FileType php nnoremap <buffer> <Leader>trbn :TestNearest -d rebase<CR>
        autocmd FileType php nnoremap <buffer> <Leader>trbf :TestFile -d rebase<CR>
    augroup END"}}}

    function! MyTestRun(runner)"{{{
        if (exists('g:vimspector_is_running'))
            let g:test#php#phpunit#executable = 'env XDEBUG_SESSION=1 ./vendor/bin/phpunit'
        else
            let g:test#php#phpunit#executable = './vendor/bin/phpunit'
        endif

        if a:runner == "nothing"
            return ""
        endif

        call test#run(a:runner, [])
    endfunction"}}}

endif

if has('nvim')
    " let test#strategy = 'asyncrun'
    " let test#strategy = 'make'
    " let test#strategy = 'dispatch'
    " let test#strategy = 'vimproc'
    let test#strategy = 'neovim'
else
    " let test#strategy = 'asyncrun'
    " let test#strategy = 'dispatch'
    let test#strategy = 'vimterminal'
    " let test#vim#term_position = "topleft"
endif

" Git mappings, coc, fugitive settings
if s:plugged('vim-fugitive')

    nnoremap <Leader>g.  :tab G<CR>
    nnoremap <Leader>gl  <Cmd>Git pull<CR>
    nnoremap <Leader>gp  <Cmd>Git push<CR>
    nnoremap <Leader>dgh <Cmd>diffget //2<CR>
    nnoremap <Leader>dgl <Cmd>diffget //3<CR>
    nnoremap gb          <Cmd>Git blame<CR>

endif
if s:plugged('coc.nvim')

    nnoremap <Leader>gb  <Cmd>CocList branches<CR>
    nnoremap <Leader>gB  <Cmd>CocList branches -a<CR>

endif
" git-time-lapse settings
if s:plugged('git-time-lapse')

    nnoremap <Leader>gtl <Cmd>GitTimeLapse<CR>

endif
" vim-twiggy settings
if s:plugged('vim-twiggy')

    nnoremap <Leader>lb :Twiggy<CR>

    let g:twiggy_group_locals_by_slash = 0
    let g:twiggy_local_branch_sort     = 'mru'
    let g:twiggy_remote_branch_sort    = 'date'
    let g:twiggy_num_columns           = 50

endif
" git-conflict settings
if s:plugged('git-conflict.nvim')

lua << EOF
require('git-conflict').setup({
    default_mappings = true,
    disable_diagnostics = false,
    highlights = {
        incoming = 'DiffText',
        current = 'DiffAdd',
    }
})
EOF

endif

" gv.vim settings
if s:plugged('gv.vim')

    nnoremap <Leader>gvl :GV  --pretty=%cd\ %h%d\ %s\ (%an,\ %ci) --date=format:%Y-%m-%d --abbrev-commit --no-merges<CR>
    nnoremap <Leader>gvc :GV! --pretty=%cd\ %h%d\ %s\ (%an,\ %ci) --date=format:%Y-%m-%d --abbrev-commit --no-merges<CR>
    nnoremap <Leader>gva :GV  --pretty=%cd\ %h%d\ %s\ (%an,\ %ci) --date=format:%Y-%m-%d --abbrev-commit --no-merges --author<space>
    nnoremap <Leader>gvg :GV  --pretty=%cd\ %h%d\ %s\ (%an,\ %ci) --date=format:%Y-%m-%d --abbrev-commit --no-merges --grep<space>
    vnoremap <Leader>gvc :GV!<CR>

    augroup gv
        autocmd FileType git set fdl=0
    augroup END

endif

" vim-flog settings
if s:plugged('vim-flog')

    nnoremap <Leader>gvv :Flog -all<CR>

    if s:plugged('AnsiEsc.vim')
        let g:flog_use_ansi_esc = 1
    endif

endif

" auto-pairs settings
if s:plugged('auto-pairs')

    let g:AutoPairsMapCh = 0

endif

" Nord color scheme
if s:plugged('nord-vim')

    let g:nord_italic = 1
    let g:nord_italic_comments = 1

endif

" vim-fontsize
if s:plugged('vim-fontsize')

    nmap <silent> <Leader>=  <Plug>FontsizeBegin
    nmap <silent> <Leader>+  <Plug>FontsizeInc
    nmap <silent> <Leader>-  <Plug>FontsizeDec
    nmap <silent> <Leader>0  <Plug>FontsizeDefault

endif

" Toggle terminal
if has('nvim') && s:plugged('toggleterm.nvim')

lua << EOF
require("toggleterm").setup{
    open_mapping    = [[<c-\>]],
    direction       = 'float',
    insert_mappings = true,
    shade_terminals = false, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
}
EOF

elseif has('nvim') && s:plugged('nvim-toggle-terminal')

    nnoremap <silent> <C-\> :ToggleTerminal<Enter>
    tnoremap <silent> <C-\> <C-\><C-n>:ToggleTerminal<Enter>

elseif s:plugged('toggle-terminal')

    let g:toggle_terminal#command = 'zsh'

    nnoremap <silent> <C-\> :ToggleTerminal<CR>
    tnoremap <silent> <C-\> <C-w>:ToggleTerminal<CR>

endif

" startify settings
if s:plugged('vim-startify')

    nnoremap <Leader><Leader>st :Startify<CR>

    let g:startify_change_to_vcs_root = 1
    let g:startify_session_dir = '~/.vim/sessions'
    let g:startify_session_sort = 1
    let g:startify_lists = [
                \ { 'type': 'files',     'header': ['   MRU']            },
                \ { 'type': 'sessions',  'header': ['   Sessions']       },
                \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
                \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
                \ { 'type': 'commands',  'header': ['   Commands']       },
                \ ]

endif

" Gutentags settings
if s:plugged('vim-gutentags')

    " " Use gtags
    " let g:gutentags_modules = ['gtags_cscope']

    " Use ctags
    let g:gutentags_modules          = ['ctags', 'gtags_cscope']
    let g:gutentags_ctags_exclude    = ['_ide_helper.php', 'Makefile', 'node_modules', '*.js', '*.json', '*.md', '*.ts']
    let g:gutentags_ctags_extra_args = ['--PHP-kinds=+cdfint-va']
    let g:gutentags_project_root     = ['.git'] " config project root markers.

    let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory . '/.LfCache/gtags')
    let g:gutentags_define_advanced_commands = 1

endif
if s:plugged('gutentags_plus')

    let g:gutentags_plus_nomap  = 1
    let g:gutentags_plus_switch = 1

    " noremap <silent> <Leader>gc :GscopeFind s <C-R><C-W><cr>
    " noremap <silent> <Leader>gc :GscopeFind g <C-R><C-W><cr>
    " noremap <silent> <Leader>gc :GscopeFind c <C-R><C-W><cr>
    " noremap <silent> <Leader>gt :GscopeFind t <C-R><C-W><cr>
    " noremap <silent> <Leader>ge :GscopeFind e <C-R><C-W><cr>
    " noremap <silent> <Leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
    " noremap <silent> <Leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
    " noremap <silent> <Leader>gd :GscopeFind d <C-R><C-W><cr>
    " noremap <silent> <Leader>ga :GscopeFind a <C-R><C-W><cr>
    " noremap <silent> <Leader>gz :GscopeFind z <C-R><C-W><cr>

endif

" gtags settings
if s:plugged('gtags.vim')

    let Gtags_Auto_Update       = 1
    let Gtags_Close_When_Single = 1
    let g:cscope_silent         = 1

    augroup gtags
        au!
        autocmd FileType php,python,c,cpp,javascript,go map <buffer> <C-]> :Gtags<CR><CR>
        if has('gui_running')
            autocmd FileType php,python,c,cpp,javascript,go map <buffer> <C-S-]> :Gtags -r<CR><CR>
        endif
    augroup END

endif

" undotree
if s:plugged('undotree')

    nnoremap <Leader>ut :UndotreeToggle<CR>

endif

" merginal settings
if s:plugged('merginal')

    let g:merginal_splitType=''

endif

" defx settings
if s:plugged('defx.nvim')

    call defx#custom#option('_', {
                \ 'winwidth': 50,
                \ 'split': 'vertical',
                \ 'direction': 'topleft',
                \ 'show_ignored_files': 0,
                \ 'buffer_name': 'tabfx',
                \ 'columns': 'icon:icons:indent:filename:git:size',
                \ 'toggle': 1,
                \ 'resume': 1,
                \ 'listed': 1
                \ })

    call defx#custom#column('icon', {
                \ 'directory_icon': '▸',
                \ 'opened_icon': '▾',
                \ 'root_icon': '+',
                \ })

    call defx#custom#column('mark', {
                \ 'readonly_icon': '✗',
                \ 'selected_icon': '✓',
                \ })

    nnoremap <silent> <Leader>dt :<C-U>Defx<CR>
    nnoremap <silent>sf :<C-u>Defx -listed -resume -buffer-name=tab`tabpagenr()` `expand('%:p:h')` -search=`expand('%:p')`<CR>
    nnoremap <silent><Leader>fi :<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>

    augroup defx
        au!
        autocmd FileType defx call s:defx_mappings()
    augroup END

    function! s:defx_mappings() abort
        nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')
        nnoremap <silent><buffer><expr> <BS>  defx#do_action('cd', ['..'])
        nnoremap <silent><buffer><expr> <C-r> defx#do_action('redraw')
        nnoremap <silent><buffer><expr> D     defx#do_action('new_directory')
        nnoremap <silent><buffer><expr> N     defx#do_action('new_file')
        nnoremap <silent><buffer><expr> S     defx#do_action('toggle_sort', 'FILENAME')
        nnoremap <silent><buffer><expr> o     <SID>defx_toggle_tree()
        nnoremap <silent><buffer><expr> t     defx#do_action('open', 'tabnew')
    endfunction

    function! s:defx_toggle_tree() abort
        " Open current file, or toggle directory expand/collapse
        if defx#is_directory()
            return defx#do_action('open_or_close_tree')
        endif
        return defx#do_action('multi', ['drop'])
    endfunction

endif

" vim-clap
if s:plugged('vim-clap')

    " let g:clap_theme = 'material_design_dark'
    " let g:clap_theme = { 'search_text': {'guifg': 'red', 'ctermfg': 'red'} }
    let g:clap_provider_grep_executable = 'rg'
    let g:clap_provider_grep_opts = '--no-ignore-vcs --vimgrep --no-heading --no-config --max-columns 4096 --ignore-case --follow'

endif

" unimpaired
if s:plugged('vim-unimpaired')

    vmap <S-Up>    [egv
    vmap <S-Down>  ]egv
    vmap <S-Left>  <gv
    vmap <S-Right> >gv

endif

" dirbuf.nvim settings
if s:plugged('dirbuf.nvim')

    nmap _ <Plug>(dirbuf_up)

lua << EOF
require("dirbuf").setup {
    hash_padding = 2,
    show_hidden  = true,
    sort_order   = "directories_first",
}
EOF

endif

" dirvish settings
if s:plugged('vim-dirvish')

    let g:dirvish_mode = ':sort ,^\v(.*[\/])|\ze,'
    let g:dirvish_git_show_ignored = 0

    nmap <silent> <Space>- :Dirvish<CR>
    nmap <silent> _ :execute (@% == '' ? 'Dirvish' : 'Dirvish %')<CR>

    augroup dirvish
        au!
        autocmd FileType dirvish nmap <silent><buffer> _ <Plug>(dirvish_up)
    augroup END

    " --- dirvish-dovish settings ---{{{
    " unmap all default mappings
    let g:dirvish_dovish_map_keys = 0

    augroup dirvish_dovish_map_keys
        au!
        autocmd FileType dirvish unmap <buffer> p
        autocmd FileType dirvish nmap <silent><buffer> i  <Plug>(dovish_create_file)
        autocmd FileType dirvish nmap <silent><buffer> I  <Plug>(dovish_create_directory)
        autocmd FileType dirvish nmap <silent><buffer> dd <Plug>(dovish_delete)
        autocmd FileType dirvish nmap <silent><buffer> r  <Plug>(dovish_rename)
        autocmd FileType dirvish nmap <silent><buffer> yy <Plug>(dovish_yank)
        autocmd FileType dirvish xmap <silent><buffer> yy <Plug>(dovish_yank)
        autocmd FileType dirvish nmap <silent><buffer> p  <Plug>(dovish_copy)
        autocmd FileType dirvish nmap <silent><buffer> P  <Plug>(dovish_move)
    augroup END
    " --- END ---}}}

endif

" nvim-tree.lua settings
if s:plugged('nvim-tree.lua')

    nnoremap <silent> <Leader>tf :NvimTreeFindFileToggle<CR>
    nnoremap <silent> <Leader>tt :NvimTreeToggle<CR>

lua << EOF
require("nvim-tree").setup {
    view = {
        adaptive_size = true,
        centralize_selection = false,
        width = 50,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
            custom_only = false,
            list = {
                -- user mappings go here
                { key = "t", action = "tabnew" },
            },
        },
    },
    git = {
        enable = true,
        ignore = false,
        show_on_dirs = true,
        timeout = 400,
    },
    filters = {
        dotfiles = true,
    },
    hijack_directories = { enable = false },
}
EOF

endif

" sideways settings
" Move items/parameters/arguments left or right.
if s:plugged('sideways.vim')

    nnoremap <S-Left>  :SidewaysLeft<CR>
    nnoremap <S-Right> :SidewaysRight<CR>

endif

" vim-expand-region settings
if s:plugged('vim-expand-region')

    vmap v <Plug>(expand_region_expand)
    vmap V <Plug>(expand_region_shrink)

endif

" vim-silicon settings
if s:plugged('vim-silicon')

    let g:silicon = {
          \   'theme':              'Dracula',
          \   'font':                  'Hack',
          \   'background':         '#AAAAFF',
          \   'shadow-color':       '#555555',
          \   'line-pad':                   2,
          \   'pad-horiz':                 80,
          \   'pad-vert':                 100,
          \   'shadow-blur-radius':         0,
          \   'shadow-offset-x':            0,
          \   'shadow-offset-y':            0,
          \   'line-number':           v:false,
          \   'round-corner':          v:true,
          \   'window-controls':       v:false,
          \ }

endif

" which-key.nvim settings
if s:plugged('which-key.nvim')

lua << EOF
    require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
EOF

endif

" vim-which-key settings
if s:plugged('vim-which-key')

    let g:mapleader = ','
    let g:maplocalleader = ','
    let g:which_key_vertical = 1

    nnoremap <silent> <Leader>      :<c-u>WhichKey ','<CR>
    nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>

endif

" vim-fold-cycle settings
if s:plugged('vim-fold-cycle')

    let g:fold_cycle_default_mapping = 0 "disable default mappings

    nmap <Right> <Plug>(fold-cycle-open)
    nmap <Left> <Plug>(fold-cycle-close)

endif

" vira settings
if s:plugged('vira')

    " let g:vira_async_timer = 30000
    " let g:vira_async_timer_init = 30000
    let g:vira_config_file_servers  = $HOME . '/.config/vira/vira_servers.yaml'
    let g:vira_config_file_projects = $HOME . '/.config/vira/vira_projects.yaml'
    let g:vira_menu_height          = 50

    nnoremap <silent> <Leader>va  :ViraSetActiveTicket<space>
    nnoremap <silent> <Leader>vb  :ViraBrowse<CR>
    nnoremap <silent> <Leader>vc  :ViraComment<CR>
    nnoremap <silent> <Leader>ved :ViraEditDescription<CR>
    nnoremap <silent> <Leader>vfR :ViraFilterReset<CR>
    nnoremap <silent> <Leader>vfe :ViraFilterEdit<CR>
    nnoremap <silent> <Leader>vfr :ViraFilterReporter<CR>
    nnoremap <silent> <Leader>vfs :ViraFilterStatuses<CR>
    nnoremap <silent> <Leader>vi  :ViraIssues<CR>
    nnoremap <silent> <Leader>vq  :ViraQuit<CR>
    nnoremap <silent> <Leader>vr  :ViraReport<CR>
    nnoremap <silent> <Leader>vsa :ViraSetAssignee<CR>

    command! -nargs=1 ViraSetActiveIssue :call s:Vira_SetActiveIssue(<q-args>)
    function! s:Vira_SetActiveIssue(ticket_number)"{{{
        let g:vira_active_issue = 'DEV-' .. a:ticket_number
        ViraReport
    endfunction"}}}

    command! -nargs=0 ViraInitActiveIssue :call s:Vira_SetActiveIssueGivenCurrentGitBranch()
    function! s:Vira_SetActiveIssueGivenCurrentGitBranch()"{{{
        let l:current_branch_name = system("git branch --show-current")
        let g:vira_active_issue = matchstr(l:current_branch_name, 'DEV-\d\+')
    endfunction"}}}
    call s:Vira_SetActiveIssueGivenCurrentGitBranch()

endif

" textobj settings
if s:plugged('vim-textobj-lastpat')

    xmap an <Plug>(textobj-lastpat-n)
    omap an <Plug>(textobj-lastpat-n)
    xmap aN <Plug>(textobj-lastpat-N)
    omap aN <Plug>(textobj-lastpat-N)

endif

" rest.nvim settings
if s:plugged('rest.nvim')

    augroup rest.nvim
        au!
        autocmd FileType http nmap <buffer> <Leader>sr <Plug>RestNvim
        autocmd FileType http nmap <buffer> <Leader>sp <Plug>RestNvimPreview
        autocmd FileType http nmap <buffer> <Leader>sL <Plug>RestNvimLast
        autocmd FileType http set commentstring=\#%s
        " autocmd BufEnter * if &filetype == 'httpResult' | call <SID>save_cookie() | endif
        autocmd BufEnter * if &filetype == 'httpResult' | setl fdm=indent | setl fdl=1 | endif
    augroup END

    " Set g:http_response_header_uid, g:http_response_cookie_session in ~/.vimrc_private
    function s:save_cookie() abort"{{{
        let l:cookie = matchstr(getline(search('Set-Cookie:')), '\(' . g:http_response_cookie_session . '=\)\@<=\(.\{-}\)\(;\)\@=')

        if l:cookie == ''
            echoerr 'Cannot find a valid cookie.'
            return
        endif

        let l:env_var_by_uid = {
                    \"DiJeb7IQHo8FOFkXulieyA": "advisor",
                    \"eS2wb1cSveE3LPm9G5Z49A": "superadmin",
                    \}

        let l:uid = matchstr(getline(search(g:http_response_header_uid . ':\c')), '\(' . g:http_response_header_uid . ': \)\@<=\(.*\)')

        if !has_key(l:env_var_by_uid, l:uid)
            echoerr 'Cannot find valid user ID.'
            return
        endif

        let l:bak_file_ext_part = ''
        if IsPlatform('mac')
            let l:bak_file_ext_part = '""'
        endif

        call system('sed -i ' . l:bak_file_ext_part . ' "s/\(header_cookie_debug_' . l:env_var_by_uid[l:uid] . '_session=.*' . g:http_response_cookie_session . '=\)[0-9A-Za-z]*/\1' . l:cookie . '/" .env')
    endfunction"}}}

lua << EOF
require("rest-nvim").setup({
    -- Open request results in a horizontal split
    result_split_horizontal = false,
    -- Keep the http file buffer above|left when split horizontal|vertical
    result_split_in_place = true,
    -- Skip SSL verification, useful for unknown certificates
    skip_ssl_verification = false,
            -- Encode URL before making request
            encode_url = true,
    -- Highlight request on run
    highlight = {
        enabled = true,
        timeout = 150,
    },
    result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
        -- executables or functions for formatting response body [optional]
        -- set them to nil if you want to disable them
        formatters = {
        json = "jq",
        html = function(body)
            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
        end
        },
    },
    -- Jump to request line on run
    jump_to_request = false,
    env_file = '.env',
    custom_dynamic_variables = {},
    yank_dry_run = true,
})
EOF

endif

" vim-oscyank settings
if s:plugged('vim-oscyank') && !exists('g:neovide')

    augroup oscyank
        au!
        autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankReg +' | endif
    augroup END

endif

" nvim-colorizer settings
if s:plugged('nvim-colorizer.lua')

lua << EOF
require('colorizer').setup {
    '*';
    '!vim-plug';
}
EOF

endif

" diffview settings
" :DiffviewFileHistory
if s:plugged('diffview.nvim')
"{{{
lua << EOF
local actions = require("diffview.actions")

require'diffview'.setup {
    diff_binaries = false,    -- Show diffs for binaries
    enhanced_diff_hl = false, -- See ':h diffview-config-enhanced_diff_hl'
    use_icons = true,         -- Requires nvim-web-devicons
    icons = {                 -- Only applies when use_icons is true.
        folder_closed = "",
        folder_open = "",
    },
    signs = {
        fold_closed = "",
        fold_open = "",
    },
    file_panel = {
        win_config = {
            position = "left",            -- One of 'left', 'right', 'top', 'bottom'
            width = 35,                   -- Only applies when position is 'left' or 'right'
            height = 10,                  -- Only applies when position is 'top' or 'bottom'
        },
        listing_style = "tree",       -- One of 'list' or 'tree'
        tree_options = {              -- Only applies when listing_style is 'tree'
            flatten_dirs = true,
            folder_statuses = "always"  -- One of 'never', 'only_folded' or 'always'.
        }
    },
    file_history_panel = {
        win_config = {
            position = "bottom",
            width = 35,
            height = 16,
        },
        log_options = {
            single_file = {
                max_count = 256,      -- Limit the number of commits
                follow = false,       -- Follow renames (only for single file)
                all = false,          -- Include all refs under 'refs/' including HEAD
                merges = false,       -- List only merge commits
                no_merges = false,    -- List no merge commits
                reverse = false,      -- List commits in reverse order
            },
            multi_file = {
                max_count = 256,      -- Limit the number of commits
                all = false,          -- Include all refs under 'refs/' including HEAD
                merges = false,       -- List only merge commits
                no_merges = false,    -- List no merge commits
                reverse = false,      -- List commits in reverse order
            }
        },
    },
    default_args = {    -- Default args prepended to the arg-list for the listed commands
        DiffviewOpen = {},
        DiffviewFileHistory = {},
    },
    keymaps = {
        disable_defaults = true, -- Disable the default keymaps
        view = {
            -- The `view` bindings are active in the diff buffers, only when the current
            -- tabpage is a Diffview.
            ["<tab>"]      = actions.select_next_entry, -- Open the diff for the next file
            ["<s-tab>"]    = actions.select_prev_entry, -- Open the diff for the previous file
            ["gf"]         = actions.goto_file_tab,         -- Open the file in a new split in previous tabpage
            ["<C-w><C-f>"] = actions.goto_file_split,   -- Open the file in a new split
            ["<C-w>gf"]    = actions.goto_file,     -- Open the file in a new tabpage
            ["<Leader>e"]  = actions.focus_files,       -- Bring focus to the files panel
            ["<Leader>b"]  = actions.toggle_files,      -- Toggle the files panel.
        },
        file_panel = {
            ["j"]             = actions.next_entry,         -- Bring the cursor to the next file entry
            ["<down>"]        = actions.next_entry,
            ["k"]             = actions.prev_entry,         -- Bring the cursor to the previous file entry.
            ["<up>"]          = actions.prev_entry,
            ["<cr>"]          = actions.select_entry,       -- Open the diff for the selected entry.
            ["o"]             = actions.select_entry,
            ["<2-LeftMouse>"] = actions.select_entry,
            ["-"]             = actions.toggle_stage_entry, -- Stage / unstage the selected entry.
            ["S"]             = actions.stage_all,          -- Stage all entries.
            ["U"]             = actions.unstage_all,        -- Unstage all entries.
            ["X"]             = actions.restore_entry,      -- Restore entry to the state on the left side.
            ["R"]             = actions.refresh_files,      -- Update stats and entries in the file list.
            ["I"]             = actions.open_commit_log,    -- Open the commit log panel.
            ["<c-b>"]         = actions.scroll_view(-0.25), -- Scroll the view up
            ["<c-f>"]         = actions.scroll_view(0.25),  -- Scroll the view down
            ["<tab>"]         = actions.select_next_entry,
            ["<s-tab>"]       = actions.select_prev_entry,
            ["gf"]            = actions.goto_file_tab,
            ["<C-w><C-f>"]    = actions.goto_file_split,
            ["<C-w>gf"]       = actions.goto_file,
            ["i"]             = actions.listing_style,        -- Toggle between 'list' and 'tree' views
            ["f"]             = actions.toggle_flatten_dirs,  -- Flatten empty subdirectories in tree listing style.
            ["<Leader>e"]     = actions.focus_files,
            ["<Leader>b"]     = actions.toggle_files,
        },
        file_history_panel = {
            ["g!"]            = actions.options,          -- Open the option panel
            ["O"]             = actions.open_in_diffview, -- Open the entry under the cursor in a diffview
            ["y"]             = actions.copy_hash,        -- Copy the commit hash of the entry under the cursor
            ["I"]             = actions.open_commit_log,
            ["zR"]            = actions.open_all_folds,
            ["zM"]            = actions.close_all_folds,
            ["j"]             = actions.next_entry,
            ["<down>"]        = actions.next_entry,
            ["k"]             = actions.prev_entry,
            ["<up>"]          = actions.prev_entry,
            ["<cr>"]          = actions.select_entry,
            ["o"]             = actions.select_entry,
            ["<2-LeftMouse>"] = actions.select_entry,
            ["<c-b>"]         = actions.scroll_view(-0.25),
            ["<c-f>"]         = actions.scroll_view(0.25),
            ["<tab>"]         = actions.select_next_entry,
            ["<s-tab>"]       = actions.select_prev_entry,
            ["gf"]            = actions.goto_file_tab,
            ["<C-w><C-f>"]    = actions.goto_file_split,
            ["<C-w>gf"]       = actions.goto_file,
            ["<Leader>e"]     = actions.focus_files,
            ["<Leader>b"]     = actions.toggle_files,
        },
        option_panel = {
            ["<tab>"] = actions.select_entry,
            ["q"]     = actions.close,
        },
    },
}

function _G.diff_view_commit(commit_hash)
    require'diffview'.open(commit_hash .. '~1..' .. commit_hash)
end
EOF
"}}}

    nnoremap <Leader>dv :DiffviewOpen<CR>
    nnoremap <Leader>df :DiffviewFileHistory %<CR>
    nnoremap <Leader>dh :call v:lua.diff_view_commit('HEAD')<CR>

    augroup diffview
        au!
        autocmd FileType    GV        call <SID>MapKeyBindingsForGv()
        autocmd FileType    floggraph nnoremap <buffer> vv <Esc>:call <SID>DiffviewCommitUnderCursorInFlog()<CR>
        autocmd BufWinEnter diffview://*/log/*/commit_log nnoremap <buffer> q <Cmd>q<CR>
        if s:plugged('git-blame.nvim')
            autocmd User DiffviewViewEnter exec 'GitBlameDisable'
            autocmd User DiffviewViewLeave exec 'GitBlameEnable'
        endif
    augroup END

    function! s:MapKeyBindingsForGv()
        exec 'nnoremap ri <Esc>:call <SID>RebaseInteractivelySinceCommitUnderCursorInGv()<CR>'
        exec 'nnoremap vv <Esc>:call <SID>DiffviewCommitUnderCursorInGv()<CR>'
    endfunction

    function! s:RebaseInteractivelySinceCommitUnderCursorInGv()
        normal! ^2f w
        exec 'Git rebase --interactive ' . expand('<cword>') . '~1'
    endfunction

    function! s:DiffviewCommitUnderCursorInGv()
        normal! ^2f w
        call v:lua.diff_view_commit(expand('<cword>'))
    endfunction

    function! s:DiffviewCommitUnderCursorInFlog()
        normal! ^f[w
        call v:lua.diff_view_commit(expand('<cword>'))
    endfunction
endif

" git-blame settings
if s:plugged('git-blame.nvim')

    let g:gitblame_ignored_filetypes = ['GV', 'DiffviewFiles']

endif

" Tabular settings
if s:plugged('tabular')

    augroup tabular
        au!
        autocmd FileType markdown inoremap <silent><buffer> <Bar> <Bar><Esc>:call <SID>align()<CR>a
    augroup END

    function! s:align()"{{{
        let p = '^\s*|\s.*\s|\s*$'
        if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
            let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
            let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
            Tabularize/|/l1
            normal! 0
            call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
        endif
    endfunction"}}}

endif

" vista settings
if s:plugged('vista.vim')

    nnoremap <silent> <Leader>tb :Vista!!<CR>

    let g:vista_ignore_kinds = ['Variable', 'Function']
    let g:vista_sidebar_position = 'vertical botright'
    let g:vista_sidebar_width = 50
    let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
    let g:vista_fzf_preview = ['right:50%']
    let g:vista#renderer#enable_icon = 1
    let g:vista#renderer#icons = {
                \   "function": "\uf794",
                \   "variable": "\uf71b",
                \  }
    let g:vista_stay_on_open = 0

    if s:plugged('coc.nvim')
        let g:vista_default_executive = 'coc'
        let g:vista_executive_for = {
                    \ 'php': 'coc',
                    \ }
    elseif s:plugged('nvim-lspconfig')
        let g:vista_default_executive = 'nvim_lsp'
        let g:vista_executive_for = {
                    \ 'php': 'nvim_lsp',
                    \ }
    endif

    augroup vista
        au!
        " Close vista if it is the last window opened
        autocmd BufEnter * if winnr("$") == 1 && vista#sidebar#IsOpen() | execute "normal! :q!\<CR>" | endif
    augroup END

endif

" Telescope settings
if s:plugged('telescope.nvim')
    nnoremap <Leader>tslg <cmd>Telescope live_grep<CR>

lua << EOF
require('telescope').setup{
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
            i = {
                ["<esc>"] = require('telescope.actions').close,
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                ["<C-h>"] = "which_key",
                ["<C-j>"] = require('telescope.actions').move_selection_next,
                ["<C-k>"] = require('telescope.actions').move_selection_previous
            }
        }
    },
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    }
}
EOF
endif

" auto-session settings
if s:plugged('auto-session')
    set sessionoptions+=winpos,terminal,folds

    let g:auto_session_pre_save_cmds = ["call CleanupBeforeSaveSession()"]

    nnoremap <Leader>os :<C-u>SearchSession<CR>
    nnoremap <Leader>ss :<C-u>SaveSession<CR>

lua << EOF
require('auto-session').setup {
    log_level = 'error',
    auto_session_use_git_branch = true,
    auto_session_enabled = true,
    auto_session_create_enabled = false,
    auto_save_enabled = false,
    auto_restore_enabled = true,
}
EOF

    function! CleanupBeforeSaveSession()"{{{
        let l:current_tab = tabpagenr()

        execute 'tabdo NvimTreeClose'
        execute 'tabdo Vista!'
        execute 'tabdo windo call CloseSessionUnconcernedTabs()'

        execute 'tabnext' l:current_tab
    endfunction"}}}
    function! CloseSessionUnconcernedTabs()"{{{
        let l:ft = &ft

        if l:ft == 'GV'
            execute ':tabclose'
        elseif l:ft == 'DiffviewFiles' || l:ft == 'DiffviewFileHistory'
            execute ':DiffviewClose'
        endif
    endfunction"}}}

endif

" session-lens settings
if s:plugged('session-lens')
lua << EOF
require('session-lens').setup {
    path_display = {'shorten'},
    -- previewer = true
}
EOF
endif

" vim-lua-format settings
if s:plugged('vim-lua-format')
    " TODO: Choose a proper key binding "
    " autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<CR>
    " autocmd BufWrite *.lua call LuaFormat()
endif

" gist-vim settings
if s:plugged('gist-vim')

    nnoremap <Leader><Leader>gl <Cmd>Gist -l<CR>
    nnoremap <Leader><Leader>gb <Cmd>Gist -b<CR>

endif

" vimspector settings{{{
if s:plugged('vimspector')

    let g:vimspector_install_gadgets = [ 'debugpy' ]
    let g:vimspector_sign_priority = {
                \    'vimspectorBP':         999,
                \    'vimspectorBPCond':     999,
                \    'vimspectorBPLog':      999,
                \    'vimspectorBPDisabled': 999,
                \    'vimspectorPC':         999,
                \ }

    augroup vimspector_mappings
        au!
        autocmd FileType lua,php,python nmap <silent> <buffer> <F5>         <Plug>VimspectorContinue
        autocmd FileType lua,php,python nmap <silent> <buffer> <F9>         <Plug>VimspectorToggleBreakpoint
        autocmd FileType lua,php,python nmap <silent> <buffer> <Leader><F9> <Plug>VimspectorToggleConditionalBreakpoint
    augroup END

    let s:vimspector_keymaps = [
                \{ 'mode': 'n', 'key': '<F3>',                 'callback': '<Cmd>call vimspector#Reset()<CR>' },
                \{ 'mode': 'n', 'key': '<F4>',                 'callback': '<Plug>VimspectorRestart' },
                \{ 'mode': 'n', 'key': '<F8>',                 'callback': '<Plug>VimspectorRunToCursor' },
                \{ 'mode': 'n', 'key': '<F10>',                'callback': '<Plug>VimspectorStepOver' },
                \{ 'mode': 'n', 'key': '<F11>',                'callback': '<Plug>VimspectorStepInto' },
                \{ 'mode': 'n', 'key': '<F12>',                'callback': '<Plug>VimspectorStepOut' },
                \{ 'mode': 'n', 'key': '<Leader>bp',           'callback': '<Plug>VimspectorBreakpoints' },
                \{ 'mode': 'n', 'key': '<Leader><Leader><F3>', 'callback': '<Plug>VimspectorStop' },
                \{ 'mode': 'n', 'key': '<Leader>die',          'callback': "<Cmd>call vimspector#Evaluate(input('[Expression] > '))<CR>" },
                \{ 'mode': 'n', 'key': '<Leader>diw',          'callback': '<Plug>VimspectorBalloonEval' },
                \{ 'mode': 'x', 'key': '<Leader>di',           'callback': '<Plug>VimspectorBalloonEval' },
                \{ 'mode': 'n', 'key': '<Leader>dwe',          'callback': "<Cmd>call vimspector#AddWatch(input('[Expression] > '))<CR>" },
                \]

    augroup vimspector_ui_customization
        au!
        autocmd User VimspectorUICreated               call s:vimspector_customize_ui() | call s:vimspector_customize_buffer() | let g:vimspector_is_running = 1
        autocmd User VimspectorTerminalOpened          call s:vimspector_customize_terminal()
        autocmd User VimspectorJumpedToFrame           call s:vimspector_customize_buffer()
        autocmd User VimspectorDebugEnded     ++nested call s:vimspector_on_debug_end() | unlet g:vimspector_is_running
    augroup END

    let s:vimspector_mapped = {}

    function! s:vimspector_customize_buffer() abort"{{{
        if has_key(s:vimspector_mapped, string(bufnr()))
            return
        endif

        for keymap in s:vimspector_keymaps
            exec keymap['mode'] . 'map <silent> <buffer> ' . keymap['key'] . ' ' . keymap['callback']
            unlet keymap
        endfor

        let s:vimspector_mapped[string(bufnr())] = { 'modifiable': &modifiable }

        setlocal nomodifiable
    endfunction"}}}

    function! s:vimspector_on_debug_end() abort"{{{
        let original_buf = bufnr()
        let hidden = &hidden

        augroup VimspectorSwapExists
            au!
            autocmd SwapExists * let v:swapchoice='o'
        augroup END

        try
            set hidden
            for bufnr in keys( s:vimspector_mapped )
                try
                    execute 'buffer' bufnr
                    for keymap in s:vimspector_keymaps
                        exec 'silent! ' . keymap['mode'] . 'unmap <buffer> ' . keymap['key']
                        unlet keymap
                    endfor
                    " silent! nunmap <buffer> <F4>
                    " silent! nunmap <buffer> <F8>
                    " silent! nunmap <buffer> <F10>
                    " silent! nunmap <buffer> <F11>
                    " silent! nunmap <buffer> <F12>
                    " silent! nunmap <buffer> <Leader>bp
                    " silent! nunmap <buffer> <Leader><Leader><F3>
                    " silent! nunmap <buffer> <Leader>die
                    " silent! nunmap <buffer> <Leader>diw
                    " silent! xunmap <buffer> <Leader>di
                    " silent! nunmap <buffer> <Leader>dwe

                    let &l:modifiable = s:vimspector_mapped[bufnr]['modifiable']
                endtry
            endfor
        finally
            execute 'noautocmd buffer' original_buf
            let &hidden = hidden
        endtry

        au! VimspectorSwapExists

        let s:vimspector_mapped = {}
    endfunction"}}}

    function! s:vimspector_customize_ui()"{{{
        call win_gotoid( g:vimspector_session_windows.variables )
        exe "normal \<C-W>_"

        " " Close the trace window
        " call win_gotoid( g:vimspector_session_windows.stack_trace )
        " hide

        " Close the output window
        call win_gotoid( g:vimspector_session_windows.output )
        hide
    endfunction"}}}

    function s:vimspector_customize_terminal()"{{{
        " Customise the terminal window size/position
        " For some reasons terminal buffers in Neovim have line numbers
        call win_gotoid( g:vimspector_session_windows.terminal )
        set norelativenumber nonumber
    endfunction"}}}

endif"}}}

" nvim-dap settings{{{
if s:plugged('nvim-dap')

    augroup nvim_dap_mappings
        au!
        autocmd FileType lua,php,python nnoremap <silent> <buffer> <Leader>dbb <Cmd>lua require('dap').toggle_breakpoint()<CR>
        autocmd FileType lua,php,python nnoremap <silent> <buffer> <Leader>dbB <Cmd>lua require('dap').set_breakpoint(vim.fn.input('[Condition] > '))<CR>
        autocmd FileType lua,php,python nnoremap <silent> <buffer> <Leader>dbr <Cmd>lua require('dap').continue()<CR>
    augroup END

lua << EOF

-- https://github.com/xdebug/vscode-php-debug/releases
-- Extract the vsix content
local dap, dapui = require('dap'), require('dapui')

local nvim_dap_keymap = {
    { mode='n', key='<F3>',                 callback=function() dap.terminate(); dapui.close(); nvim_dap_on_terminated() end },
    { mode='n', key='<F4>',                 callback=dap.run_last },
    { mode='n', key='<F5>',                 callback=dap.continue },
    { mode='n', key='<F8>',                 callback=dap.run_to_cursor },
    { mode='n', key='<F10>',                callback=dap.step_over },
    { mode='n', key='<F11>',                callback=dap.step_into },
    { mode='n', key='<F12>',                callback=dap.step_out },
    { mode='n', key='<Leader>bp',           callback=dap.list_breakpoints },
    { mode='n', key='<Leader><Leader><F3>', callback=dap.close },
    { mode='n', key='<Leader>die',          callback=function() dapui.eval(vim.fn.input('[Expression] > ')) end },
    { mode='n', key='<Leader>diw',          callback=require'dap.ui.widgets'.hover },
    { mode='x', key='<Leader>di',           callback=dapui.eval },
    { mode='n', key='<Leader>dwe',          callback=function() print('Adding watches not implemented yet.') end },
}

-- PHP debug settings
dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'local',
        port = '9001',
        log = true,
    },
    {
        type = 'php',
        request = 'launch',
        name = 'docker',
        port = '9003',
        log = true,
        serverSourceRoot = '/app',
        localSourceRoot = "${workspaceFolder}",
    },
}
dap.adapters.php = {
    type = 'executable',
    command = vim.fn.stdpath('data') .. '/mason/bin/php-debug-adapter',
}

-- Lua debug settings
dap.configurations.lua = {
    {
        type = 'nlua',
        request = 'attach',
        name = "Attach to a running Neovim instance",
        host = function() return vim.fn.input('Remote IP: ', '127.0.0.1') end,
        port = function()
            local val = tonumber(vim.fn.input('Port: ', 28086))
            assert(val, "Please provide a port number")
            return val
        end,
    }
}
dap.adapters.nlua = function(callback, config)
    callback({ type = 'server', host = config.host, port = config.port })
end

-- Python debug settings
dap.configurations.python = {
    {
        type = 'remote_python',
        request = 'attach',
        name = "Attach to a running python program",
        host = function() return vim.fn.input('Remote IP: ', '127.0.0.1') end,
        port = function()
            local val = tonumber(vim.fn.input('Port: ', 4444))
            assert(val, "Please provide a port number")
            return val
        end,
    },
}
dap.adapters.remote_python = function(callback, config)
    callback({ type = 'server', host = config.host, port = config.port; })
end

dapui.setup()

local nvim_dap_mapped_buffers = {}
local nvim_dap_mapped_windows = {}

local nvim_dap_initialize_buffer_augroup = vim.api.nvim_create_augroup('nvim_dap_initialize_buffer_augroup', { clear=true })
vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = {'*'},
    callback = function()
        if nvim_dap_mapped_windows[tostring(vim.fn.win_getid())] ~= nil then
            nvim_dap_initialize_buffer()
        end
    end
})

function nvim_dap_on_initialized()--{{{
    if nvim_dap_mapped_buffers[tostring(vim.fn.bufnr())] == nil then
        nvim_dap_initialize_buffer()
    end

    if nvim_dap_mapped_windows[tostring(vim.fn.win_getid())] == nil then
        nvim_dap_mapped_windows[tostring(vim.fn.win_getid())] = true
    end
end--}}}

function nvim_dap_initialize_buffer()--{{{
    if nvim_dap_mapped_buffers[tostring(vim.fn.bufnr())] ~= nil then
        return
    end

    for i=1, #nvim_dap_keymap do
        vim.keymap.set(nvim_dap_keymap[i]['mode'], nvim_dap_keymap[i]['key'], nvim_dap_keymap[i]['callback'], { silent=true, buffer=true })
    end

    nvim_dap_mapped_buffers[tostring(vim.fn.bufnr())] = { modifiable = vim.api.nvim_buf_get_option(0, 'modifiable') }

    vim.api.nvim_buf_set_option(0, 'modifiable', false)
end--}}}

function nvim_dap_on_terminated()--{{{
    for key, val in pairs(nvim_dap_mapped_buffers) do
        for i=1, #nvim_dap_keymap do
            vim.keymap.del(nvim_dap_keymap[i]['mode'], nvim_dap_keymap[i]['key'], { buffer=tonumber(key) })
        end

        vim.api.nvim_buf_set_option(tonumber(key), 'modifiable', val['modifiable'])
    end

    nvim_dap_mapped_buffers = {}
    nvim_dap_mapped_windows = {}
end--}}}

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
    nvim_dap_on_initialized()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
    nvim_dap_on_terminated()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
    nvim_dap_on_terminated()
end

require("nvim-dap-virtual-text").setup()
EOF

endif"}}}

" one-small-step-for-vimkind settings
if s:plugged('one-small-step-for-vimkind')

    command! -nargs=0 DebugNLua lua require('osv').launch({port = 28086})

endif

" Far.vim settings
if s:plugged('far.vim')
    set lazyredraw            " improve scrolling performance when navigating through large results
    set regexpengine=1        " use old regexp engine
    set ignorecase smartcase  " ignore case only when the pattern contains no capital letters

    let g:far#source = 'rg'

    nnoremap <silent> <Leader>ff :Farf<CR>
    vnoremap <silent> <Leader>ff :Farf<CR>
    nnoremap <silent> <Leader>fr :Farr<CR>
    vnoremap <silent> <Leader>fr :Farr<CR>
endif

" Fine-cmdline settings
if s:plugged('fine-cmdline.nvim')
    nnoremap <Leader>fc <cmd>FineCmdline<CR>
endif

" copilot.vim settings
if s:plugged('copilot.vim')
    let g:copilot_node_command = "~/.nvm/versions/node/v16.15.0/bin/node"

    imap <M-,> <Plug>(copilot-previous)
    imap <M-.> <Plug>(copilot-next)
endif

" NeoZoom settings
if s:plugged('NeoZoom.lua')
lua << EOF
require('neo-zoom').setup {}
EOF
endif

" smart-splits.nvim settings
if s:plugged('smart-splits.nvim')
    nmap <A-Left>  :SmartResizeLeft<CR>
    nmap <A-Right> :SmartResizeRight<CR>
    nmap <A-Up>    :SmartResizeUp<CR>
    nmap <A-Down>  :SmartResizeDown<CR>
    nmap <C-h>     :SmartCursorMoveLeft<CR>
    nmap <C-l>     :SmartCursorMoveRight<CR>
    nmap <C-j>     :SmartCursorMoveDown<CR>
    nmap <C-k>     :SmartCursorMoveUp<CR>
endif

" lsp_lines.nvim settings
if s:plugged('lsp_lines.nvim')
lua << EOF
require("lsp_lines").setup()
-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
    virtual_text = false,
})
vim.keymap.set("", "<Leader>tl", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
EOF
endif

" Goyo settings
if s:plugged('goyo.vim')
    function! s:goyo_enter()
        set nocursorcolumn
    endfunction

    function! s:goyo_leave()
        set cursorcolumn
    endfunction

    augroup goyo
        au!
        autocmd User GoyoEnter nested call <SID>goyo_enter()
        autocmd User GoyoLeave nested call <SID>goyo_leave()
    augroup END
endif

" nvim-treesitter settings
if s:plugged('nvim-treesitter')

    augroup treesitter
        au!
        autocmd FileType bash,c,go,javascript,json,lua,php,python,yaml setl foldmethod=expr | setl foldexpr=nvim_treesitter#foldexpr()
        autocmd FileType json,php setl foldlevel=1
    augroup END

lua << EOF
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { 'bash', 'c', 'go', 'http', 'javascript', 'json', 'lua', 'php', 'python', 'vim', 'yaml' },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    ignore_install = {},

    indent = { enable = true },

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = {},

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}
EOF
endif

" hop.nvim settings
if s:plugged('hop.nvim')
lua << EOF
require'hop'.setup()

-- Line-wise motions
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})

-- Context-wise motions
vim.api.nvim_set_keymap('', '<Leader><Leader>f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('', '<Leader><Leader>F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('', '<Leader><Leader>t', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', '<Leader><Leader>T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>", {})
EOF
endif

" nvim-hlslens settings
if s:plugged('nvim-hlslens')
lua << EOF
local kopts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', 'n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)
EOF
endif

" wilder settings
if s:plugged('wilder.nvim')
    call wilder#setup({
                \ 'modes': [':', '/', '?'],
                \ 'next_key': '<Tab>',
                \ 'previous_key': '<S-Tab>',
                \ 'accept_key': '<Down>',
                \ 'reject_key': '<Up>',
                \ 'enable_cmdline_enter': 1,
                \ })

    let find_cmd = 'find'
    if IsPlatform('mac')
        let find_cmd = 'gfind'
    endif

    call wilder#set_option('pipeline', [
                \   wilder#branch(
                \     wilder#python_file_finder_pipeline({
                \       'file_command': [find_cmd, '.', '-type', 'f', '-printf', '%P\n'],
                \       'dir_command': [find_cmd, '.', '-type', 'd', '-printf', '%P\n'],
                \       'filters': ['fuzzy_filter', 'difflib_sorter'],
                \     }),
                \     wilder#cmdline_pipeline({
                \       'fuzzy': 2,
                \       'set_pcre2_pattern': 1,
                \     }),
                \     wilder#python_search_pipeline({
                \       'pattern': 'fuzzy',
                \     }),
                \   ),
                \ ])

    call wilder#set_option('renderer', wilder#popupmenu_renderer({
                \ 'highlighter': wilder#basic_highlighter(),
                \ 'pumblend': 20,
                \ 'left': [
                \   ' ', wilder#popupmenu_devicons(),
                \ ],
                \ 'right': [
                \   ' ', wilder#popupmenu_scrollbar(),
                \ ],
                \ }))

    " call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
    "             \ 'border': 'rounded',
    "             \ 'max_height': '75%',
    "             \ 'min_height': 0,
    "             \ 'prompt_position': 'top',
    "             \ 'reverse': 0,
    "             \ 'left': [
    "             \   ' ', wilder#popupmenu_devicons(),
    "             \ ],
    "             \ 'right': [
    "             \   ' ', wilder#popupmenu_scrollbar(),
    "             \ ],
    "             \ })))
endif

" neoformat settings
if s:plugged('neoformat')
    let g:neoformat_php_phpcsfixer = {
            \ 'exe': './vendor/bin/php-cs-fixer',
            \ 'args': ['fix', '--ansi'],
            \ 'replace': 1,
            \ }

    let g:neoformat_enabled_php = ['phpcsfixer']
endif

" firenvim settings
if s:plugged('firenvim')
    let g:firenvim_config = { 
        \ 'globalSettings': {
            \ 'alt': 'all',
        \  },
        \ 'localSettings': {
            \ '.*': {
                \ 'cmdline': 'neovim',
                \ 'content': 'text',
                \ 'priority': 0,
                \ 'selector': 'textarea',
                \ 'takeover': 'never',
            \ },
        \ }
    \ }
endif

" dracula.nvim settings
if s:plugged('dracula.nvim')
        " show the '~' characters after the end of buffers
        let g:dracula_show_end_of_buffer = 1
        " use transparent background
        let g:dracula_transparent_bg = v:true
        " set custom lualine background color
        let g:dracula_lualine_bg_color = "#44475a"
        " set italic comment
        let g:dracula_italic_comment = 1
" customize dracula color palette
lua << EOF
vim.g.dracula_colors = {
    bg = "#282A36",
    fg = "#F8F8F2",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#FF5555",
    orange = "#FFB86C",
    yellow = "#F1FA8C",
    green = "#50fa7b",
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    pink = "#FF79C6",
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#21222C",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
}
EOF
endif

" open-browser settings
if s:plugged('open-browser.vim')

    let g:netrw_nogx = 1 " disable netrw's gx mapping.
	nmap gx <Plug>(openbrowser-smart-search)
	" vmap gx <Plug>(openbrowser-smart-search)
    vnoremap gx :<C-U>call <SID>my_smart_search()<CR>

    fun! s:my_smart_search()"{{{
        let l:selection = s:get_visual_selection(visualmode(), 1)

        let l:result = matchlist(l:selection, "^Plug\\s'\\([^']\\+\\)'.*$")
        if len(l:result) > 2
            if stridx(l:result[1], ':') >= 0
                let l:result2 = matchlist(l:result[1], '^.*:\(.*\)\.git$')
                if len(l:result2) > 2
                    let l:plugin_name = l:result2[1]
                else
                    echoerr 'Failed to find the plugin repo name.'
                    return
                endif
            elseif strlen(matchstr(l:result[1], '^http[s]\?://')) > 0
                exe 'OpenBrowser ' . substitute(l:result[1], '\.git$', '', '')
                return
            else
                let l:plugin_name = l:result[1]
            endif

            exe 'OpenBrowser https://github.com/' . l:plugin_name
            return
        endif

        exe 'OpenBrowserSmartSearch ' . l:selection
    endfun"}}}

endif

" vim-illuminate settings
if s:plugged('vim-illuminate')

    hi link IlluminatedWordText  Visual
    hi link IlluminatedWordRead  Visual
    hi link IlluminatedWordWrite Visual

endif

" pdv settings
if s:plugged('pdv')

    let g:pdv_template_dir=$HOME .'/.vim/plugged/pdv/templates_snip'

    augroup pdv
        au!
        autocmd FileType php nnoremap <buffer> <Leader>\\ :call pdv#DocumentWithSnip()<CR>
    augroup END

endif

" vim-maximizer settings
if s:plugged('vim-maximizer')

    let g:maximizer_set_default_mapping = 0

    nnoremap <Leader>mm :MaximizerToggle<CR>
    vnoremap <Leader>mm :MaximizerToggle<CR>gv
    inoremap <Leader>mm <C-o>:MaximizerToggle<CR>

endif

"}}}

" ------------------------------ Auto Commands ------------------------------"{{{
if IsPlatform('win')
    augroup windows
        au!
        autocmd GUIEnter * simalt ~x
        autocmd VimEnter *.* cd %:h
    augroup END
else
    " autocmd GUIEnter * call <SID>maximize_window()
endif

" Javascript filetype
augroup javascript
    au!
    autocmd FileType javascript setl fen
    autocmd FileType javascript setl foldlevel=0
    autocmd BufRead *.omnijs set filetype=javascript
    autocmd BufRead *.pac setl filetype=javascript
    autocmd BufRead *.pac setl foldlevel=1
augroup END
" autocmd FileType javascript call JavaScriptFold()
function! JavaScriptFold()"{{{
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction"}}}

" Devilspie
augroup devilspie
    au!
    autocmd BufNewFile,BufRead *.ds set filetype=lisp
augroup END

" Markdown
augroup markdown
    autocmd BufNewFile,BufRead *.mkd,*.md set filetype=markdown
    " autocmd BufNewFile,BufRead *.mkd set wrap
    autocmd FileType markdown set wrap
    " autocmd FileType markdown set guifontwide=
    " autocmd FileType markdown set background=light
    " autocmd FileType markdown colorscheme zenesque
    " autocmd FileType markdown colorscheme newspaper
augroup END

" Confluence Wiki
augroup confluence
    au!
    autocmd BufNewFile,BufRead *.confluence,.vira_prompt set filetype=confluencewiki
augroup END

" Fix the problem that vim on linux takes C-style commentstring to comment fold markers in vim scripts
" This problem is found only on my linux, it should be checked out that what reason causes such a problem
augroup vim_comment_string
    au!
    autocmd FileType vim set commentstring=\"%s
augroup END

" Fold method
let g:sh_fold_enabled=1
augroup fold_method
    au!
    autocmd FileType git setl fdm=syntax
    autocmd FileType sh  setl fdm=syntax
    autocmd FileType sql setl fdm=manual
augroup END

" " Plain text
" augroup text
    " au!
    " autocmd BufNewFile,BufRead *.txt set wrap
" augroup END

" Dokuwiki
augroup dokuwiki
    au!
    autocmd BufNewFile,BufRead *.doku set ft=dokuwiki
augroup END

" Auto handle resources
if IsPlatform('unix')
    augroup xbindkeys
        au!
        autocmd BufWritePost,FileWritePost .xbindkeysrc silent !ps aux|grep -P '\sxbindkeys$'|awk '{print $2}'|xargs kill > /dev/null 2>&1 ; xbindkeys > /dev/null 2>&1
        autocmd BufWritePost,FileWritePost .xbindkeys.scm silent !ps aux|grep -P '\sxbindkeys\s'|awk '{print $2}'|xargs kill > /dev/null 2>&1 ; xbindkeys -fg ~/.xbindkeys.scm > /dev/null 2>&1
        autocmd BufWritePost,FileWritePost .Xdefaults   silent !xrdb ~/.Xdefaults
        autocmd BufWritePost,FileWritePost .Xresources  silent !xrdb ~/.Xresources
    augroup END
endif

augroup sql
    au!
    autocmd FileType sql set synmaxcol=0
augroup END

" Quickfix and location windows
augroup quickfix
    au!
    " autocmd WinLeave * if &buftype=='quickfix' | lclose | endif
    autocmd FileType qf nnoremap <buffer> <Leader><Enter> <C-w><Enter>
augroup END

" vim help
augroup vim_help
    au!
    autocmd FileType vim set keywordprg='help'
augroup END

augroup disable_numbers_in_diff_mode
    au!
    autocmd BufEnter * if &diff | set nonu nornu | endif
augroup END

if s:plugged('taboo.vim')
    augroup on_gv_start
        au!
        autocmd FileType GV TabooRename Commits
    augroup END
endif

" vim-after-object settings
if s:plugged('vim-after-object')
    augroup vim_after_object
        au!
        autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
    augroup END
endif

" targets.vim settings
if s:plugged('targets.vim')
    augroup targets_textobj
        au!
        autocmd User targets#mappings#user call targets#mappings#extend({ 
                    \ 'A': {'argument': [{'o': '[([]', 'c': '[])]', 's': ','}]}, 
                    \ }) 
    augroup END
endif

" vim-sandwich settings
if s:plugged('vim-sandwich')

    runtime macros/sandwich/keymap/surround.vim

	omap ib <Plug>(textobj-sandwich-auto-i)
	xmap ib <Plug>(textobj-sandwich-auto-i)
	omap ab <Plug>(textobj-sandwich-auto-a)
	xmap ab <Plug>(textobj-sandwich-auto-a)

	omap is <Plug>(textobj-sandwich-query-i)
	xmap is <Plug>(textobj-sandwich-query-i)
	omap as <Plug>(textobj-sandwich-query-a)
	xmap as <Plug>(textobj-sandwich-query-a)

    let g:sandwich#recipes += [
        \ {'buns': ["( ", " )"], 'nesting': 1, 'match_syntax': 1, 'input': ['('] },
        \ {'buns': ["[ ", " ]"], 'nesting': 1, 'match_syntax': 1, 'input': ['['] },
        \ {'buns': ["{ ", " }"], 'nesting': 1, 'match_syntax': 1, 'input': ['{'] },
        \ ]

endif

"}}}

" ------------------------------ Key mappings -------------------------------"{{{
" Quit mappings
nmap <Leader><Leader>q :q<CR>
imap <Leader><Leader>q <ESC>:q<CR>
nmap <Leader>aq :qa<CR>
imap <Leader>aq <ESC>:qa<CR>
nmap <Leader>Q  :q!<CR>
imap <Leader>Q  <ESC>:q!<CR>
nmap <Leader>aQ :qa!<CR>
imap <Leader>aQ <ESC>:qa!<CR>

" Edit mappings
nmap <Leader>w :up<CR>
nmap <Leader>W :SudoWrite<CR>
imap <Leader>w <ESC>:up<CR>
imap <Leader>W <ESC>:SudoWrite<CR>
nmap <Leader>x :x<CR>
imap <Leader>x <ESC>:x<CR>
imap <Leader>u <C-O>:normal u<CR>
imap <Leader>o <C-O>:normal o<CR>
imap <Leader>O <C-O>:normal O<CR>
xnoremap <expr> p '"_d"'.v:register.'P'
imap <C-e> <ESC>A

" Tab, buffer and window mappings
nmap <C-T><C-T> :tabnew<CR>
imap <C-T><C-T> <ESC>:tabnew<CR>
nmap <Leader>tc :tabc<CR>
imap <Leader>tc <ESC>:tabc<CR>
nmap <Leader>to :tabo<CR>
nmap <Leader><Leader>dut :tab sp<CR>

nmap <Leader>bc :bdelete<CR>
imap <Leader>bc <ESC>:bdelete<CR>
nmap <Leader>bo :BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>
imap <Leader>bo <ESC>:BufferLineCloseLeft<CR><ESC>:BufferLineCloseRight<CR>a

nnoremap <Leader>oo <C-w><C-o>
inoremap <Leader>oo <ESC><C-w><C-o>a
nmap <Leader>hs :sp<CR><C-W>_
nmap <Leader>vs :vsp<CR><C-W>_

" Jump to next window and maximize it.
" Notice that <TAB> is equivalent to <C-I> in some conditions,
" so remap <C-I> as an opposite of <C-O>.
nmap     <Tab>   <C-W>j<C-W>_
nnoremap <S-Tab> <C-W>k<C-W>_
" <C-U> is used to scroll window upwards, find another available hotkey when
" it's needed.
" nnoremap <C-U>   <C-I>

" Move window around
" :h window-moving
" <C-W> H, J, K, L
nnoremap <Leader>T <C-w>T

" Motion remappings
nnoremap gH H
nnoremap gM M
nnoremap gL L
if !s:plugged('bufferline.nvim')
    nnoremap H  :tabp<CR>
    nnoremap L  :tabn<CR>
endif

" Move focus among windows
" Use smart-splits.nvim in neovim
if !has('nvim')
    nnoremap <C-k> <C-W>k
    nnoremap <C-j> <C-W>j
    nnoremap <C-h> <C-W>h
    nnoremap <C-l> <C-W>l
endif

" Current file or path related mappings
nmap <Leader><Leader>O   :e <C-R>=expand("%:p:~")<CR>
nmap <Leader><Leader>D   :e <C-R>=expand("%:p:~:h").'/'<CR>
nmap <Leader><Leader>rn  :Rename <C-R>=expand('%:t')<CR>
nmap <Leader><Leader>mv  :Move <C-R>=expand('%:.')<CR>
nmap <Leader><Leader>rm  :Delete
nmap <Leader><Leader>duf :saveas <C-R>=expand('%:.')<CR>

" Navigating long lines
nnoremap <M-h> <left>
nnoremap <M-l> <right>
nnoremap <M-j> gj
nnoremap <M-k> gk
inoremap <M-h> <left>
inoremap <M-l> <right>
inoremap <M-j> <C-o>gj
inoremap <M-k> <C-o>gk
vnoremap <M-h> <left>
vnoremap <M-l> <right>
vnoremap <M-j> <down>
vnoremap <M-k> <up>

" Delete lines which contain the current word or selected text.
nnoremap <Leader>dl yiw:call <SID>preserve("g/".Escape_regex(@")."/d")<CR>
vnoremap <Leader>dl y:call   <SID>preserve("g/".Escape_regex(@")."/d")<CR>

" Set TODO comments done.
nnoremap <Leader>dn :s/\(^\s*\/\/\s\)\@<=TODO\s\(lidong\\|donie\):\s//<CR>

" Edit & source vimrc
exec 'nmap <Leader><Leader>, :tabnew '.gbl_vimrc_file.'<CR><C-W>_'
exec 'nmap <Leader><Leader>. :so '.gbl_vimrc_file.'<CR>'
" Source vimrc after it is modified
" exec 'autocmd! bufwritepost '.gbl_vimrc_name.' so '.gbl_vimrc_file
" To fix the problem that the folding method remains to be 'syntax' when open the vimrc file in a php file
exec 'autocmd! BufReadPre '.gbl_vimrc_name.' setl fdm=marker'

" Show PWD
nmap <Leader>pwd :pwd<CR>

" Convert between traditional and simplified chinese characters.
nmap <Leader>g2b <ESC>:call G2B()<CR>
nmap <Leader>b2g <ESC>:call B2G()<CR>

" Find and replace
nmap <Leader>// yiw/\<<C-R>"\>\C
vmap <Leader>// y/\m<C-R>=Escape_regex(@")<CR>\C
" vmap <Leader>// y/\V<C-R>=escape(@",'/\')<CR>
nmap <Leader>rr yiw:%s/\<<C-R>"\>\C//g<LEFT><LEFT>
vmap <Leader>rr y:%s/<C-R>=Escape_regex(@")<CR>\C//g<LEFT><LEFT>
nmap <Leader>rl yiw:s/\<<C-R>"\>\C//g<LEFT><LEFT>
vmap <Leader>rl y:s/<C-R>=Escape_regex(@")<CR>\C//g<LEFT><LEFT>

" " Convert between encodings.
" nmap <Leader>gbk  :set fenc=cp936<CR>
" nmap <Leader>utf8 :set fenc=utf-8<CR>
" nmap <Leader>fdos :set ff=dos<CR>
" nmap <Leader>edos :e   ++ff=dos<CR>
" nmap <Leader>unix :set ff=unix<CR>

" 为xbindkeys捕获热键
if has('unix') && executable('xbindkeys')
    nmap <Leader>key :let @+=system('xbindkeys -k\|tail -n 1')<CR>
endif

" Select the last pasted area
nnoremap vp `[v`]
nnoremap vP V']

" Clear highlighting of the last search
nmap <Leader><Leader>cc :nohl<CR>

" Search word
nmap <Leader>/w /\<\>\C<left><left><left><left>

" repeat last command
nmap <Leader>!! :<up><CR>

" dash
nmap <silent> <Leader><Leader>ds <Plug>DashSearch

" Open MR of the current branch in web browser
nmap <Leader><Leader>mr :AsyncRun glab mr view -w<CR>

"}}}

" ------------------------------ Functions -----------------------------{{{

fun! s:get_visual_selection(type, ...)"{{{
    let sel_save   = &selection
    let &selection = 'inclusive'
    let reg_save   = @@

    if a:0
        silent exe 'normal! `<' . a:type . '`>y'
    elseif a:type ==? 'line'
        silent exe "normal! '[V']y"
    elseif a:type ==? 'block'
        silent exe 'normal! `[\<C-V>`]y'
    else
        silent exe 'normal! `[v`]y'
    endif

    let l:selection = @@

    let &selection = sel_save
    let @@ = reg_save

    return l:selection
endfun"}}}

if IsPlatform('win')
    set diffexpr=My_diff()
endif
function! My_diff()"{{{
    let opt = '-a --binary '
    if &diffopt =~? 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~? 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~? ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~? ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~? ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~? ' '
        if &sh =~? '\<cmd'
            let cmd = '""' . $VIMRUNTIME . '\diff"'
            let eq = '"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction"}}}

" @see https://vim.fandom.com/wiki/Different_syntax_highlighting_within_regions_of_a_file
function! s:text_enable_code_snippet(filetype, start, end, textSnipHl) abort"{{{
    let ft=toupper(a:filetype)
    let group='textGroup'.ft
    if exists('b:current_syntax')
        let s:current_syntax=b:current_syntax
        " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
        " do nothing if b:current_syntax is defined.
        unlet b:current_syntax
    endif
    execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
    try
        execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
    catch
    endtry
    if exists('s:current_syntax')
        let b:current_syntax=s:current_syntax
    else
        unlet b:current_syntax
    endif
    execute 'syntax region textSnip'.ft.' matchgroup='.a:textSnipHl.' start="'.a:start.'" end="'.a:end.'" contains=@'.group
endfunction"}}}

function! s:maximize_window()"{{{
    "silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
    silent !wmctrl -r :ACTIVE: -b add,fullscreen
endfunction"}}}

" Save the current buffer and get rid of the EOF sign.
command! -nargs=0 SaveNOEOF :call <SID>save_cfile_as_no_eof()
command! -complete=file -nargs=1 SaveAsNOEOF :call <SID>save_as_no_eof(<q-args>)
augroup save_cfile_as_no_eof
    au!
    autocmd BufWriteCmd version*.txt call <SID>save_cfile_as_no_eof()
augroup END
function! s:save_cfile_as_no_eof()"{{{
    call s:save_as_no_eof(bufname('%'))
endfunction"}}}
" Save the current buffer as a file with no EOF sign.
function! s:save_as_no_eof(filename)"{{{
    let a=getline(1,line('$')-1)
    let b=map(a, 'iconv(v:val,"'.&enc.'","'.&fenc.'") . nr2char(13)')
    call extend(b, getline('$', '$'))
    call writefile(b,a:filename, 'b')
    if a:filename == bufname('%')
        set nomodified
    endif
endfunction"}}}

" Set the current buffer to use utf-8 encoding and unix format
function! s:set_unix_ff()"{{{
    set fenc=utf-8
    set ff=unix
endfunction"}}}
command! -nargs=0 SetUnixFF call <SID>set_unix_ff()
" Set the current buffer to use GBK encoding and dos format
function! s:set_dos_ff()"{{{
    set fenc=cp936
    set ff=dos
endfunction"}}}
command! -nargs=0 SetDOSFF call <SID>set_unix_ff()

" ptag wrapper
" @see http://0x3f.org/posts/humanize-preview-window-in-vim/
function! s:ptag_it()"{{{
    exec 'ptag '.expand('<cword>')
    let cwin = winnr()
    silent! wincmd P
    let lnr = line('.')
    if lnr < 3
        return
    endif

    if foldlevel('.')>0
        normal! zo
    endif

    let chead = 0
    let linestr = getline(lnr-1)
    if linestr =~# '^\s*\*/'
        let ptr = lnr-2
        while ptr>0
            let linestr = getline(ptr)
            if linestr =~# '^\s*/\*'
                let chead = ptr
                break
            endif
            let ptr = ptr-1
        endwhile
    endif

    if chead>0
        exec 'resize '.(lnr-chead+1)
        exec 'normal '.chead."z\<CR>"
        exec 'normal '.lnr.'G'
    endif

    exec cwin.'wincmd w'
endfunction"}}}
nmap <Leader>pp :call <SID>ptag_it()<CR>
nmap <Leader>pc :pclose<CR>

" Wipe all buffers which are not active (i.e. not visible in a window/tab)
command! -nargs=0 PruneBuffers call <SID>close_fugitive_buffers()
function! s:close_fugitive_buffers()"{{{
    let visible = {}
    for t in range(1, tabpagenr('$'))
        for b in tabpagebuflist(t)
            let visible[b] = 1
        endfor
    endfor
    let l:tally = 0
    for b in range(1, bufnr('$'))
        if bufloaded(b) && !has_key(visible, b)
            let l:tally += 1
            exe 'bw ' . b
        endif
    endfor
    echon 'Deleted ' . l:tally . ' buffers'
endfunction"}}}

" 执行命令并回到原位置
function! s:preserve(command)"{{{
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line('.')
    let c = col('.')
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction"}}}
" " 清除行尾空格
command! -nargs=0 TrimLineEnds call <SID>preserve("%s/\\s\\+$//e")
" " 美化缩进
command! -nargs=0 ReIndentBuffer call <SID>preserve("normal gg=G")
" " 替换Tab为4个空格
command! -nargs=0 ConvertTabToSpaces call <SID>preserve("%s/\\t/    /g")

" 转义正则表达式特殊字符，以便在正则表达式中使用
" a:1   是否转义为vimgrep的pattern格式，1，2
" a:2   是否用shellescape()转义，1是转义，2是转义并去掉两侧单引号
function! Escape_regex(str, ...)"{{{
    let pattern = a:str
    let pattern = escape(pattern, '^$.*[]~"/\')

    if a:0 && a:1
        let pattern = escape(pattern, '()+?{}|')
        let pattern = substitute(pattern, '\\/', '/', 'g')
        if a:1 == 2
            let pattern = escape(pattern, '\')
        endif
    endif

    if a:0 > 1 && a:2
        let pattern = shellescape(pattern)
        if a:2 == 2
            let pattern = pattern[1:-2]
        endif
    endif

    let whitespacePattern = a:0 && a:1 ? '\\s\+' : '\\s\\+'
    let pattern = substitute(pattern, '\s\+', whitespacePattern, 'g')

    return pattern
endfunction"}}}

" Display contents of the current fold in a balloon
if has('balloon_eval')
    set balloonexpr=<SID>fold_spell_balloon()
    set ballooneval
endif
function! s:fold_spell_balloon()"{{{
    let foldStart = foldclosed(v:beval_lnum)
    let foldEnd = foldclosedend(v:beval_lnum)
    let lines = []
    " Detect if we are in a fold
    if foldStart < 0
        " Detect if we are on a misspelled word
        let lines = spellsuggest( spellbadword(v:beval_text)[ 0 ], 5, 0 )
    else
        " we are in a fold
        let numLines = foldEnd - foldStart + 1
        " if we have too many lines in fold, show only the first 14
        " and the last 14 lines
        if ( numLines > 31 )
            let lines = getline( foldStart, foldStart + 14 )
            let lines += [ '-- Snipped ' . ( numLines - 30 ) . ' lines --' ]
            let lines += getline( foldEnd - 14, foldEnd )
        else
            "less than 30 lines, lets show all of them
            let lines = getline( foldStart, foldEnd )
        endif
    endif
    " return result
    return join( lines, has('balloon_multiline') ? '\n' : ' ' )
endfunction"}}}

" Fold text
set foldtext=CustomFoldText()
function! CustomFoldText()"{{{
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~? '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = ' ' . foldSize . ' lines '
    let foldLevelStr = repeat('+--', v:foldlevel)
    let lineCount = line('$')
    let foldPercentage = printf('[%.1f', (foldSize*1.0)/lineCount*100) . '%] '
    let expansionString = ' '.repeat('-', w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf"}}}

" open an item in quickfix or location list in a new tab
augroup quickfix_mapping
    au!
    autocmd BufWinEnter * if &buftype=='quickfix' | noremap <buffer> <C-T> <Cmd>call <SID>open_quickfix_item_in_new_tab()<CR> | endif
augroup END
function! s:open_quickfix_item_in_new_tab()"{{{
    let tmpSwitchbuf = &switchbuf
    set switchbuf=newtab
    exe "normal \<CR>"
    exe 'set switchbuf='.tmpSwitchbuf
endfunction"}}}

" translate the word under cursor
fun! s:search_cursor_word()"{{{
    echo system('ydcv --', expand('<cword>'))
endfun"}}}
" translate selected text
fun! s:search_selected_word()"{{{
    let l:selection = s:get_visual_selection(visualmode(), 1)

    echo system('ydcv --', l:selection)
endfun"}}}
" nnoremap <Leader>df :call <SID>search_cursor_word()<CR>
" vnoremap <Leader>df :<C-U>call <SID>search_selected_word()<CR>

" remap n/N to nzz/Nzz in a nice way
nnoremap <silent> n :call <SID>nice_next('n')<CR>
nnoremap <silent> N :call <SID>nice_next('N')<CR>
function! s:nice_next(cmd)"{{{
    let view = winsaveview()
    execute 'normal! ' . a:cmd
    if view.topline != winsaveview().topline
        normal! zz
    endif
endfunction"}}}

" Reset environment
nnoremap <Leader><Leader>rs <Cmd>call <SID>reset_ide()<CR>
function! s:reset_ide()"{{{
    " Refresh leaderf cache
    if exists('g:Lf_py') && !has('nvim')
        exec g:Lf_py "jumpsExplManager.refresh()"
        exec g:Lf_py "tagExplManager.refresh()"
        exec g:Lf_py "fileExplManager.refresh()"
    endif

    " Restart COC
    call coc#rpc#restart()
endfunction"}}}

" Copy relative path of current file.
command! CopyRelativeFilePath let @+=expand('%:.') | if s:plugged('vim-oscyank') | execute 'OSCYankReg +' | endif | echo 'File path copied.'
command! CopyAbsoluteFilePath let @+=expand('%:p') | if s:plugged('vim-oscyank') | execute 'OSCYankReg +' | endif | echo 'File path copied.'

" Copy fully qualified class & method name in php files
" @see https://github.com/tyru/current-func-info.vim
autocmd FileType php command! CopyFQCN let @+=<SID>get_php_fqcn()  | if s:plugged('vim-oscyank') | execute 'OSCYankReg +' | endif | echo @+ . ' copied.'
autocmd FileType php command! CopyFQMN let @+=<SID>get_php_fqmn() | if s:plugged('vim-oscyank') | execute 'OSCYankReg +' | endif | echo @+ . ' copied.'
function! s:get_php_fqcn()"{{{
    " Save some registers
    let l:r_a = @a
    let l:r_b = @b

    " Save cursor position
    let l:pos = getcurpos()

    " Start at the top of the file
    :0
    " Search for the first "namespace" occurence
    /^namespace
    " Get the namespace string into the regsiter a
    normal! ^w"ayt;

    " Search for the class definition
    /\(^\(\(abstract\|final\)\s\+\|\)\)\@<=class\|^trait
    " Get the class string into the regsiter b
    normal! knw"bye

    let l:full_class_name = @a . '\' . @b

    " Restore cursor position
    call setpos('.', l:pos)

    " Restore registers
    let @a = l:r_a
    let @b = l:r_b

    return l:full_class_name
endfunction"}}}
" This function should be triggered when the cursor is on the method name
function! s:get_php_fqmn()"{{{
    let l:full_class_name = <SID>get_php_fqcn()

    if s:plugged('vista.vim')
        let l:is_vista_initially_openned = vista#sidebar#IsOpen()

        if !l:is_vista_initially_openned
            exec 'Vista!!'
        endif

        while !vista#sidebar#IsOpen()
            sleep 100m
        endw

        let l:current_tag = vista#util#BinarySearch(g:vista.functions, line('.'), 'lnum', 'text')

        if !l:is_vista_initially_openned
            exec 'Vista!'
        endif
    else
        " Fallback solution, should place the cursor on the method name.

        let l:r_a = @a

        normal! "ayiw

        let l:current_tag = @a

        let @a = l:r_a
    endif

    let l:full_method_name = l:full_class_name . '::' . l:current_tag . '()'

    return l:full_method_name
endfunction"}}}

function! s:get_cword_safely()"{{{
    let l:cword = expand('<cword>')

    if match(l:cword, '^\w\+$') == -1
        return ''
    endif

    return l:cword
endfunction"}}}
"}}}

" ------------------------------ PHP -----------------------------{{{

" Open a temporary PHP file in a new window
nmap <Leader>sbph :call <SID>php_sandbox()<CR>
function! s:php_sandbox()"{{{
    let tmpfile=tempname().'.php'
    exe 'new '.tmpfile
    call setline('.', '<?php')
    normal! o
    " normal! o
    " call setline('.', '?>')
    " normal! k
    startinsert
endfunction"}}}

" Force creating comments in HTML format.{{{
" augroup php_force_html_comment
"     au!
"     autocmd FileType php nmap <buffer> <Leader>fhcc :call <SID>force_html_comment("n", "Comment")<CR>
"     autocmd FileType php vmap <buffer> <Leader>fhcc :call <SID>force_html_comment("x", "Comment")<CR>
"     autocmd FileType php nmap <buffer> <Leader>fhcs :call <SID>force_html_comment("n", "Sexy")<CR>
"     autocmd FileType php vmap <buffer> <Leader>fhcs :call <SID>force_html_comment("x", "Sexy")<CR>
"     autocmd FileType php nmap <buffer> <Leader>fhcu :call <SID>force_html_comment("n", "Uncomment")<CR>
"     autocmd FileType php vmap <buffer> <Leader>fhcu :call <SID>force_html_comment("x", "Uncomment")<CR>
" augroup END
function! s:force_html_comment(mode, type) range
    set ft=html
    if a:mode ==? 'x'
        execute a:firstline.','.a:lastline.'call NERDComment(\"x\", \"'.a:type.'\")'
    else
        if a:type ==? 'Sexy'
            normal! ,cs
        else
            normal! ,cc
        endif
    endif
    set ft=php
endfunction
"}}}

"}}}

" ------------------------------ Lua -----------------------------{{{

augroup lua
    au!
    autocmd FileType lua if executable('stylua') | setlocal formatprg=stylua\ - | endif
augroup END

" stylua-nvim settings
if s:plugged('stylua-nvim')
    command! -nargs=0 LuaFormat lua require("stylua-nvim").format_file()
endif

"}}}

" ------------------------------ Python -----------------------------{{{

" Open a temporary Python file in a new window
nmap <Leader>sbpy <Cmd>call <SID>py_sandbox()<CR>
function! s:py_sandbox()"{{{
    let tmpfile = tempname().'.py'
    exe 'new '.tmpfile
    call setline('.', '#!/usr/bin/python')
    normal! o
    call setline('.', '# -*- coding: utf-8 -*-')
    normal! o
    startinsert
endfunction"}}}

" Start debugging vim plugins written in python
command! -nargs=* DebugPy py3 import debugpy; debugpy.listen(4444); debugpy.wait_for_client()

"}}}

" ------------------------------ COC settings -----------------------------{{{
if s:plugged('coc.nvim')

    let g:coc_node_path='~/.nvm/versions/node/v14.16.1/bin/node'
    let g:coc_global_extensions = [
        \'@yaegassy/coc-intelephense',
        \'@yaegassy/coc-nginx',
        \'@yaegassy/coc-phpstan',
        \'coc-diagnostic',
        \'coc-git',
        \'coc-grammarly',
        \'coc-json',
        \'coc-lists',
        \'coc-lua',
        \'coc-markdownlint',
        \'coc-php-cs-fixer',
        \'coc-project',
        \'coc-pyright',
        \'coc-snippets',
        \'coc-spell-checker',
        \'coc-ultisnips',
        \'coc-vimlsp',
        \'coc-yaml',
        \'coc-yank',
        \]

    nnoremap <Leader>cocc :tabnew<CR>:CocConfig<CR>

    inoremap <silent><expr> <C-n>  coc#pum#visible() ? coc#pum#next(1)       : "\<C-n>"
    inoremap <silent><expr> <C-p>  coc#pum#visible() ? coc#pum#prev(1)       : "\<C-p>"
    inoremap <silent><expr> <Down> coc#pum#visible() ? coc#pum#next(0)       : "\<Down>"
    inoremap <silent><expr> <Up>   coc#pum#visible() ? coc#pum#prev(0)       : "\<Up>"
    inoremap <expr>         <CR>   coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

    " --- The COC implementation of <TAB> behavior ---
    inoremap <silent><expr> <TAB>
                \ coc#pum#visible() ? coc#_select_confirm() :
                \ coc#expandableOrJumpable() ?
                \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()

    function! s:check_back_space() abort"{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction"}}}

    let g:coc_snippet_next = '<TAB>'
    " --- The COC implementation of <TAB> behavior END ---

    " Float window
    nmap <Leader>ff <Plug>(coc-float-jump)
    nmap <Leader>fH <Plug>(coc-float-hide)

    " Use `[g` and `]g` to navigate diagnostics
    nmap <silent> [d <Plug>(coc-diagnostic-prev)
    nmap <silent> ]d <Plug>(coc-diagnostic-next)

    " Code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gD <Plug>(coc-declaration)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references-used)
    nmap <silent> gR <Plug>(coc-references)

    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>
    function! s:show_documentation()"{{{
        if (index(['vim','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
        else
            call CocAction('doHover')
        endif
    endfunction"}}}

    " Symbol renaming.
    nmap <Leader>rn <Plug>(coc-rename)

    " Code actions.
    xmap <Leader>ac  <Plug>(coc-codeaction-selected)
    nmap <Leader>ac  <Plug>(coc-codeaction-line)

    " Introduce function text object
    " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
    xmap af <Plug>(coc-funcobj-a)
    omap af <Plug>(coc-funcobj-a)
    " " 'if' works not as expected in PHP syntax.
    " xmap if <Plug>(coc-funcobj-i)
    " omap if <Plug>(coc-funcobj-i)

    " " Use <TAB> for selections ranges.
    " " NOTE: Requires 'textDocument/selectionRange' support from the language server.
    " " coc-tsserver, coc-python are the examples of servers that support it.
    " nmap <silent> <TAB> <Plug>(coc-range-select)
    " xmap <silent> <TAB> <Plug>(coc-range-select)

    " Mappings using CoCList:
    " Show all diagnostics.
    nnoremap <silent> <space>a  :<C-u>CocList diagnostics<CR>
    " Manage extensions.
    nnoremap <silent> <space>e  :<C-u>CocList extensions<CR>
    " Show commands.
    nnoremap <silent> <space>c  :<C-u>CocList commands<CR>
    " Search workspace symbols.
    nnoremap <silent> <Leader>cocs  :<C-u>CocList -I symbols<CR>
    " Do default action for next item.
    nnoremap <silent> <space>j  :<C-u>CocNext<CR>
    " Do default action for previous item.
    nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
    " Resume latest coc list.
    nnoremap <silent> <Leader>cocp  :<C-u>CocListResume<CR>
    nnoremap <Leader>sy :<C-u>CocList -A --normal yank<CR>
    nnoremap <Leader>op :<C-u>CocList project<CR>
    nnoremap <Leader>sC :<C-u>let v:this_session=''<CR>:echo 'Session closed.'<CR>
    nnoremap <Leader>sl :<C-u>CocList -A snippets<CR>
    xnoremap <Leader>cs <Plug>(coc-convert-snippet)

    " navigate chunks of current buffer
    nmap [g <Plug>(coc-git-prevchunk)
    nmap ]g <Plug>(coc-git-nextchunk)
    " " navigate conflicts of current buffer
    " nmap [c <Plug>(coc-git-prevconflict)
    " nmap ]c <Plug>(coc-git-nextconflict)
    " show chunk diff at current position
    nmap <Leader>gi <Plug>(coc-git-chunkinfo)
    " show commit contains current position
    nmap <Leader>oc <Plug>(coc-git-commit)
    " create text object for git chunks
    omap ig <Plug>(coc-git-chunk-inner)
    xmap ig <Plug>(coc-git-chunk-inner)
    omap ag <Plug>(coc-git-chunk-outer)
    xmap ag <Plug>(coc-git-chunk-outer)

    " nnoremap <Leader>os :<C-u>CocList sessions<CR>
    " nnoremap <Leader>ss :<C-u>CocCommand session.save<CR>

    " vim-test is more convinient to run tests.
    " nmap <silent> gl <Plug>(coc-codelens-action)

    " --- Highlight groups BEGIN ---

    if g:colors_name == 'tokyonight' && &background == 'light'
        " Compatible to colorscheme tokyonight
        highlight CocFloating guibg=#CDCFDF guifg=#2D7DE8
    else
        " Compatible to most colorschemes
        highlight CocFloating guibg=#99cccc guifg=#336699
    endif

    " --- Highlight groups END ---

    " " coc-prettier
    " command! -nargs=0 Prettier :CocCommand prettier.formatFile

    command! -nargs=0 CocFormat :call CocAction('format')<CR>

    augroup coc
        au!
        " Setup formatexpr specified filetype(s).
        autocmd FileType typescript,json,php setl formatexpr=CocAction('formatSelected')
        " Update signature help on jump placeholder.
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
        " Highlight the symbol and its references when holding the cursor.
        autocmd CursorHold * silent call CocActionAsync('highlight')
    augroup end
endif
"}}}
