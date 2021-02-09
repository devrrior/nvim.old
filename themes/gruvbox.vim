hi Comment cterm=italic
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='hard'

syntax on
colorscheme gruvbox


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
