set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="snailbaron"

hi Boolean      ctermfg=12
hi Character    ctermfg=9
hi ColorColumn               ctermbg=8
hi Comment      ctermfg=2
hi Constant     ctermfg=11
hi Cursor       ctermfg=6
hi CursorLine                ctermbg=0  cterm=None
hi CursorLineNr ctermfg=14
hi DiffAdd                   ctermbg=11
hi DiffChange                ctermbg=2
hi DiffDelete                ctermbg=1
hi DiffText                  ctermbg=3
hi Directory    ctermfg=14
hi Error                     ctermbg=1
hi ErrorMsg                  ctermbg=1
hi FoldColumn   ctermfg=7    ctermbg=15
hi Folded                    ctermbg=7
hi Identifier   ctermfg=7
hi IncSearch    ctermfg=8
hi Label        ctermfg=12
hi LineNr       ctermfg=6
hi Number       ctermfg=11
hi Operator     ctermfg=12
hi PreProc      ctermfg=8
hi Search       ctermfg=none ctermbg=3
hi Special      ctermfg=11
hi SpellBad                  ctermbg=1
hi Statement    ctermfg=12
hi StatusLine   ctermfg=14   ctermbg=12
hi StatusLineNC ctermfg=12   ctermbg=4
hi String       ctermfg=9
hi Title        ctermfg=8
hi Todo         ctermfg=2    ctermbg=3
hi Type         ctermfg=12
hi VertSplit    ctermfg=8               cterm=none
hi Visual                    ctermbg=4
hi WarningMsg                ctermbg=2

" git
hi gitcommitSummary cterm=bold

" cmake
hi link cmakeCommand Statement
