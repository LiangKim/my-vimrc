set nocompatible              " be iMproved, required
filetype off                  " required

" ==============================================================================
" set the runtime path to include Vundle and initialize
set rtp+=D:\developer\Vim\vimfiles\bundle\Vundle.vim

" ==============================================================================
" ��װ�����в��
call vundle#begin()

" ���밲װ��let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ����github

"����
Plugin 'flazz/vim-colorschemes' 

"�ײ�״̬��
Plugin 'Lokaltog/vim-powerline'

"�ļ�Ŀ¼
Plugin 'scrooloose/nerdtree'

"���ٲ���
Plugin 'kien/ctrlp.vim'

"����ע��
Plugin 'scrooloose/nerdcommenter'

"�Զ���ȫ
Plugin 'Shougo/neocomplcache.vim'

" ����vim

" non github repos

call vundle#end()            " required

" ==============================================================================
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ==============================================================================
" vundle����
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ==============================================================================
" �������
" flazz/vim-colorschemes,��������
colorscheme  codeschool

"NERDTree �������
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1 "NERDTREE��ʾ�����ļ� 
" ==============================================================================
" vimԭ������
" set rnu "��ʾ����к�
set nu
syntax on " ���﷨���

set tabstop=4 "����tab������
set sw=4
set ts=4

set list "���ÿո���ʾΪ+��
set listchars=trail:+

set foldmethod=syntax "�����۵�
set foldlevelstart=99 "Ĭ�ϲ��۵�

set cursorline  "���ù����
set noswapfile "��Ҫ����swap�ļ�
set nobackup
set bufhidden=hide "��buffer��������ʱ��������
set guicursor=n-v-c:hor10 "normal�¹����ʾΪ�»���
set expandtab                 "Use space instead of tabs

let mapleader = ","  "�����ⲿ����ճ��
let g:mapleader = ","
map Y "+y
map P "+p

"noremap ok o<esc> "��������

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm.app"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1 "��vimʱ�Զ���
let g:neocomplcache_force_overwrite_completefunc = 1

"���������С
set guifont=Consolas:h20
"����������
set nocompatible
"����backspace������ʽ
set backspace=indent,eol,start

"�����Զ���ȫ
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

