" Vim color scheme
"
" Name:         pastelsondark.vim
" Maintainer:   Mike Farmer <mike.farmer@gmail.com>
" Last Change:  
" Version:      1.0
"

" New Colors
" Gray         #555555
" Brown        #AD9361
" Light Gray   #CCCCCC
" Light Purple #A1A1FF
" Dark Purple  #4D74D0
" Blue         #0000FF
" Light Yellow #C1C144
" Light Blue   #6782D3
" Orange       #DE8E30
" Aqua         #47B8D6


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "pastelsondark"

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

highlight Normal                    guifg=#E6E1DC guibg=#2B2B2B
highlight Cursor                    guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15    
highlight CursorLine                guibg=#000000 ctermbg=233 cterm=NONE

highlight Comment                   guifg=#555555
highlight Constant                  guifg=#A1A1FF ctermfg=73
highlight Define                    guifg=#4D74D0 ctermfg=173
highlight Todo                      guifg=#000000 guibg=#519F50 gui=italic
highlight Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
highlight Function                  guifg=#6782D3
highlight Identifier                guifg=#C1C144 ctermfg=73 gui=NONE cterm=NONE
highlight Include                   guifg=#A1A1FF ctermfg=173 gui=NONE cterm=NONE
highlight PreCondit                 guifg=#4D74D0 ctermfg=173 gui=NONE cterm=NONE
highlight Keyword                   guifg=#4D74D0 ctermfg=173 cterm=NONE
highlight LineNr                    guifg=#888888 guibg=#DEDEDE
highlight Number                    guifg=#A5C261 ctermfg=107
highlight PreProc                   guifg=#E6E1DC ctermfg=103
highlight Search                    guifg=NONE ctermfg=NONE guibg=#2b2b2b ctermbg=235 gui=italic cterm=underline
highlight Statement                 guifg=#4D74D0 ctermfg=173 gui=NONE cterm=NONE
highlight String                    guifg=#AD9361 ctermfg=107
highlight Title                     guifg=#FFFFFF ctermfg=15
highlight Type                      guifg=#C1C144 ctermfg=167 gui=NONE cterm=NONE
highlight Visual                    guibg=#5A647E ctermbg=60


highlight DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=71
highlight DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
highlight Special                   guifg=#47B8D6 ctermfg=167 

highlight pythonBuiltin             guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
highlight rubyBlockParameter        guifg=#C1C144 ctermfg=15
highlight rubyClass                 guifg=#4D74D0 ctermfg=15
highlight rubyConstant              guifg=#C1C144 ctermfg=167
highlight rubyInstanceVariable      guifg=#C1C144 ctermfg=189
highlight rubyInterpolation         guifg=#AD9361 ctermfg=107
highlight rubyLocalVariableOrMethod guifg=#C1C144 ctermfg=189
highlight rubyPredefinedConstant    guifg=#AD9361 ctermfg=167
highlight rubyPseudoVariable        guifg=#FFC66D ctermfg=221
highlight rubyStringDelimiter       guifg=#AD9361 ctermfg=143
highlight rubyException             guifg=#A1A1FF
highlight rubyBoolean               guifg=#DE8E30
highlight rubyAccess                guifg=#A1A1FF

highlight LustyDir                  guifg=#519F50
highlight LustySelected             guifg=#DA4939

highlight xmlTag                    guifg=#A1A1FF ctermfg=179
highlight xmlTagName                guifg=#A1A1FF ctermfg=179
highlight xmlEndTag                 guifg=#A1A1FF ctermfg=179

highlight htmlSpecialTagName        guifg=#A1A1FF

highlight cssBoxProp                guifg=#E1C96B
highlight cssClassName              guifg=#EDCA06
highlight cssBoxAttr                guifg=#9B2E4D
highlight cssIdentifier             guifg=#EC9E00
highlight cssTagName                guifg=#B8CD06
highlight cssPseudoClassId          guifg=#2E759C
highlight cssFunctionName           guifg=#A1A1FF
highlight cssURL                    guifg=#B8CD06


hi link cssColorProp                cssBoxProp
hi link cssFontProp                 cssBoxProp
hi link cssTextProp                 cssBoxProp
hi link cssGeneratedContentProp     cssBoxProp

hi link cssUIAttr                   cssBoxAttr
hi link cssFontAttr                 cssBoxAttr
hi link cssTextAttr                 cssBoxAttr
hi link cssCommonAttr               cssBoxAttr
hi link cssColorAttr                cssBoxAttr
hi link cssRenderProp               cssBoxAttr


highlight mailSubject               guifg=#A5C261 ctermfg=107
highlight mailHeaderKey             guifg=#FFC66D ctermfg=221
highlight mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

highlight SpellBad                  guifg=NONE ctermfg=160 ctermbg=NONE cterm=underline
highlight SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight MatchParen                guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23

highlight link krlHereDoc String
highlight krlFunction          guifg=#4D74D0
highlight krlNamespace         guifg=#DE8E30
highlight krlMethod            guifg=#6782D3
highlight krlSymbols           guifg=#47B8D6
