" my filetype file
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

  au! BufRead,BufNewFile *.test.js    setfiletype javascripttest
  au! BufRead,BufNewFile *.test.jsx    setfiletype javascriptreacttest
  au! BufRead,BufNewFile *.test.ts    setfiletype typescripttest
  au! BufRead,BufNewFile *.test.tsx    setfiletype typescriptreacttest

augroup END
