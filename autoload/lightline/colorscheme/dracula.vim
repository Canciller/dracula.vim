" =============================================================================
" Filename: autoload/lightline/colorscheme/dracula.vim
" Author: adamalbrecht
" License: MIT License
" Last Change: 2018/04/11
" =============================================================================

let s:black      = g:dracula#palette.bg
let s:gray       = g:dracula#palette.selection
let s:white      = g:dracula#palette.fg
let s:silver     = g:dracula#palette.fg_inactivelight
let s:darkblue   = g:dracula#palette.comment
let s:cyan       = g:dracula#palette.cyan
let s:green      = g:dracula#palette.green
let s:orange     = g:dracula#palette.orange
let s:purple     = g:dracula#palette.purple
let s:darkpurple = g:dracula#palette.bgdark
let s:red        = g:dracula#palette.red
let s:yellow     = g:dracula#palette.yellow

if exists('g:lightline')

  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [ [ s:black, s:purple, 'bold' ], [ s:white, s:black ] ]
  let s:p.normal.right = [ [ s:black, s:purple ], [ s:white, s:darkblue ] ]
  let s:p.inactive.right = [ [ s:silver, s:black ], [ s:silver, s:black ] ]
  let s:p.inactive.left =  [ [ s:silver, s:black ], [ s:silver, s:black ] ]
  let s:p.insert.left = [ [ s:black, s:green, 'bold' ], [ s:white, s:black ] ]
  let s:p.replace.left = [ [ s:black, s:red, 'bold' ], [ s:white, s:black ] ]
  let s:p.visual.left = [ [ s:black, s:orange, 'bold' ], [ s:white, s:black ] ]
  let s:p.normal.middle = [ [ s:white, s:black ] ]
  let s:p.inactive.middle = [ [ s:white, s:black ] ]
  let s:p.tabline.left = [ [ s:silver, s:black ] ]
  let s:p.tabline.tabsel = [ [ s:white, s:darkpurple ] ]
  let s:p.tabline.middle = [ [ s:white, s:black ] ]
  let s:p.tabline.right = copy(s:p.tabline.left)
  let s:p.normal.error = [ [ s:red, s:black ] ]
  let s:p.normal.warning = [ [ s:yellow, s:black ] ]

  let g:lightline#colorscheme#dracula#palette = lightline#colorscheme#flatten(s:p)

endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
