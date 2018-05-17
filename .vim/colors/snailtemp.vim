" Work in progress, based off of 'desert' vim theme:
" Vim color file
" Maintainer:    Hans Fugal <hans@fugal.net>
" Last Change:    $Date: 2004/06/13 19:30:30 $
" Last Change:    $Date: 2004/06/13 19:30:30 $
" URL:        http://hans.fugal.net/vim/colors/desert.vim
" Version:    $Id: desert.vim,v 1.1 2004/06/13 19:30:30 vimboss Exp $

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="snailtemp"


" Terminal colors
hi DiffAdd      ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold ctermfg=4 ctermbg=6
hi DiffText     cterm=bold ctermbg=1
hi Directory    ctermfg=darkcyan
hi Error        cterm=bold ctermfg=7 ctermbg=1
hi ErrorMsg     cterm=bold ctermfg=7 ctermbg=1
hi FoldColumn   ctermfg=darkgrey ctermbg=NONE
hi Folded       ctermfg=darkgrey ctermbg=NONE
hi Identifier   ctermfg=6
hi Ignore       cterm=bold ctermfg=7
hi Ignore       ctermfg=darkgrey
hi LineNr       ctermfg=3
hi ModeMsg      cterm=NONE ctermfg=brown
hi MoreMsg      ctermfg=darkgreen
hi NonText      cterm=bold ctermfg=darkblue
hi Question     ctermfg=green
hi Special      ctermfg=5
hi SpecialKey   ctermfg=darkgreen
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi Title        ctermfg=5
hi Underlined   cterm=underline ctermfg=5
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=1
hi WildMenu     ctermfg=0 ctermbg=3

hi Comment      ctermfg=DarkGreen
hi Constant     ctermfg=LightYellow
hi Function     ctermfg=Green
hi IncSearch    ctermbg=DarkGray
hi Normal       ctermfg=White
hi PreProc      ctermfg=DarkGray
hi Search       cterm=NONE ctermfg=White ctermbg=Brown
hi Statement    ctermfg=Blue
hi String       ctermfg=LightYellow
hi Type         ctermfg=Blue
hi VertSplit    cterm=NONE ctermfg=DarkGray
hi Visual       ctermbg=DarkBlue
