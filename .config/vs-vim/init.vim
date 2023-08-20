" normal mode --> nmap
" insert mode --> inoremap

let mapleader = '<Space>'

set clipboard=unnamedplus
inoremap jk <Esc>
inoremap kj <Esc>


" nnoremap <S-j> <C-d> 

" nnoremap <S-k> <C-u>

" nnoremap <S-l> $ 

" nnoremap <S-h> 0

hi MySyntaxGroup NONE

" Move by line -- Does not word :(
"nnoremap j gj
"nnoremap k gk

nmap U gUi

nmap c" ci"
nmap d" da"

nmap c' ci'
nmap d' da'

nmap c{ ci{
nmap d{ di{

nmap c( ci(
nmap d( di(

nmap c[ ci[
nmap d[ di[

nmap c` ci`
nmap d` di`


set nohlsearch
set ignorecase
set smartcase


nmap <silent> gd :call VSCodeCall('editor.action.peekDefinition')<CR>
nmap <silent> gD :call VSCodeCall('editor.action.revealDefinition')<CR>
nmap <silent> gr :call VSCodeCall('editor.action.referenceSearch.trigger')<CR>
nmap <silent> gR :call VSCodeCall('references-view.findReferences')<CR>
nmap <silent> gy :call VSCodeCall('editor.action.goToTypeDefinition')<CR>
nmap <silent> grn :call VSCodeCall('editor.action.rename')<CR>


" VsCode Folding
map zl <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
map z; <Cmd>call VSCodeNotify('editor.foldAll')<CR>
map zm <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
map zp <Cmd>call VSCodeNotify('editor.gotoParentFold')<CR>
map zj <Cmd>call VSCodeNotify('editor.gotoNextFold')<CR>
map zk <Cmd>call VSCodeNotify('editor.gotoPreviousFold')<CR>


vnoremap gs <Cmd>call VSCodeNotifyRangePos('codesnap.start', line("v"), line("."), col("v"), col("."),1)<CR>
