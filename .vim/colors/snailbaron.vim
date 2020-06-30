set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="snailbaron"

hi Boolean      ctermfg=12
hi Character    ctermfg=9
hi ColorColumn               ctermbg=7
hi Comment      ctermfg=2
hi Constant     ctermfg=11
hi Cursor       ctermfg=6
hi CursorLine                ctermbg=0    cterm=none
hi CursorLineNr ctermfg=14                cterm=none
hi DiffAdd      ctermfg=2    ctermbg=none
hi DiffChange   ctermfg=4    ctermbg=none
hi DiffDelete   ctermfg=1    ctermbg=none
hi DiffText     ctermfg=12   ctermbg=none
hi Directory    ctermfg=4    cterm=bold
hi Error                     ctermbg=1
hi ErrorMsg                  ctermbg=1
hi FoldColumn   ctermfg=8    ctermbg=7
hi Folded                    ctermbg=8
hi Identifier   ctermfg=7
hi IncSearch    ctermfg=7
hi Label        ctermfg=12
hi LineNr       ctermfg=6
hi Number       ctermfg=11
hi Operator     ctermfg=12
hi Pmenu        ctermfg=none ctermbg=7
hi PmenuSel     ctermfg=8    ctermbg=0
hi PreProc      ctermfg=8
hi Search       ctermfg=none ctermbg=3
hi Special      ctermfg=11
hi SpellBad                  ctermbg=1
hi SpellCap                  ctermbg=5
hi Statement    ctermfg=12
hi StatusLine   ctermfg=14   ctermbg=12
hi StatusLineNC ctermfg=12   ctermbg=4
hi String       ctermfg=9
hi Title        ctermfg=8
hi Todo         ctermfg=2    ctermbg=3
hi Type         ctermfg=12
hi VertSplit    ctermfg=7                 cterm=none
hi Visual                    ctermbg=4
hi WarningMsg                ctermbg=5

" git
hi gitcommitSummary cterm=bold

" cmake
hi link cmakeCommand Statement

" markdown
hi markdownH1 cterm=bold
hi markdownH2 cterm=bold
hi markdownLinkText ctermfg=12 cterm=underline
hi markdownUrl ctermfg=2
hi markdownLinkDelimiter ctermfg=7
hi markdownLinkTextDelimiter ctermfg=7
hi markdownCode ctermfg=11

" NERDTree
hi NERDTreeExecFile ctermfg=2 cterm=bold
hi NERDTreeCWD ctermfg=6 cterm=bold
