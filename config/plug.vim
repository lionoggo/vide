""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"安装vim-plug
"neovim
"curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"vim
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.cache/plugins')

"{{-----------------补全
Plug 'neoclide/coc.nvim',
            \ {
            \ 'do': './install.sh nightly',
            \ }
"}}

"{{-----------------git
Plug 'tpope/vim-fugitive'
Plug 'neoclide/vim-easygit'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
"}}

"{{-----------------web
Plug 'alvan/vim-closetag', {'for': ['html', 'htm', 'xml', 'xhtml', 'css']}
Plug 'valloric/MatchTagAlways', {'for': ['html', 'htm', 'xml', 'xhtml', 'css', 'vim']}
"}}

"{{-----------------viml
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
" vim插件开发远程调试
Plug 'roxma/vim-hug-neovim-rpc'
"}}

"{{-----------------markdown
Plug 'tpope/vim-markdown'
"}}

"{{-----------------latex
Plug 'lervag/vimtex'
"}}

"{{-----------------代码检查
Plug 'w0rp/ale',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'javascript', 'ts', 'java', 'go', 'html', 'css', 'sh', 'vim', 'tex'],
    \ }
"}}

"{{-----------------格式化代码
Plug 'sbdchd/neoformat'
" Plug 'Chiel92/vim-autoformat',
"     \ {
"     \ 'on': 'Autoformat',
"     \ }
"}}

"{{-----------------文档类
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DoxygenToolkit.vim',
            \ {
            \ 'on': ['Dox', 'DoxAuthor', 'DoxBlock', 'DoxLic', 'DoxUndoc' ]
            \ }
"}}

" 支持多种语言的代码高亮插件
Plug 'sheerun/vim-polyglot'

"{{-----------------美化类
" 代码缩进线
Plug 'Yggdroot/indentLine',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex'],
    \ }
" 彩虹括号
Plug 'luochen1990/rainbow'
" 开始
Plug 'mhinz/vim-startify',
            \ {
            \ }
" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
" goyo
Plug 'junegunn/goyo.vim',
            \ {
            \ 'on': 'Goyo',
            \ }
Plug 'junegunn/limelight.vim',
            \ {
            \ 'on': 'Limelight',
            \ }
" 图标
Plug 'ryanoasis/vim-devicons'
"}}
""

"{{----------------------工具
" 标签栏
Plug 'majutsushi/tagbar',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex', 'md'],
    \ }

" 括号补全
Plug 'jiangmiao/auto-pairs'

" 包围
Plug 'tpope/vim-surround',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex'],
    \ }

" visual 增强
Plug 'terryma/vim-expand-region'

" 撤销查看
Plug 'simnalamburt/vim-mundo'

" 快速检索
Plug 'Yggdroot/LeaderF',
    \ {
    \ 'do': './install.sh',
    \ }
if !has('nvim')
    Plug 'vim-utils/vim-alt-mappings'
endif

" 目录导航
"
if has('nvim')
    Plug 'Shougo/defx.nvim',
        \ {
        \ 'do': ':UpdateRemotePlugins',
        \ }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'


" 去除空白
Plug 'ntpeters/vim-better-whitespace'

" 代码块集合
Plug 'honza/vim-snippets',
    \ {
    \ 'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'sh', 'tex', 'vim']
    \ }

" 窗口切换
Plug 't9md/vim-choosewin',
    \ {
    \ 'on': 'ChooseWin',
    \ }

" 平滑滚动
Plug 'terryma/vim-smooth-scroll'

" 二进制查看
Plug 'Shougo/vinarise.vim',
            \ {
            \ 'on': 'Vinarise',
            \ }

" 快速移动
Plug 'easymotion/vim-easymotion'

" 多光标
Plug 'mg979/vim-visual-multi'

" 键位查找
"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" 重复
Plug 'tpope/vim-repeat'

" 字典
Plug 'voldikss/vim-translate-me',
    \ {
    \   'on': ['<Plug>Translate', '<Plug>TranslateW']
    \ }
"}}

" vim中文文档
Plug 'yianwillis/vimcdoc'

call plug#end()

