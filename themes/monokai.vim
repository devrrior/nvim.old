hi Comment cterm=italic
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

syntax on
colorscheme monokai


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
