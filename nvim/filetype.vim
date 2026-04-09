" my filetype file
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

  au! BufRead,BufNewFile *.test.js    setfiletype javascripttest
  au! BufRead,BufNewFile *.test.jsx   setfiletype javascriptreacttest
  au! BufRead,BufNewFile *.test.ts    setfiletype typescripttest
  au! BufRead,BufNewFile *.test.tsx   setfiletype typescriptreacttest
  au! BufRead,BufNewFile *.spec.js    setfiletype javascripttest
  au! BufRead,BufNewFile *.spec.jsx   setfiletype javascriptreacttest
  au! BufRead,BufNewFile *.spec.ts    setfiletype typescripttest
  au! BufRead,BufNewFile *.spec.tsx   setfiletype typescriptreacttest


augroup END
