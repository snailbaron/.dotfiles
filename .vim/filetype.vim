augroup custom_filetypedetect
    au! BufRead,BufNewFile *.ebnf set filetype=ebnf
    au! BufRead,BufNewFile *.fbs64 set filetype=fbs
    au! BufRead,BufNewFile *.sarif set filetype=json
    au! BufRead,BufNewFile MODULE.bazel.lock set filetype=json
augroup END
