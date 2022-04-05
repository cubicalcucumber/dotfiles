set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "rainbow"

hi CursorColumn guifg=#0e0c0c guibg=#8a8585
hi CursorLine guibg=#171212 gui=none term=none cterm=none
hi LineNr guibg=#0e0c0c guifg=#2a2222
hi CursorLineNr guibg=#0e0c0c guifg=#5d4b4b gui=none term=none cterm=NONE
hi ColorColumn guibg=#171212 gui=none term=none cterm=none
"hi Conceal guibg=#0e0c0c guifg=#7272ca

hi StatusLine guifg=#8a8585 guibg=#251e1e gui=NONE term=NONE cterm=NONE
hi StatusLineNC guifg=#171212 guibg=#5d4b4b
hi StatusLineTerm guibg=#5485b6
hi StatusLineTermNC guibg=#3e5e7f
hi TabLine guifg=#5d4b4b guibg=#171212 gui=NONE term=NONE cterm=NONE
hi TabLineSel guibg=#2a2222 guifg=#8a8585
hi TabLineFill guibg=#0e0c0c gui=NONE term=NONE cterm=NONE
hi VertSplit guifg=#0e0c0c guibg=#2a2222
hi Title guifg=#8464c4
hi Pmenu guibg=#251e1e guifg=#8a8585
hi PmenuSel guibg=#7272ca guifg=#0e0c0c
hi PmenuSbar guibg=#251e1e
hi PmenuThumb guibg=#5d4b4b
hi WildMenu guibg=#7272ca guifg=#0e0c0c
hi QuickFixLine guibg=#2e2e43

hi Directory guifg=#7272ca cterm=bold
hi Error guifg=#ca4949 guibg=#0e0c0c term=underline cterm=underline
hi ErrorMsg guibg=#ca4949 guifg=#0e0c0c cterm=bold
hi WarningMsg guibg=#a06e3b guifg=#0e0c0c

hi Normal guibg=#0e0c0c guifg=#8a8585
" Improvement for Neovim issue https://github.com/neovim/neovim/issues/9019.
hi NonText guifg=#251e1e gui=NONE cterm=NONE term=NONE
"hi NonText guibg=#0e0c0c guifg=#251e1e gui=NONE cterm=NONE term=NONE
hi Special guibg=NONE guifg=#ba5c3d
hi SpecialKey guibg=NONE guifg=#251e1e
hi Comment guibg=NONE guifg=#5d4b4b
hi Todo guibg=NONE guifg=#a06e3b gui=bold term=bold cterm=bold
hi Visual guibg=#0e0c0c gui=reverse cterm=reverse term=reverse
hi IncSearch guifg=NONE guibg=NONE gui=reverse cterm=reverse term=reverse
hi clear Search
hi link Search IncSearch
hi MatchParen guifg=#a06e3b guibg=NONE term=NONE

hi Identifier guifg=#7272ca cterm=NONE
hi Function guifg=#5485b6 cterm=NONE
hi Statement guifg=#ca4949 gui=NONE cterm=NONE term=NONE
hi Boolean guifg=#8464c4
hi Number guifg=#8464c4
hi Constant guifg=#8464c4
hi String guifg=#a06e3b
hi Character guifg=#a06e3b
hi Type guifg=#8464c4 gui=NONE cterm=NONE term=NONE
hi PreProc guifg=#4b8b8b

hi link rubyClass Statement
hi link rubyModule Statement
hi link rubyDefine Statement
hi link rubyInclude Function
hi link rubyKeyword Identifier
hi link rubyBlockParameterList Identifier
