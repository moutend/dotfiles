set ambiwidth=double
set clipboard+=unnamed
set clipboard+=autoselect
set directory=$HOME/.vimswap//
set encoding=utf-8
set fileencodings=utf-8
set fileformat=unix
set number
syntax off
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set nofixendofline

function KillSpeak()
  :call system("pkill say")
  :call system("curl localhost:8501/v1/pause &")

  return 0
endfunction

noremap mh :call KillSpeak()<cr>

function BufSpeak()
  let line = [matchstr(getline('.'), '.*', col('.') - 1)]
  let outputfile = $HOME . "/.codespeak/text/buffer.txt"

  :call KillSpeak()
  :call writefile(line, outputfile)
  :call system("curl localhost:8501/v1/speak&")

  return 0
endfunction

noremap mv :call BufSpeak()<cr>

function SayKyoko()
  let sub_str = substitute(getline('.'), "['-]", " ", "g")

  :call KillSpeak()
  :call system("say -v Kyoko -r 640 '".sub_str."' &")

  return 0
endfunction

noremap vv :call SayKyoko()<cr>

function SayAlex()
  let sub_str = substitute(getline('.'), "['-]", " ", "g")

  :call KillSpeak()
  :call system("say -v Alex -r 300 '".sub_str."' &")

  return 0
endfunction

noremap mm :call SayAlex()<cr>

function GetCharacterOnCursor()
  let character = matchstr(getline('.'), '.', col('.')-1)

  return character
endfunction

function Foo()
  let character = GetCharacterOnCursor()
  let outputfile = $HOME . "/.codespeak/text/character.txt"

  :call KillSpeak()
  :call writefile([character], outputfile)
  call system("c2d -f " . outputfile . " | say -v Kyoko -r 400 &")
endfunction

noremap rr :call Foo()<cr>
