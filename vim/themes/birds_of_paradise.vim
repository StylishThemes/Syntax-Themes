" Vim color file
" Maintainer: Kenneth Love
" Last Change: 2010-07-16
" Version 0.1
" based on 'Birds of Paradise' theme for Coda:
" http://joebergantine.com/werkstatt/birds-of-paradise
" With thanks to the Ego color scheme by Robby Colvin

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "birds"

" GUI Colors
hi Cursor               gui=reverse guibg=#8DA1A1 guifg=#ffffff
hi CursorIM             gui=bold guifg=#ffffff guibg=#8da1a1
hi CursorLine           gui=NONE guibg=#3d4646
hi CusorColumn          gui=NONE guibg=#3d4646
hi ErrorMsg                      guifg=#7b5f40  guibg=FireBrick
hi VertSplit            gui=NONE guifg=white guibg=#372725
hi Folded               gui=bold guibg=#7b5f40 guifg=#493432
hi FoldColumn           gui=NONE guibg=#7b5f40 guifg=#493432
hi LineNr               guibg=#372725 guifg=white
hi NonText              gui=NONE guibg=#372725 guifg=white
hi Normal               gui=NONE guibg=#372725 guifg=white
hi StatusLine           gui=bold guibg=gray guifg=black
hi StatusLineNC         gui=NONE guibg=grey60 guifg=grey10
hi Visual               gui=reverse guibg=#ffffff guifg=black
hi WarningMsg           gui=bold guifg=FireBrick1 guibg=bg
hi Search               gui=NONE guibg=#7b5f40 guifg=black

" General Syntax Colors
hi Comment              gui=NONE guifg=#6b4e32 guibg=bg
hi Todo                 gui=bold guifg=#6b4e32 guibg=bg

hi Identifier           gui=bold guifg=#ef5d32 guibg=bg
hi Type                 gui=bold guifg=#ef5d32 guibg=bg

hi Statement            gui=bold guifg=#efac32 guibg=bg
hi Conditional          gui=bold guifg=#efac32 guibg=bg
hi Operator             gui=bold guifg=#efac32 guibg=bg
hi Label                gui=bold guifg=#efac32 guibg=bg
hi Define               gui=bold guifg=#efac32 guibg=bg
hi Macro                gui=bold guifg=#efac32 guibg=bg

hi String               gui=NONE guifg=#d9d762 guibg=bg

hi Number               gui=NONE guifg=#6c99bb guibg=bg
hi Float                gui=NONE guifg=#6c99bb guibg=bg
hi Boolean              gui=bold guifg=#6c99bb guibg=bg

hi Function             gui=bold guifg=white guibg=bg
hi StorageClass         gui=bold guifg=white guibg=bg
hi Structure            gui=bold guifg=white guibg=bg
hi Typedef              gui=bold guifg=white guibg=bg
hi Constant             gui=bold guifg=white guibg=bg


hi Repeat               gui=NONE guifg=#ef5d32 guibg=bg
hi PreProc              gui=NONE guifg=#ef5d32 guibg=bg
hi Include              gui=NONE guifg=#ef5d32 guibg=bg
hi PreConduit           gui=NONE guifg=#ef5d32 guibg=bg
hi Keyword              gui=NONE guifg=#ef5d32 guibg=bg
hi Exception            gui=NONE guifg=#ef5d32 guibg=bg

hi Underlined           gui=underline guifg=#ef5d32 guibg=bg
hi Ignore               guifg=#ff00ff
hi Error                gui=bold guifg=#ef5d32 guibg=bg
hi Special              gui=NONE guifg=#ef5d32 guibg=bg
hi SpecialKey           guibg=bg guifg=#7b5f40
hi Title                gui=bold  guifg=white guibg=bg


" TODO: Style these later
hi Directory            gui=NONE guifg=red guibg=bg
hi DiffAdd              gui=NONE guifg=fg guibg=DarkCyan
hi DiffChange           gui=NONE guifg=fg guibg=Green4
hi DiffDelete           gui=NONE guifg=fg guibg=black
hi DiffText             gui=bold guifg=fg guibg=bg
hi IncSearch            gui=reverse guifg=fg guibg=bg
hi ModeMsg              guibg=DarkGreen guifg=LightGreen
hi MoreMsg              gui=bold  guifg=SeaGreen4 guibg=bg
hi Question             gui=bold  guifg=SeaGreen2 guibg=bg
hi VisualNOS            gui=bold,underline guifg=fg guibg=bg
hi WildMenu             gui=bold guibg=Chartreuse guifg=Black
hi Delimiter            gui=NONE guifg=#ff00ff guibg=yellow
hi SpecialChar          gui=NONE guifg=#ff00ff guibg=yellow
hi SpecialComment       gui=NONE guifg=#ff00ff guibg=yellow
hi Tag                  gui=NONE guifg=#ff00ff guibg=yellow
hi Debug                gui=NONE guifg=#ff00ff guibg=yellow
hi Character            gui=NONE guifg=#ff00ff guibg=yellow
