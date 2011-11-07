" rtf_pygmentize.vim
" Rafael França <rafaelmfranca at gmail dot com>
"
" License
" This program is under a MIT License

" syntax theme
" Valid options are: 'default', 'emacs', 'friendly' and 'colorful'
if !exists('g:rtfp_theme')
  let g:rtfp_theme = 'default'
end

" Text font
if !exists('g:rtfp_font')
  let g:rtfp_font = 'Menlo'
end

function! RTFPygmentize(line1,line2,...)
  if !executable('pygmentize')
    echoerr "Bummer! pygments not found."
    return
  endif

  let ft = a:0 ? a:1 : &filetype

  if ft == "eruby"
    let ft = "rhtml"
  endif

  let content = join(getline(a:line1,a:line2),"\n")
  let command = "pygmentize -l " . ft . " -f rtf -O style=" . g:rtfp_theme . ",fontface=" . g:rtfp_font . " 2> /dev/null"
  let output = system(command,content)
  let retval = system("pbcopy",output)
endfunction

command! -nargs=? -range=% RTFPygmentize :call RTFPygmentize(<line1>,<line2>,<f-args>)
