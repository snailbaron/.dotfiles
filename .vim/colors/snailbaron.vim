set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="snailbaron"

" Terminal colors
hi Comment      ctermfg=Green
hi Constant     ctermfg=Yellow
hi CursorLineNr ctermfg=Cyan
hi Directory    ctermfg=Cyan
hi Identifier   cterm=NONE ctermfg=White
hi IncSearch    ctermbg=DarkGray
hi LineNr       ctermfg=DarkCyan
hi Normal       ctermfg=White
hi PreProc      ctermfg=Gray
hi Search       cterm=NONE ctermfg=White ctermbg=DarkYellow
hi Special      ctermfg=NONE
hi Statement    ctermfg=Blue
hi String       ctermfg=Red
hi Type         ctermfg=Blue
hi VertSplit    cterm=NONE ctermfg=DarkGray
hi Visual       ctermbg=DarkBlue

hi gitcommitSummary cterm=bold