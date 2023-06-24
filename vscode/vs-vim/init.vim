" normal mode --> nmap
" insert mode --> inoremap


set clipboard=unnamedplus
inoremap jk <Esc>
inoremap kj <Esc>


" inoremap <C-h> 0
" inoremap <C-l> $

" inoremap ;; <Right>
nmap <C-h> 0
nmap <C-l> $



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


